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
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/internal/abi.Type", align 1
@2 = private unnamed_addr constant [1 x i8] c"p", align 1
@3 = private unnamed_addr constant [1 x i8] c"t", align 1
@4 = private unnamed_addr constant [1 x i8] c"n", align 1
@5 = private unnamed_addr constant [1 x i8] c"a", align 1
@6 = private unnamed_addr constant [4 x i8] c"main", align 1
@7 = private unnamed_addr constant [1 x i8] c"T", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"main.struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/internal/abi.TFlag", align 1
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [5 x i8] c"Size_", align 1
@10 = private unnamed_addr constant [8 x i8] c"PtrBytes", align 1
@11 = private unnamed_addr constant [4 x i8] c"Hash", align 1
@12 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@13 = private unnamed_addr constant [6 x i8] c"Align_", align 1
@14 = private unnamed_addr constant [11 x i8] c"FieldAlign_", align 1
@15 = private unnamed_addr constant [5 x i8] c"Kind_", align 1
@16 = private unnamed_addr constant [5 x i8] c"Equal", align 1
@17 = private unnamed_addr constant [1 x i8] c"f", align 1
@18 = private unnamed_addr constant [4 x i8] c"data", align 1
@19 = private unnamed_addr constant [6 x i8] c"GCData", align 1
@20 = private unnamed_addr constant [4 x i8] c"Str_", align 1
@21 = private unnamed_addr constant [10 x i8] c"PtrToThis_", align 1
@22 = private unnamed_addr constant [5 x i8] c"Align", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
@"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/internal/abi.ArrayType", align 1
@"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY" = linkonce global ptr null, align 8
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
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
@"[]_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@75 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/internal/abi.Method", align 1
@76 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@77 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@78 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@79 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@80 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@81 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@82 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@83 = private unnamed_addr constant [13 x i8] c"error field 3", align 1

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
  store ptr @78, ptr %47, align 8
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
  store ptr @79, ptr %63, align 8
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
  store ptr @80, ptr %91, align 8
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
  store ptr @81, ptr %107, align 8
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
  store ptr @82, ptr %142, align 8
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
  store ptr @83, ptr %169, align 8
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
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @1, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 40, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %15, i64 25, i64 80, i64 0, i64 20)
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

_llgo_3:                                          ; preds = %_llgo_2
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @6, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 4, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @7, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 1, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %81, %"github.com/goplus/llgo/internal/runtime.String" %85, ptr %77, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 0
  store ptr @1, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 1
  store i64 40, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %86, align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %89, i64 25, i64 80, i64 0, i64 20)
  %91 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %90, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @8, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 41, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %96, i64 8, i64 1, i64 0, i64 0)
  %98 = load ptr, ptr @_llgo_Pointer, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %100)
  store ptr %100, ptr @_llgo_Pointer, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %101 = load ptr, ptr @_llgo_Pointer, align 8
  %102 = load ptr, ptr @_llgo_Pointer, align 8
  %103 = load ptr, ptr @_llgo_Pointer, align 8
  %104 = load ptr, ptr @_llgo_bool, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  store ptr %106, ptr @_llgo_bool, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %107 = load ptr, ptr @_llgo_bool, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr @1, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 40, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %111, i64 25, i64 80, i64 0, i64 20)
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

_llgo_11:                                         ; preds = %_llgo_10
  %294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %294, i32 0, i32 0
  store ptr @22, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %294, i32 0, i32 1
  store i64 5, ptr %296, align 4
  %297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %294, align 8
  %298 = load ptr, ptr @_llgo_int, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_106, %_llgo_10
  ret void

_llgo_13:                                         ; preds = %_llgo_11
  %300 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %300, ptr @_llgo_int, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %301 = load ptr, ptr @_llgo_int, align 8
  %302 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %303 = icmp eq ptr %302, null
  br i1 %303, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %304 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %305 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, i32 0, i32 0
  store ptr %304, ptr %306, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, i32 0, i32 1
  store i64 0, ptr %307, align 4
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, i32 0, i32 2
  store i64 0, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, align 8
  %310 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %311 = getelementptr ptr, ptr %310, i64 0
  store ptr %301, ptr %311, align 8
  %312 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %312, i32 0, i32 0
  store ptr %310, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %312, i32 0, i32 1
  store i64 1, ptr %314, align 4
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %312, i32 0, i32 2
  store i64 1, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %312, align 8
  %317 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %309, %"github.com/goplus/llgo/internal/runtime.Slice" %316, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %317)
  store ptr %317, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
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
  %333 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %332, i64 25, i64 104, i64 0, i64 18)
  %334 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %335 = icmp eq ptr %334, null
  br i1 %335, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %333, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 0
  store ptr @1, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 1
  store i64 40, ptr %338, align 4
  %339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %336, align 8
  %340 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %339, i64 25, i64 80, i64 0, i64 20)
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 0
  store ptr @1, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 1
  store i64 40, ptr %343, align 4
  %344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %341, align 8
  %345 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %344, i64 25, i64 80, i64 0, i64 20)
  %346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 0
  store ptr @1, ptr %347, align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 1
  store i64 40, ptr %348, align 4
  %349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %346, align 8
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %349, i64 25, i64 80, i64 0, i64 20)
  %351 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %352 = icmp eq ptr %351, null
  br i1 %352, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 0
  store ptr @25, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 1
  store i64 4, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %353, align 8
  %357 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 0
  store ptr null, ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 1
  store i64 0, ptr %359, align 4
  %360 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %357, align 8
  %361 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %356, ptr %340, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %360, i1 true)
  %362 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %362, i32 0, i32 0
  store ptr @26, ptr %363, align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %362, i32 0, i32 1
  store i64 4, ptr %364, align 4
  %365 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %362, align 8
  %366 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 0
  store ptr null, ptr %367, align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 1
  store i64 0, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %366, align 8
  %370 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %345)
  %371 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %365, ptr %370, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %369, i1 false)
  %372 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %372, i32 0, i32 0
  store ptr @27, ptr %373, align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %372, i32 0, i32 1
  store i64 5, ptr %374, align 4
  %375 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %372, align 8
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr null, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 0, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %350)
  %381 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %375, ptr %380, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %379, i1 false)
  %382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 0
  store ptr @28, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 1
  store i64 3, ptr %384, align 4
  %385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %382, align 8
  %386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 0
  store ptr null, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 1
  store i64 0, ptr %388, align 4
  %389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %386, align 8
  %390 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %391 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %385, ptr %390, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %389, i1 false)
  %392 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %392, i32 0, i32 0
  store ptr @6, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %392, i32 0, i32 1
  store i64 4, ptr %394, align 4
  %395 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %392, align 8
  %396 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %397 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %396, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %361, ptr %397, align 8
  %398 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %396, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %371, ptr %398, align 8
  %399 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %396, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %381, ptr %399, align 8
  %400 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %396, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %391, ptr %400, align 8
  %401 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, i32 0, i32 0
  store ptr %396, ptr %402, align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, i32 0, i32 1
  store i64 4, ptr %403, align 4
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, i32 0, i32 2
  store i64 4, ptr %404, align 4
  %405 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, align 8
  %406 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %395, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %405)
  store ptr %406, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %407 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %335, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
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
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %444, i64 25, i64 104, i64 0, i64 18)
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
  %489 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %488, i64 25, i64 80, i64 0, i64 20)
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
  store i64 10, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %522 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %522, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %520, ptr %523, align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %522, i32 0, i32 1
  store ptr %521, ptr %524, align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %522, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %525, align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %522, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %526, align 8
  %527 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %522, align 8
  %528 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 0
  store ptr @34, ptr %529, align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 1
  store i64 8, ptr %530, align 4
  %531 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %528, align 8
  %532 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 0
  store ptr @35, ptr %533, align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 1
  store i64 44, ptr %534, align 4
  %535 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %532, align 8
  %536 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %535, i64 25, i64 128, i64 0, i64 21)
  %537 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %538 = icmp eq ptr %537, null
  br i1 %538, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  store ptr %536, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %539 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %539, i32 0, i32 0
  store ptr @1, ptr %540, align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %539, i32 0, i32 1
  store i64 40, ptr %541, align 4
  %542 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %539, align 8
  %543 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %542, i64 25, i64 80, i64 0, i64 20)
  %544 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %544, i32 0, i32 0
  store ptr @1, ptr %545, align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %544, i32 0, i32 1
  store i64 40, ptr %546, align 4
  %547 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %544, align 8
  %548 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %547, i64 25, i64 80, i64 0, i64 20)
  %549 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %549, i32 0, i32 0
  store ptr @1, ptr %550, align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %549, i32 0, i32 1
  store i64 40, ptr %551, align 4
  %552 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %549, align 8
  %553 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %552, i64 25, i64 80, i64 0, i64 20)
  %554 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %556 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %556, i32 0, i32 0
  store ptr @25, ptr %557, align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %556, i32 0, i32 1
  store i64 4, ptr %558, align 4
  %559 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %556, align 8
  %560 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %560, i32 0, i32 0
  store ptr null, ptr %561, align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %560, i32 0, i32 1
  store i64 0, ptr %562, align 4
  %563 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %560, align 8
  %564 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %559, ptr %543, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %563, i1 true)
  %565 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 0
  store ptr @36, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 1
  store i64 2, ptr %567, align 4
  %568 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %565, align 8
  %569 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %569, i32 0, i32 0
  store ptr null, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %569, i32 0, i32 1
  store i64 0, ptr %571, align 4
  %572 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %569, align 8
  %573 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %548)
  %574 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %573)
  %575 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %568, ptr %574, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %572, i1 false)
  %576 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %576, i32 0, i32 0
  store ptr @37, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %576, i32 0, i32 1
  store i64 3, ptr %578, align 4
  %579 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %576, align 8
  %580 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 0
  store ptr null, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 1
  store i64 0, ptr %582, align 4
  %583 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %580, align 8
  %584 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %553)
  %585 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %584)
  %586 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %579, ptr %585, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %583, i1 false)
  %587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %587, i32 0, i32 0
  store ptr @6, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %587, i32 0, i32 1
  store i64 4, ptr %589, align 4
  %590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %587, align 8
  %591 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %592 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %591, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %564, ptr %592, align 8
  %593 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %591, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %575, ptr %593, align 8
  %594 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %591, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %586, ptr %594, align 8
  %595 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %595, i32 0, i32 0
  store ptr %591, ptr %596, align 8
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %595, i32 0, i32 1
  store i64 3, ptr %597, align 4
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %595, i32 0, i32 2
  store i64 3, ptr %598, align 4
  %599 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %595, align 8
  %600 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %590, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %599)
  store ptr %600, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %601 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %538, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %602 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 0
  store ptr @22, ptr %603, align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 1
  store i64 5, ptr %604, align 4
  %605 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %602, align 8
  %606 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %607 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %607, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %605, ptr %608, align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %607, i32 0, i32 1
  store ptr %606, ptr %609, align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %607, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %610, align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %607, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %611, align 8
  %612 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %607, align 8
  %613 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %613, i32 0, i32 0
  store ptr @23, ptr %614, align 8
  %615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %613, i32 0, i32 1
  store i64 9, ptr %615, align 4
  %616 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %613, align 8
  %617 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %618 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %618, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %616, ptr %619, align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %618, i32 0, i32 1
  store ptr %617, ptr %620, align 8
  %621 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %618, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %621, align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %618, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %622, align 8
  %623 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %618, align 8
  %624 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %624, i32 0, i32 0
  store ptr @29, ptr %625, align 8
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %624, i32 0, i32 1
  store i64 7, ptr %626, align 4
  %627 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %624, align 8
  %628 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %629 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %629, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %627, ptr %630, align 8
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %629, i32 0, i32 1
  store ptr %628, ptr %631, align 8
  %632 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %629, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %632, align 8
  %633 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %629, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir", ptr %633, align 8
  %634 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %629, align 8
  %635 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %635, i32 0, i32 0
  store ptr @32, ptr %636, align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %635, i32 0, i32 1
  store i64 6, ptr %637, align 4
  %638 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %635, align 8
  %639 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %640 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %641 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %640, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %638, ptr %641, align 8
  %642 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %640, i32 0, i32 1
  store ptr %639, ptr %642, align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %640, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %643, align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %640, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %644, align 8
  %645 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %640, align 8
  %646 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %646, i32 0, i32 0
  store ptr @26, ptr %647, align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %646, i32 0, i32 1
  store i64 4, ptr %648, align 4
  %649 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %646, align 8
  %650 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %651 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %649, ptr %652, align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 1
  store ptr %650, ptr %653, align 8
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %654, align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %655, align 8
  %656 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %651, align 8
  %657 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %657, i32 0, i32 0
  store ptr @33, ptr %658, align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %657, i32 0, i32 1
  store i64 10, ptr %659, align 4
  %660 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %657, align 8
  %661 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %662 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %663 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %660, ptr %663, align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 1
  store ptr %661, ptr %664, align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %665, align 8
  %666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %666, align 8
  %667 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %662, align 8
  %668 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %669 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %668, i32 0, i32 0
  store ptr @34, ptr %669, align 8
  %670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %668, i32 0, i32 1
  store i64 8, ptr %670, align 4
  %671 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %668, align 8
  %672 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %673 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %674 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %673, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %671, ptr %674, align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %673, i32 0, i32 1
  store ptr %672, ptr %675, align 8
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %673, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %676, align 8
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %673, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %677, align 8
  %678 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %673, align 8
  %679 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %679, i32 0, i32 0
  store ptr @38, ptr %680, align 8
  %681 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %679, i32 0, i32 1
  store i64 7, ptr %681, align 4
  %682 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %679, align 8
  %683 = load ptr, ptr @_llgo_bool, align 8
  %684 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %685 = icmp eq ptr %684, null
  br i1 %685, label %_llgo_39, label %_llgo_40

_llgo_38:                                         ; preds = %_llgo_98, %_llgo_36
  %686 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %686, i32 0, i32 0
  store ptr @35, ptr %687, align 8
  %688 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %686, i32 0, i32 1
  store i64 44, ptr %688, align 4
  %689 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %686, align 8
  %690 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %689, i64 25, i64 128, i64 0, i64 21)
  %691 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %_llgo_99, label %_llgo_100

_llgo_39:                                         ; preds = %_llgo_37
  %693 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %694 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %694, i32 0, i32 0
  store ptr %693, ptr %695, align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %694, i32 0, i32 1
  store i64 0, ptr %696, align 4
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %694, i32 0, i32 2
  store i64 0, ptr %697, align 4
  %698 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %694, align 8
  %699 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %700 = getelementptr ptr, ptr %699, i64 0
  store ptr %683, ptr %700, align 8
  %701 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %702 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %701, i32 0, i32 0
  store ptr %699, ptr %702, align 8
  %703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %701, i32 0, i32 1
  store i64 1, ptr %703, align 4
  %704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %701, i32 0, i32 2
  store i64 1, ptr %704, align 4
  %705 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %701, align 8
  %706 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %698, %"github.com/goplus/llgo/internal/runtime.Slice" %705, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %706)
  store ptr %706, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_37
  %707 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %708 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %682, ptr %709, align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 1
  store ptr %707, ptr %710, align 8
  %711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %711, align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %708, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %712, align 8
  %713 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %708, align 8
  %714 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %714, i32 0, i32 0
  store ptr @39, ptr %715, align 8
  %716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %714, i32 0, i32 1
  store i64 10, ptr %716, align 4
  %717 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %714, align 8
  %718 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %719 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %717, ptr %720, align 8
  %721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 1
  store ptr %718, ptr %721, align 8
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %722, align 8
  %723 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %719, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %723, align 8
  %724 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %719, align 8
  %725 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %725, i32 0, i32 0
  store ptr @40, ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %725, i32 0, i32 1
  store i64 13, ptr %727, align 4
  %728 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %725, align 8
  %729 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 0
  store ptr @41, ptr %730, align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 1
  store i64 49, ptr %731, align 4
  %732 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %729, align 8
  %733 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %732, i64 25, i64 120, i64 0, i64 20)
  %734 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %735 = icmp eq ptr %734, null
  br i1 %735, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  store ptr %733, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %736 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %736, i32 0, i32 0
  store ptr @1, ptr %737, align 8
  %738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %736, i32 0, i32 1
  store i64 40, ptr %738, align 4
  %739 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %736, align 8
  %740 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %739, i64 25, i64 80, i64 0, i64 20)
  %741 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %741, i32 0, i32 0
  store ptr @42, ptr %742, align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %741, i32 0, i32 1
  store i64 43, ptr %743, align 4
  %744 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %741, align 8
  %745 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %744, i64 25, i64 24, i64 0, i64 3)
  %746 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %747 = icmp eq ptr %746, null
  br i1 %747, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %748 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %748, i32 0, i32 0
  store ptr @25, ptr %749, align 8
  %750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %748, i32 0, i32 1
  store i64 4, ptr %750, align 4
  %751 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %748, align 8
  %752 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %752, i32 0, i32 0
  store ptr null, ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %752, i32 0, i32 1
  store i64 0, ptr %754, align 4
  %755 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %752, align 8
  %756 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %751, ptr %740, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %755, i1 true)
  %757 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 0
  store ptr @43, ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 1
  store i64 8, ptr %759, align 4
  %760 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %757, align 8
  %761 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %762 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %761, i32 0, i32 0
  store ptr null, ptr %762, align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %761, i32 0, i32 1
  store i64 0, ptr %763, align 4
  %764 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %761, align 8
  %765 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %766 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %760, ptr %765, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %764, i1 false)
  %767 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %768 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %767, i32 0, i32 0
  store ptr @44, ptr %768, align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %767, i32 0, i32 1
  store i64 7, ptr %769, align 4
  %770 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %767, align 8
  %771 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %771, i32 0, i32 0
  store ptr null, ptr %772, align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %771, i32 0, i32 1
  store i64 0, ptr %773, align 4
  %774 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %771, align 8
  %775 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %745)
  %776 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %770, ptr %775, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %774, i1 false)
  %777 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %777, i32 0, i32 0
  store ptr @6, ptr %778, align 8
  %779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %777, i32 0, i32 1
  store i64 4, ptr %779, align 4
  %780 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %777, align 8
  %781 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %782 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %781, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %756, ptr %782, align 8
  %783 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %781, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %766, ptr %783, align 8
  %784 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %781, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %776, ptr %784, align 8
  %785 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, i32 0, i32 0
  store ptr %781, ptr %786, align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, i32 0, i32 1
  store i64 3, ptr %787, align 4
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, i32 0, i32 2
  store i64 3, ptr %788, align 4
  %789 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, align 8
  %790 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %780, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %789)
  store ptr %790, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %791 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %735, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %792 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %792, i32 0, i32 0
  store ptr @22, ptr %793, align 8
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %792, i32 0, i32 1
  store i64 5, ptr %794, align 4
  %795 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %792, align 8
  %796 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %797 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %798 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %795, ptr %798, align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 1
  store ptr %796, ptr %799, align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %800, align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %801, align 8
  %802 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %797, align 8
  %803 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %803, i32 0, i32 0
  store ptr @23, ptr %804, align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %803, i32 0, i32 1
  store i64 9, ptr %805, align 4
  %806 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %803, align 8
  %807 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %808 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %808, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %806, ptr %809, align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %808, i32 0, i32 1
  store ptr %807, ptr %810, align 8
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %808, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %811, align 8
  %812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %808, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %812, align 8
  %813 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %808, align 8
  %814 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %814, i32 0, i32 0
  store ptr @29, ptr %815, align 8
  %816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %814, i32 0, i32 1
  store i64 7, ptr %816, align 4
  %817 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %814, align 8
  %818 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %819 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %817, ptr %820, align 8
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 1
  store ptr %818, ptr %821, align 8
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %822, align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir", ptr %823, align 8
  %824 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %819, align 8
  %825 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %825, i32 0, i32 0
  store ptr @32, ptr %826, align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %825, i32 0, i32 1
  store i64 6, ptr %827, align 4
  %828 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %825, align 8
  %829 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %830 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %831 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %830, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %828, ptr %831, align 8
  %832 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %830, i32 0, i32 1
  store ptr %829, ptr %832, align 8
  %833 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %830, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %833, align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %830, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %834, align 8
  %835 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %830, align 8
  %836 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %836, i32 0, i32 0
  store ptr @26, ptr %837, align 8
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %836, i32 0, i32 1
  store i64 4, ptr %838, align 4
  %839 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %836, align 8
  %840 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %841 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %839, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 1
  store ptr %840, ptr %843, align 8
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %844, align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %845, align 8
  %846 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %841, align 8
  %847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 0
  store ptr @33, ptr %848, align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 1
  store i64 10, ptr %849, align 4
  %850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %847, align 8
  %851 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %852 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %853 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %850, ptr %853, align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 1
  store ptr %851, ptr %854, align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %855, align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %856, align 8
  %857 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %852, align 8
  %858 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %858, i32 0, i32 0
  store ptr @34, ptr %859, align 8
  %860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %858, i32 0, i32 1
  store i64 8, ptr %860, align 4
  %861 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %858, align 8
  %862 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %863 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %863, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %861, ptr %864, align 8
  %865 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %863, i32 0, i32 1
  store ptr %862, ptr %865, align 8
  %866 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %863, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %866, align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %863, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %867, align 8
  %868 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %863, align 8
  %869 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %869, i32 0, i32 0
  store ptr @38, ptr %870, align 8
  %871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %869, i32 0, i32 1
  store i64 7, ptr %871, align 4
  %872 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %869, align 8
  %873 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %874 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %874, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %872, ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %874, i32 0, i32 1
  store ptr %873, ptr %876, align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %874, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %877, align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %874, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %878, align 8
  %879 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %874, align 8
  %880 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %881 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %880, i32 0, i32 0
  store ptr @39, ptr %881, align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %880, i32 0, i32 1
  store i64 10, ptr %882, align 4
  %883 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %880, align 8
  %884 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %885 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %886 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %885, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %883, ptr %886, align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %885, i32 0, i32 1
  store ptr %884, ptr %887, align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %885, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %888, align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %885, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %889, align 8
  %890 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %885, align 8
  %891 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %892 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %891, i32 0, i32 0
  store ptr @40, ptr %892, align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %891, i32 0, i32 1
  store i64 13, ptr %893, align 4
  %894 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %891, align 8
  %895 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %896 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %897 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %896, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %894, ptr %897, align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %896, i32 0, i32 1
  store ptr %895, ptr %898, align 8
  %899 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %896, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %899, align 8
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %896, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %900, align 8
  %901 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %896, align 8
  %902 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %902, i32 0, i32 0
  store ptr @45, ptr %903, align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %902, i32 0, i32 1
  store i64 13, ptr %904, align 4
  %905 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %902, align 8
  %906 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %907 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %907, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %905, ptr %908, align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %907, i32 0, i32 1
  store ptr %906, ptr %909, align 8
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %907, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %910, align 8
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %907, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %911, align 8
  %912 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %907, align 8
  %913 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %913, i32 0, i32 0
  store ptr @46, ptr %914, align 8
  %915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %913, i32 0, i32 1
  store i64 3, ptr %915, align 4
  %916 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %913, align 8
  %917 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %918 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %918, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %916, ptr %919, align 8
  %920 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %918, i32 0, i32 1
  store ptr %917, ptr %920, align 8
  %921 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %918, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %921, align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %918, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Key", ptr %922, align 8
  %923 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %918, align 8
  %924 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %925 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %924, i32 0, i32 0
  store ptr @47, ptr %925, align 8
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %924, i32 0, i32 1
  store i64 4, ptr %926, align 4
  %927 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %924, align 8
  %928 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 0
  store ptr @48, ptr %929, align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 1
  store i64 40, ptr %930, align 4
  %931 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %928, align 8
  %932 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %931, i64 7, i64 8, i64 1, i64 1)
  %933 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %934 = icmp eq ptr %933, null
  br i1 %934, label %_llgo_47, label %_llgo_48

_llgo_46:                                         ; preds = %_llgo_94, %_llgo_44
  %935 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %936 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %935, i32 0, i32 0
  store ptr @41, ptr %936, align 8
  %937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %935, i32 0, i32 1
  store i64 49, ptr %937, align 4
  %938 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %935, align 8
  %939 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %938, i64 25, i64 120, i64 0, i64 20)
  %940 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %941 = icmp eq ptr %940, null
  br i1 %941, label %_llgo_95, label %_llgo_96

_llgo_47:                                         ; preds = %_llgo_45
  store ptr %932, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_45
  %942 = load ptr, ptr @_llgo_uint, align 8
  %943 = icmp eq ptr %942, null
  br i1 %943, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %944 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %944, ptr @_llgo_uint, align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %945 = load ptr, ptr @_llgo_uint, align 8
  br i1 %934, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %946 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %947 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %946, i32 0, i32 0
  store ptr @49, ptr %947, align 8
  %948 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %946, i32 0, i32 1
  store i64 6, ptr %948, align 4
  %949 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %946, align 8
  %950 = load ptr, ptr @_llgo_string, align 8
  %951 = icmp eq ptr %950, null
  br i1 %951, label %_llgo_53, label %_llgo_54

_llgo_52:                                         ; preds = %_llgo_56, %_llgo_50
  %952 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %953 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %954 = icmp eq ptr %953, null
  br i1 %954, label %_llgo_57, label %_llgo_58

_llgo_53:                                         ; preds = %_llgo_51
  %955 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %955, ptr @_llgo_string, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_51
  %956 = load ptr, ptr @_llgo_string, align 8
  %957 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %958 = icmp eq ptr %957, null
  br i1 %958, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %959 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %960 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %960, i32 0, i32 0
  store ptr %959, ptr %961, align 8
  %962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %960, i32 0, i32 1
  store i64 0, ptr %962, align 4
  %963 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %960, i32 0, i32 2
  store i64 0, ptr %963, align 4
  %964 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %960, align 8
  %965 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %966 = getelementptr ptr, ptr %965, i64 0
  store ptr %956, ptr %966, align 8
  %967 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %968 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %967, i32 0, i32 0
  store ptr %965, ptr %968, align 8
  %969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %967, i32 0, i32 1
  store i64 1, ptr %969, align 4
  %970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %967, i32 0, i32 2
  store i64 1, ptr %970, align 4
  %971 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %967, align 8
  %972 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %964, %"github.com/goplus/llgo/internal/runtime.Slice" %971, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %972)
  store ptr %972, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %973 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %974 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %975 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %974, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %949, ptr %975, align 8
  %976 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %974, i32 0, i32 1
  store ptr %973, ptr %976, align 8
  %977 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %974, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %977, align 8
  %978 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %974, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %978, align 8
  %979 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %974, align 8
  %980 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %981 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %980, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %949, ptr %981, align 8
  %982 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %980, i32 0, i32 1
  store ptr %973, ptr %982, align 8
  %983 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %980, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %983, align 8
  %984 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %980, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %984, align 8
  %985 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %980, align 8
  %986 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %987 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %986, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %985, ptr %987, align 8
  %988 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %989 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %988, i32 0, i32 0
  store ptr %986, ptr %989, align 8
  %990 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %988, i32 0, i32 1
  store i64 1, ptr %990, align 4
  %991 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %988, i32 0, i32 2
  store i64 1, ptr %991, align 4
  %992 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %988, align 8
  %993 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %994 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %993, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %979, ptr %994, align 8
  %995 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %995, i32 0, i32 0
  store ptr %993, ptr %996, align 8
  %997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %995, i32 0, i32 1
  store i64 1, ptr %997, align 4
  %998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %995, i32 0, i32 2
  store i64 1, ptr %998, align 4
  %999 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %995, align 8
  %1000 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1001 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1000, i32 0, i32 0
  store ptr @31, ptr %1001, align 8
  %1002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1000, i32 0, i32 1
  store i64 35, ptr %1002, align 4
  %1003 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1000, align 8
  %1004 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1005 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, i32 0, i32 0
  store ptr @47, ptr %1005, align 8
  %1006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, i32 0, i32 1
  store i64 4, ptr %1006, align 4
  %1007 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1004, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %932, %"github.com/goplus/llgo/internal/runtime.String" %1003, %"github.com/goplus/llgo/internal/runtime.String" %1007, ptr %945, %"github.com/goplus/llgo/internal/runtime.Slice" %992, %"github.com/goplus/llgo/internal/runtime.Slice" %999)
  br label %_llgo_52

_llgo_57:                                         ; preds = %_llgo_52
  %1008 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1009 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1010 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1009, i32 0, i32 0
  store ptr %1008, ptr %1010, align 8
  %1011 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1009, i32 0, i32 1
  store i64 0, ptr %1011, align 4
  %1012 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1009, i32 0, i32 2
  store i64 0, ptr %1012, align 4
  %1013 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1009, align 8
  %1014 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1015 = getelementptr ptr, ptr %1014, i64 0
  store ptr %952, ptr %1015, align 8
  %1016 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1017 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1016, i32 0, i32 0
  store ptr %1014, ptr %1017, align 8
  %1018 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1016, i32 0, i32 1
  store i64 1, ptr %1018, align 4
  %1019 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1016, i32 0, i32 2
  store i64 1, ptr %1019, align 4
  %1020 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1016, align 8
  %1021 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1013, %"github.com/goplus/llgo/internal/runtime.Slice" %1020, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1021)
  store ptr %1021, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_58

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
  %1034 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1035 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1032, ptr %1035, align 8
  %1036 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 1
  store ptr %1033, ptr %1036, align 8
  %1037 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1037, align 8
  %1038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %1038, align 8
  %1039 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1034, align 8
  %1040 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, i32 0, i32 0
  store ptr @50, ptr %1041, align 8
  %1042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, i32 0, i32 1
  store i64 7, ptr %1042, align 4
  %1043 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1040, align 8
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

_llgo_59:                                         ; preds = %_llgo_58
  store ptr %1048, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %1051 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1052 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1051, i32 0, i32 0
  store ptr @1, ptr %1052, align 8
  %1053 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1051, i32 0, i32 1
  store i64 40, ptr %1053, align 4
  %1054 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1051, align 8
  %1055 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1054, i64 25, i64 80, i64 0, i64 20)
  %1056 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1057 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1056, i32 0, i32 0
  store ptr @1, ptr %1057, align 8
  %1058 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1056, i32 0, i32 1
  store i64 40, ptr %1058, align 4
  %1059 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1056, align 8
  %1060 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1059, i64 25, i64 80, i64 0, i64 20)
  %1061 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1062 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, i32 0, i32 0
  store ptr @1, ptr %1062, align 8
  %1063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, i32 0, i32 1
  store i64 40, ptr %1063, align 4
  %1064 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1061, align 8
  %1065 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1064, i64 25, i64 80, i64 0, i64 20)
  %1066 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1067 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1066, i32 0, i32 0
  store ptr @1, ptr %1067, align 8
  %1068 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1066, i32 0, i32 1
  store i64 40, ptr %1068, align 4
  %1069 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1066, align 8
  %1070 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1069, i64 25, i64 80, i64 0, i64 20)
  %1071 = load ptr, ptr @_llgo_Pointer, align 8
  %1072 = load ptr, ptr @_llgo_Pointer, align 8
  %1073 = load ptr, ptr @_llgo_uintptr, align 8
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %1075 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %1075, ptr @_llgo_uintptr, align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %1076 = load ptr, ptr @_llgo_uintptr, align 8
  %1077 = load ptr, ptr @_llgo_uintptr, align 8
  %1078 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1079 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1078, i32 0, i32 0
  store ptr @25, ptr %1079, align 8
  %1080 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1078, i32 0, i32 1
  store i64 4, ptr %1080, align 4
  %1081 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1078, align 8
  %1082 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1083 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1082, i32 0, i32 0
  store ptr null, ptr %1083, align 8
  %1084 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1082, i32 0, i32 1
  store i64 0, ptr %1084, align 4
  %1085 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1082, align 8
  %1086 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1081, ptr %1055, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1085, i1 true)
  %1087 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1088 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, i32 0, i32 0
  store ptr @46, ptr %1088, align 8
  %1089 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, i32 0, i32 1
  store i64 3, ptr %1089, align 4
  %1090 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, align 8
  %1091 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1092 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1091, i32 0, i32 0
  store ptr null, ptr %1092, align 8
  %1093 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1091, i32 0, i32 1
  store i64 0, ptr %1093, align 4
  %1094 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1091, align 8
  %1095 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1060)
  %1096 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1090, ptr %1095, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1094, i1 false)
  %1097 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1097, i32 0, i32 0
  store ptr @26, ptr %1098, align 8
  %1099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1097, i32 0, i32 1
  store i64 4, ptr %1099, align 4
  %1100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1097, align 8
  %1101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1101, i32 0, i32 0
  store ptr null, ptr %1102, align 8
  %1103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1101, i32 0, i32 1
  store i64 0, ptr %1103, align 4
  %1104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1101, align 8
  %1105 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1065)
  %1106 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1100, ptr %1105, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %1104, i1 false)
  %1107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1107, i32 0, i32 0
  store ptr @52, ptr %1108, align 8
  %1109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1107, i32 0, i32 1
  store i64 6, ptr %1109, align 4
  %1110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1107, align 8
  %1111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1111, i32 0, i32 0
  store ptr null, ptr %1112, align 8
  %1113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1111, i32 0, i32 1
  store i64 0, ptr %1113, align 4
  %1114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1111, align 8
  %1115 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1070)
  %1116 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1110, ptr %1115, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1114, i1 false)
  %1117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1117, i32 0, i32 0
  store ptr @53, ptr %1118, align 8
  %1119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1117, i32 0, i32 1
  store i64 6, ptr %1119, align 4
  %1120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1117, align 8
  %1121 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1121, i32 0, i32 0
  store ptr null, ptr %1122, align 8
  %1123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1121, i32 0, i32 1
  store i64 0, ptr %1123, align 4
  %1124 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1121, align 8
  %1125 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1125, i32 0, i32 0
  store ptr @17, ptr %1126, align 8
  %1127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1125, i32 0, i32 1
  store i64 1, ptr %1127, align 4
  %1128 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1125, align 8
  %1129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1129, i32 0, i32 0
  store ptr null, ptr %1130, align 8
  %1131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1129, i32 0, i32 1
  store i64 0, ptr %1131, align 4
  %1132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1129, align 8
  %1133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1134 = getelementptr ptr, ptr %1133, i64 0
  store ptr %1071, ptr %1134, align 8
  %1135 = getelementptr ptr, ptr %1133, i64 1
  store ptr %1072, ptr %1135, align 8
  %1136 = getelementptr ptr, ptr %1133, i64 2
  store ptr %1076, ptr %1136, align 8
  %1137 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1137, i32 0, i32 0
  store ptr %1133, ptr %1138, align 8
  %1139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1137, i32 0, i32 1
  store i64 3, ptr %1139, align 4
  %1140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1137, i32 0, i32 2
  store i64 3, ptr %1140, align 4
  %1141 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1137, align 8
  %1142 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1143 = getelementptr ptr, ptr %1142, i64 0
  store ptr %1077, ptr %1143, align 8
  %1144 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1144, i32 0, i32 0
  store ptr %1142, ptr %1145, align 8
  %1146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1144, i32 0, i32 1
  store i64 1, ptr %1146, align 4
  %1147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1144, i32 0, i32 2
  store i64 1, ptr %1147, align 4
  %1148 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1144, align 8
  %1149 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1141, %"github.com/goplus/llgo/internal/runtime.Slice" %1148, i1 false)
  %1150 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1128, ptr %1149, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1132, i1 false)
  %1151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1151, i32 0, i32 0
  store ptr @18, ptr %1152, align 8
  %1153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1151, i32 0, i32 1
  store i64 4, ptr %1153, align 4
  %1154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1151, align 8
  %1155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1155, i32 0, i32 0
  store ptr null, ptr %1156, align 8
  %1157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1155, i32 0, i32 1
  store i64 0, ptr %1157, align 4
  %1158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1155, align 8
  %1159 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %1160 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1154, ptr %1159, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %1158, i1 false)
  %1161 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1161, i32 0, i32 0
  store ptr @6, ptr %1162, align 8
  %1163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1161, i32 0, i32 1
  store i64 4, ptr %1163, align 4
  %1164 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1161, align 8
  %1165 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %1166 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1165, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1150, ptr %1166, align 8
  %1167 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1165, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1160, ptr %1167, align 8
  %1168 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1168, i32 0, i32 0
  store ptr %1165, ptr %1169, align 8
  %1170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1168, i32 0, i32 1
  store i64 2, ptr %1170, align 4
  %1171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1168, i32 0, i32 2
  store i64 2, ptr %1171, align 4
  %1172 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1168, align 8
  %1173 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1164, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %1172)
  %1174 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1120, ptr %1173, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %1124, i1 false)
  %1175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, i32 0, i32 0
  store ptr @54, ptr %1176, align 8
  %1177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, i32 0, i32 1
  store i64 7, ptr %1177, align 4
  %1178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, align 8
  %1179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, i32 0, i32 0
  store ptr null, ptr %1180, align 8
  %1181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, i32 0, i32 1
  store i64 0, ptr %1181, align 4
  %1182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, align 8
  %1183 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1184 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1178, ptr %1183, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %1182, i1 false)
  %1185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1185, i32 0, i32 0
  store ptr @55, ptr %1186, align 8
  %1187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1185, i32 0, i32 1
  store i64 9, ptr %1187, align 4
  %1188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1185, align 8
  %1189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1189, i32 0, i32 0
  store ptr null, ptr %1190, align 8
  %1191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1189, i32 0, i32 1
  store i64 0, ptr %1191, align 4
  %1192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1189, align 8
  %1193 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %1194 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1188, ptr %1193, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %1192, i1 false)
  %1195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1195, i32 0, i32 0
  store ptr @56, ptr %1196, align 8
  %1197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1195, i32 0, i32 1
  store i64 10, ptr %1197, align 4
  %1198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1195, align 8
  %1199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1199, i32 0, i32 0
  store ptr null, ptr %1200, align 8
  %1201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1199, i32 0, i32 1
  store i64 0, ptr %1201, align 4
  %1202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1199, align 8
  %1203 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1204 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1198, ptr %1203, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %1202, i1 false)
  %1205 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1205, i32 0, i32 0
  store ptr @57, ptr %1206, align 8
  %1207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1205, i32 0, i32 1
  store i64 5, ptr %1207, align 4
  %1208 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1205, align 8
  %1209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1209, i32 0, i32 0
  store ptr null, ptr %1210, align 8
  %1211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1209, i32 0, i32 1
  store i64 0, ptr %1211, align 4
  %1212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1209, align 8
  %1213 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1214 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1208, ptr %1213, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %1212, i1 false)
  %1215 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1215, i32 0, i32 0
  store ptr @6, ptr %1216, align 8
  %1217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1215, i32 0, i32 1
  store i64 4, ptr %1217, align 4
  %1218 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1215, align 8
  %1219 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %1220 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1086, ptr %1220, align 8
  %1221 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1096, ptr %1221, align 8
  %1222 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1106, ptr %1222, align 8
  %1223 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1116, ptr %1223, align 8
  %1224 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %1174, ptr %1224, align 8
  %1225 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %1184, ptr %1225, align 8
  %1226 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %1194, ptr %1226, align 8
  %1227 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %1204, ptr %1227, align 8
  %1228 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1219, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %1214, ptr %1228, align 8
  %1229 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1229, i32 0, i32 0
  store ptr %1219, ptr %1230, align 8
  %1231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1229, i32 0, i32 1
  store i64 9, ptr %1231, align 4
  %1232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1229, i32 0, i32 2
  store i64 9, ptr %1232, align 4
  %1233 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1229, align 8
  %1234 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1218, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %1233)
  store ptr %1234, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %1235 = load ptr, ptr @"main.struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %1050, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %1236 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1236, i32 0, i32 0
  store ptr @22, ptr %1237, align 8
  %1238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1236, i32 0, i32 1
  store i64 5, ptr %1238, align 4
  %1239 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1236, align 8
  %1240 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1241 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1242 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1241, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1239, ptr %1242, align 8
  %1243 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1241, i32 0, i32 1
  store ptr %1240, ptr %1243, align 8
  %1244 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1241, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1244, align 8
  %1245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1241, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1245, align 8
  %1246 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1241, align 8
  %1247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1247, i32 0, i32 0
  store ptr @23, ptr %1248, align 8
  %1249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1247, i32 0, i32 1
  store i64 9, ptr %1249, align 4
  %1250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1247, align 8
  %1251 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1252 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1253 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1252, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1250, ptr %1253, align 8
  %1254 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1252, i32 0, i32 1
  store ptr %1251, ptr %1254, align 8
  %1255 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1252, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1255, align 8
  %1256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1252, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1256, align 8
  %1257 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1252, align 8
  %1258 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1258, i32 0, i32 0
  store ptr @29, ptr %1259, align 8
  %1260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1258, i32 0, i32 1
  store i64 7, ptr %1260, align 4
  %1261 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1258, align 8
  %1262 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1263 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1264 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1263, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1261, ptr %1264, align 8
  %1265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1263, i32 0, i32 1
  store ptr %1262, ptr %1265, align 8
  %1266 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1263, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1266, align 8
  %1267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1263, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ChanDir", ptr %1267, align 8
  %1268 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1263, align 8
  %1269 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1269, i32 0, i32 0
  store ptr @32, ptr %1270, align 8
  %1271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1269, i32 0, i32 1
  store i64 6, ptr %1271, align 4
  %1272 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1269, align 8
  %1273 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1274 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1274, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1272, ptr %1275, align 8
  %1276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1274, i32 0, i32 1
  store ptr %1273, ptr %1276, align 8
  %1277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1274, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1277, align 8
  %1278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1274, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1278, align 8
  %1279 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1274, align 8
  %1280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1280, i32 0, i32 0
  store ptr @33, ptr %1281, align 8
  %1282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1280, i32 0, i32 1
  store i64 10, ptr %1282, align 4
  %1283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1280, align 8
  %1284 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1285 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1285, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1283, ptr %1286, align 8
  %1287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1285, i32 0, i32 1
  store ptr %1284, ptr %1287, align 8
  %1288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1285, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1288, align 8
  %1289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1285, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1289, align 8
  %1290 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1285, align 8
  %1291 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1291, i32 0, i32 0
  store ptr @34, ptr %1292, align 8
  %1293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1291, i32 0, i32 1
  store i64 8, ptr %1293, align 4
  %1294 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1291, align 8
  %1295 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1296 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1296, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1294, ptr %1297, align 8
  %1298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1296, i32 0, i32 1
  store ptr %1295, ptr %1298, align 8
  %1299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1296, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1299, align 8
  %1300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1296, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1300, align 8
  %1301 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1296, align 8
  %1302 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1302, i32 0, i32 0
  store ptr @38, ptr %1303, align 8
  %1304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1302, i32 0, i32 1
  store i64 7, ptr %1304, align 4
  %1305 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1302, align 8
  %1306 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1307 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1307, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1305, ptr %1308, align 8
  %1309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1307, i32 0, i32 1
  store ptr %1306, ptr %1309, align 8
  %1310 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1307, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1310, align 8
  %1311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1307, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1311, align 8
  %1312 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1307, align 8
  %1313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1313, i32 0, i32 0
  store ptr @58, ptr %1314, align 8
  %1315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1313, i32 0, i32 1
  store i64 14, ptr %1315, align 4
  %1316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1313, align 8
  %1317 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1318 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1319 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1318, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1316, ptr %1319, align 8
  %1320 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1318, i32 0, i32 1
  store ptr %1317, ptr %1320, align 8
  %1321 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1318, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1321, align 8
  %1322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1318, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1322, align 8
  %1323 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1318, align 8
  %1324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1324, i32 0, i32 0
  store ptr @39, ptr %1325, align 8
  %1326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1324, i32 0, i32 1
  store i64 10, ptr %1326, align 4
  %1327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1324, align 8
  %1328 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1329 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1329, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1327, ptr %1330, align 8
  %1331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1329, i32 0, i32 1
  store ptr %1328, ptr %1331, align 8
  %1332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1329, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1332, align 8
  %1333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1329, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1333, align 8
  %1334 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1329, align 8
  %1335 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1335, i32 0, i32 0
  store ptr @59, ptr %1336, align 8
  %1337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1335, i32 0, i32 1
  store i64 12, ptr %1337, align 4
  %1338 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1335, align 8
  %1339 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1340 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1341 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1340, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1338, ptr %1341, align 8
  %1342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1340, i32 0, i32 1
  store ptr %1339, ptr %1342, align 8
  %1343 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1340, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1343, align 8
  %1344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1340, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1344, align 8
  %1345 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1340, align 8
  %1346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1346, i32 0, i32 0
  store ptr @60, ptr %1347, align 8
  %1348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1346, i32 0, i32 1
  store i64 11, ptr %1348, align 4
  %1349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1346, align 8
  %1350 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1351 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1352 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1351, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1349, ptr %1352, align 8
  %1353 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1351, i32 0, i32 1
  store ptr %1350, ptr %1353, align 8
  %1354 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1351, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1354, align 8
  %1355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1351, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1355, align 8
  %1356 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1351, align 8
  %1357 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1357, i32 0, i32 0
  store ptr @40, ptr %1358, align 8
  %1359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1357, i32 0, i32 1
  store i64 13, ptr %1359, align 4
  %1360 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1357, align 8
  %1361 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1362 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1363 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1362, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1360, ptr %1363, align 8
  %1364 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1362, i32 0, i32 1
  store ptr %1361, ptr %1364, align 8
  %1365 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1362, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1365, align 8
  %1366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1362, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1366, align 8
  %1367 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1362, align 8
  %1368 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1368, i32 0, i32 0
  store ptr @45, ptr %1369, align 8
  %1370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1368, i32 0, i32 1
  store i64 13, ptr %1370, align 4
  %1371 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1368, align 8
  %1372 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1373 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1374 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1371, ptr %1374, align 8
  %1375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 1
  store ptr %1372, ptr %1375, align 8
  %1376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1376, align 8
  %1377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1377, align 8
  %1378 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1373, align 8
  %1379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 0
  store ptr @47, ptr %1380, align 8
  %1381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, i32 0, i32 1
  store i64 4, ptr %1381, align 4
  %1382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1379, align 8
  %1383 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1384 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1384, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1382, ptr %1385, align 8
  %1386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1384, i32 0, i32 1
  store ptr %1383, ptr %1386, align 8
  %1387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1384, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1387, align 8
  %1388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1384, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1388, align 8
  %1389 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1384, align 8
  %1390 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1390, i32 0, i32 0
  store ptr @28, ptr %1391, align 8
  %1392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1390, i32 0, i32 1
  store i64 3, ptr %1392, align 4
  %1393 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1390, align 8
  %1394 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1395 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1395, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1393, ptr %1396, align 8
  %1397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1395, i32 0, i32 1
  store ptr %1394, ptr %1397, align 8
  %1398 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1395, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1398, align 8
  %1399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1395, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1399, align 8
  %1400 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1395, align 8
  %1401 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1401, i32 0, i32 0
  store ptr @50, ptr %1402, align 8
  %1403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1401, i32 0, i32 1
  store i64 7, ptr %1403, align 4
  %1404 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1401, align 8
  %1405 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1406 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1404, ptr %1407, align 8
  %1408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, i32 0, i32 1
  store ptr %1405, ptr %1408, align 8
  %1409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1409, align 8
  %1410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1410, align 8
  %1411 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1406, align 8
  %1412 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1412, i32 0, i32 0
  store ptr @61, ptr %1413, align 8
  %1414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1412, i32 0, i32 1
  store i64 13, ptr %1414, align 4
  %1415 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1412, align 8
  %1416 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1417 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1417, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1415, ptr %1418, align 8
  %1419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1417, i32 0, i32 1
  store ptr %1416, ptr %1419, align 8
  %1420 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1417, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1420, align 8
  %1421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1417, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1421, align 8
  %1422 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1417, align 8
  %1423 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1423, i32 0, i32 0
  store ptr @62, ptr %1424, align 8
  %1425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1423, i32 0, i32 1
  store i64 8, ptr %1425, align 4
  %1426 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1423, align 8
  %1427 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1428 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1429 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1426, ptr %1429, align 8
  %1430 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i32 0, i32 1
  store ptr %1427, ptr %1430, align 8
  %1431 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1431, align 8
  %1432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1432, align 8
  %1433 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1428, align 8
  %1434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1434, i32 0, i32 0
  store ptr @63, ptr %1435, align 8
  %1436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1434, i32 0, i32 1
  store i64 12, ptr %1436, align 4
  %1437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1434, align 8
  %1438 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1439 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1440 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1439, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1437, ptr %1440, align 8
  %1441 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1439, i32 0, i32 1
  store ptr %1438, ptr %1441, align 8
  %1442 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1439, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1442, align 8
  %1443 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1439, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1443, align 8
  %1444 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1439, align 8
  %1445 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1445, i32 0, i32 0
  store ptr @64, ptr %1446, align 8
  %1447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1445, i32 0, i32 1
  store i64 4, ptr %1447, align 4
  %1448 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1445, align 8
  %1449 = load ptr, ptr @_llgo_uintptr, align 8
  %1450 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1451 = icmp eq ptr %1450, null
  br i1 %1451, label %_llgo_65, label %_llgo_66

_llgo_64:                                         ; preds = %_llgo_90, %_llgo_62
  %1452 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1452, i32 0, i32 0
  store ptr @51, ptr %1453, align 8
  %1454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1452, i32 0, i32 1
  store i64 43, ptr %1454, align 4
  %1455 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1452, align 8
  %1456 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1455, i64 25, i64 136, i64 0, i64 23)
  %1457 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1458 = icmp eq ptr %1457, null
  br i1 %1458, label %_llgo_91, label %_llgo_92

_llgo_65:                                         ; preds = %_llgo_63
  %1459 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1460 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1460, i32 0, i32 0
  store ptr %1459, ptr %1461, align 8
  %1462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1460, i32 0, i32 1
  store i64 0, ptr %1462, align 4
  %1463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1460, i32 0, i32 2
  store i64 0, ptr %1463, align 4
  %1464 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1460, align 8
  %1465 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1466 = getelementptr ptr, ptr %1465, i64 0
  store ptr %1449, ptr %1466, align 8
  %1467 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1467, i32 0, i32 0
  store ptr %1465, ptr %1468, align 8
  %1469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1467, i32 0, i32 1
  store i64 1, ptr %1469, align 4
  %1470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1467, i32 0, i32 2
  store i64 1, ptr %1470, align 4
  %1471 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1467, align 8
  %1472 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1464, %"github.com/goplus/llgo/internal/runtime.Slice" %1471, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1472)
  store ptr %1472, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_63
  %1473 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1474 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1475 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1474, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1448, ptr %1475, align 8
  %1476 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1474, i32 0, i32 1
  store ptr %1473, ptr %1476, align 8
  %1477 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1474, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1477, align 8
  %1478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1474, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1478, align 8
  %1479 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1474, align 8
  %1480 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1480, i32 0, i32 0
  store ptr @49, ptr %1481, align 8
  %1482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1480, i32 0, i32 1
  store i64 6, ptr %1482, align 4
  %1483 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1480, align 8
  %1484 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1485 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1486 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1485, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1483, ptr %1486, align 8
  %1487 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1485, i32 0, i32 1
  store ptr %1484, ptr %1487, align 8
  %1488 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1485, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1488, align 8
  %1489 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1485, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1489, align 8
  %1490 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1485, align 8
  %1491 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1491, i32 0, i32 0
  store ptr @65, ptr %1492, align 8
  %1493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1491, i32 0, i32 1
  store i64 10, ptr %1493, align 4
  %1494 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1491, align 8
  %1495 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1495, i32 0, i32 0
  store ptr @66, ptr %1496, align 8
  %1497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1495, i32 0, i32 1
  store i64 46, ptr %1497, align 4
  %1498 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1495, align 8
  %1499 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1498, i64 25, i64 120, i64 0, i64 20)
  %1500 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1501 = icmp eq ptr %1500, null
  br i1 %1501, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  store ptr %1499, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %1502 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1502, i32 0, i32 0
  store ptr @1, ptr %1503, align 8
  %1504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1502, i32 0, i32 1
  store i64 40, ptr %1504, align 4
  %1505 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1502, align 8
  %1506 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1505, i64 25, i64 80, i64 0, i64 20)
  %1507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1507, i32 0, i32 0
  store ptr @67, ptr %1508, align 8
  %1509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1507, i32 0, i32 1
  store i64 47, ptr %1509, align 4
  %1510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1507, align 8
  %1511 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1510, i64 25, i64 56, i64 0, i64 2)
  %1512 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1513 = icmp eq ptr %1512, null
  br i1 %1513, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %1514 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, i32 0, i32 0
  store ptr @25, ptr %1515, align 8
  %1516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, i32 0, i32 1
  store i64 4, ptr %1516, align 4
  %1517 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1514, align 8
  %1518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1518, i32 0, i32 0
  store ptr null, ptr %1519, align 8
  %1520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1518, i32 0, i32 1
  store i64 0, ptr %1520, align 4
  %1521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1518, align 8
  %1522 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1517, ptr %1506, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1521, i1 true)
  %1523 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1523, i32 0, i32 0
  store ptr @43, ptr %1524, align 8
  %1525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1523, i32 0, i32 1
  store i64 8, ptr %1525, align 4
  %1526 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1523, align 8
  %1527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, i32 0, i32 0
  store ptr null, ptr %1528, align 8
  %1529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, i32 0, i32 1
  store i64 0, ptr %1529, align 4
  %1530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, align 8
  %1531 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1532 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1526, ptr %1531, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1530, i1 false)
  %1533 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1533, i32 0, i32 0
  store ptr @68, ptr %1534, align 8
  %1535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1533, i32 0, i32 1
  store i64 6, ptr %1535, align 4
  %1536 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1533, align 8
  %1537 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1537, i32 0, i32 0
  store ptr null, ptr %1538, align 8
  %1539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1537, i32 0, i32 1
  store i64 0, ptr %1539, align 4
  %1540 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1537, align 8
  %1541 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1511)
  %1542 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1536, ptr %1541, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1540, i1 false)
  %1543 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1543, i32 0, i32 0
  store ptr @6, ptr %1544, align 8
  %1545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1543, i32 0, i32 1
  store i64 4, ptr %1545, align 4
  %1546 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1543, align 8
  %1547 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1548 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1547, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1522, ptr %1548, align 8
  %1549 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1547, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1532, ptr %1549, align 8
  %1550 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1547, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1542, ptr %1550, align 8
  %1551 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1551, i32 0, i32 0
  store ptr %1547, ptr %1552, align 8
  %1553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1551, i32 0, i32 1
  store i64 3, ptr %1553, align 4
  %1554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1551, i32 0, i32 2
  store i64 3, ptr %1554, align 4
  %1555 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1551, align 8
  %1556 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1546, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1555)
  store ptr %1556, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %1557 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1501, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  %1558 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1558, i32 0, i32 0
  store ptr @22, ptr %1559, align 8
  %1560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1558, i32 0, i32 1
  store i64 5, ptr %1560, align 4
  %1561 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1558, align 8
  %1562 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1563 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1564 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1563, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1561, ptr %1564, align 8
  %1565 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1563, i32 0, i32 1
  store ptr %1562, ptr %1565, align 8
  %1566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1563, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1566, align 8
  %1567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1563, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1567, align 8
  %1568 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1563, align 8
  %1569 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1569, i32 0, i32 0
  store ptr @23, ptr %1570, align 8
  %1571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1569, i32 0, i32 1
  store i64 9, ptr %1571, align 4
  %1572 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1569, align 8
  %1573 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1574 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1575 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1572, ptr %1575, align 8
  %1576 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i32 0, i32 1
  store ptr %1573, ptr %1576, align 8
  %1577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1577, align 8
  %1578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1578, align 8
  %1579 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1574, align 8
  %1580 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1580, i32 0, i32 0
  store ptr @29, ptr %1581, align 8
  %1582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1580, i32 0, i32 1
  store i64 7, ptr %1582, align 4
  %1583 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1580, align 8
  %1584 = load ptr, ptr @"_llgo_func$TrNr0CVWj6qegOngzWbt2Jl7pr7IBJ5gOmgUf2ieIi4", align 8
  %1585 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1586 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1585, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1583, ptr %1586, align 8
  %1587 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1585, i32 0, i32 1
  store ptr %1584, ptr %1587, align 8
  %1588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1585, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %1588, align 8
  %1589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1585, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir", ptr %1589, align 8
  %1590 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1585, align 8
  %1591 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1592 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1591, i32 0, i32 0
  store ptr @32, ptr %1592, align 8
  %1593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1591, i32 0, i32 1
  store i64 6, ptr %1593, align 4
  %1594 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1591, align 8
  %1595 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1596 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1597 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1596, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1594, ptr %1597, align 8
  %1598 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1596, i32 0, i32 1
  store ptr %1595, ptr %1598, align 8
  %1599 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1596, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1599, align 8
  %1600 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1596, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1600, align 8
  %1601 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1596, align 8
  %1602 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1602, i32 0, i32 0
  store ptr @26, ptr %1603, align 8
  %1604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1602, i32 0, i32 1
  store i64 4, ptr %1604, align 4
  %1605 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1602, align 8
  %1606 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1607 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1605, ptr %1608, align 8
  %1609 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 1
  store ptr %1606, ptr %1609, align 8
  %1610 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1610, align 8
  %1611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1611, align 8
  %1612 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, align 8
  %1613 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, i32 0, i32 0
  store ptr @33, ptr %1614, align 8
  %1615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, i32 0, i32 1
  store i64 10, ptr %1615, align 4
  %1616 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, align 8
  %1617 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1618 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1616, ptr %1619, align 8
  %1620 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 1
  store ptr %1617, ptr %1620, align 8
  %1621 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1621, align 8
  %1622 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1622, align 8
  %1623 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, align 8
  %1624 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1625 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1624, i32 0, i32 0
  store ptr @34, ptr %1625, align 8
  %1626 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1624, i32 0, i32 1
  store i64 8, ptr %1626, align 4
  %1627 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1624, align 8
  %1628 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1629 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1630 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1629, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1627, ptr %1630, align 8
  %1631 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1629, i32 0, i32 1
  store ptr %1628, ptr %1631, align 8
  %1632 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1629, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1632, align 8
  %1633 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1629, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1633, align 8
  %1634 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1629, align 8
  %1635 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1635, i32 0, i32 0
  store ptr @38, ptr %1636, align 8
  %1637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1635, i32 0, i32 1
  store i64 7, ptr %1637, align 4
  %1638 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1635, align 8
  %1639 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1640 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1641 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1640, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1638, ptr %1641, align 8
  %1642 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1640, i32 0, i32 1
  store ptr %1639, ptr %1642, align 8
  %1643 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1640, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1643, align 8
  %1644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1640, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1644, align 8
  %1645 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1640, align 8
  %1646 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1646, i32 0, i32 0
  store ptr @39, ptr %1647, align 8
  %1648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1646, i32 0, i32 1
  store i64 10, ptr %1648, align 4
  %1649 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1646, align 8
  %1650 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1651 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1652 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1651, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1649, ptr %1652, align 8
  %1653 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1651, i32 0, i32 1
  store ptr %1650, ptr %1653, align 8
  %1654 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1651, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1654, align 8
  %1655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1651, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1655, align 8
  %1656 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1651, align 8
  %1657 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1658 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1657, i32 0, i32 0
  store ptr @40, ptr %1658, align 8
  %1659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1657, i32 0, i32 1
  store i64 13, ptr %1659, align 4
  %1660 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1657, align 8
  %1661 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1662 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1663 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1662, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1660, ptr %1663, align 8
  %1664 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1662, i32 0, i32 1
  store ptr %1661, ptr %1664, align 8
  %1665 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1662, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1665, align 8
  %1666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1662, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1666, align 8
  %1667 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1662, align 8
  %1668 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1669 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1668, i32 0, i32 0
  store ptr @45, ptr %1669, align 8
  %1670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1668, i32 0, i32 1
  store i64 13, ptr %1670, align 4
  %1671 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1668, align 8
  %1672 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1673 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1674 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1673, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1671, ptr %1674, align 8
  %1675 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1673, i32 0, i32 1
  store ptr %1672, ptr %1675, align 8
  %1676 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1673, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1676, align 8
  %1677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1673, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1677, align 8
  %1678 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1673, align 8
  %1679 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1680 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1679, i32 0, i32 0
  store ptr @46, ptr %1680, align 8
  %1681 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1679, i32 0, i32 1
  store i64 3, ptr %1681, align 4
  %1682 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1679, align 8
  %1683 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1684 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1685 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1682, ptr %1685, align 8
  %1686 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 1
  store ptr %1683, ptr %1686, align 8
  %1687 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %1687, align 8
  %1688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Key", ptr %1688, align 8
  %1689 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1684, align 8
  %1690 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1691 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1690, i32 0, i32 0
  store ptr @47, ptr %1691, align 8
  %1692 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1690, i32 0, i32 1
  store i64 4, ptr %1692, align 4
  %1693 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1690, align 8
  %1694 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1695 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1696 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1695, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1693, ptr %1696, align 8
  %1697 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1695, i32 0, i32 1
  store ptr %1694, ptr %1697, align 8
  %1698 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1695, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1698, align 8
  %1699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1695, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1699, align 8
  %1700 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1695, align 8
  %1701 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1702 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1701, i32 0, i32 0
  store ptr @28, ptr %1702, align 8
  %1703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1701, i32 0, i32 1
  store i64 3, ptr %1703, align 4
  %1704 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1701, align 8
  %1705 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1706 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1707 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1706, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1704, ptr %1707, align 8
  %1708 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1706, i32 0, i32 1
  store ptr %1705, ptr %1708, align 8
  %1709 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1706, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1709, align 8
  %1710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1706, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1710, align 8
  %1711 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1706, align 8
  %1712 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1713 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1712, i32 0, i32 0
  store ptr @50, ptr %1713, align 8
  %1714 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1712, i32 0, i32 1
  store i64 7, ptr %1714, align 4
  %1715 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1712, align 8
  %1716 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1717 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1718 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1717, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1715, ptr %1718, align 8
  %1719 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1717, i32 0, i32 1
  store ptr %1716, ptr %1719, align 8
  %1720 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1717, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1720, align 8
  %1721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1717, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1721, align 8
  %1722 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1717, align 8
  %1723 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1724 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1723, i32 0, i32 0
  store ptr @62, ptr %1724, align 8
  %1725 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1723, i32 0, i32 1
  store i64 8, ptr %1725, align 4
  %1726 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1723, align 8
  %1727 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1728 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1729 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1728, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1726, ptr %1729, align 8
  %1730 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1728, i32 0, i32 1
  store ptr %1727, ptr %1730, align 8
  %1731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1728, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1731, align 8
  %1732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1728, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1732, align 8
  %1733 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1728, align 8
  %1734 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1734, i32 0, i32 0
  store ptr @64, ptr %1735, align 8
  %1736 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1734, i32 0, i32 1
  store i64 4, ptr %1736, align 4
  %1737 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1734, align 8
  %1738 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1739 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1740 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1739, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1737, ptr %1740, align 8
  %1741 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1739, i32 0, i32 1
  store ptr %1738, ptr %1741, align 8
  %1742 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1739, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1742, align 8
  %1743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1739, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1743, align 8
  %1744 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1739, align 8
  %1745 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1746 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1745, i32 0, i32 0
  store ptr @49, ptr %1746, align 8
  %1747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1745, i32 0, i32 1
  store i64 6, ptr %1747, align 4
  %1748 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1745, align 8
  %1749 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1750 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1751 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1750, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1748, ptr %1751, align 8
  %1752 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1750, i32 0, i32 1
  store ptr %1749, ptr %1752, align 8
  %1753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1750, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1753, align 8
  %1754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1750, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1754, align 8
  %1755 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1750, align 8
  %1756 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1757 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1756, i32 0, i32 0
  store ptr @65, ptr %1757, align 8
  %1758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1756, i32 0, i32 1
  store i64 10, ptr %1758, align 4
  %1759 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1756, align 8
  %1760 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1761 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1762 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1761, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1759, ptr %1762, align 8
  %1763 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1761, i32 0, i32 1
  store ptr %1760, ptr %1763, align 8
  %1764 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1761, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1764, align 8
  %1765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1761, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1765, align 8
  %1766 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1761, align 8
  %1767 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1768 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1767, i32 0, i32 0
  store ptr @69, ptr %1768, align 8
  %1769 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1767, i32 0, i32 1
  store i64 8, ptr %1769, align 4
  %1770 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1767, align 8
  %1771 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1771, i32 0, i32 0
  store ptr @70, ptr %1772, align 8
  %1773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1771, i32 0, i32 1
  store i64 48, ptr %1773, align 4
  %1774 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1771, align 8
  %1775 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1774, i64 25, i64 24, i64 0, i64 2)
  %1776 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1777 = icmp eq ptr %1776, null
  br i1 %1777, label %_llgo_73, label %_llgo_74

_llgo_72:                                         ; preds = %_llgo_86, %_llgo_70
  %1778 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1778, i32 0, i32 0
  store ptr @66, ptr %1779, align 8
  %1780 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1778, i32 0, i32 1
  store i64 46, ptr %1780, align 4
  %1781 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1778, align 8
  %1782 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1781, i64 25, i64 120, i64 0, i64 20)
  %1783 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %_llgo_87, label %_llgo_88

_llgo_73:                                         ; preds = %_llgo_71
  store ptr %1775, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_71
  %1785 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1786 = icmp eq ptr %1785, null
  br i1 %1786, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %1787 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1787, i32 0, i32 0
  store ptr @43, ptr %1788, align 8
  %1789 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1787, i32 0, i32 1
  store i64 8, ptr %1789, align 4
  %1790 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1787, align 8
  %1791 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1791, i32 0, i32 0
  store ptr null, ptr %1792, align 8
  %1793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1791, i32 0, i32 1
  store i64 0, ptr %1793, align 4
  %1794 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1791, align 8
  %1795 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1796 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1790, ptr %1795, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1794, i1 false)
  %1797 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1797, i32 0, i32 0
  store ptr @71, ptr %1798, align 8
  %1799 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1797, i32 0, i32 1
  store i64 6, ptr %1799, align 4
  %1800 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1797, align 8
  %1801 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1802 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1801, i32 0, i32 0
  store ptr null, ptr %1802, align 8
  %1803 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1801, i32 0, i32 1
  store i64 0, ptr %1803, align 4
  %1804 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1801, align 8
  %1805 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1806 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1800, ptr %1805, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1804, i1 false)
  %1807 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1807, i32 0, i32 0
  store ptr @72, ptr %1808, align 8
  %1809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1807, i32 0, i32 1
  store i64 6, ptr %1809, align 4
  %1810 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1807, align 8
  %1811 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1812 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1811, i32 0, i32 0
  store ptr null, ptr %1812, align 8
  %1813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1811, i32 0, i32 1
  store i64 0, ptr %1813, align 4
  %1814 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1811, align 8
  %1815 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1816 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1810, ptr %1815, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %1814, i1 false)
  %1817 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1818 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1817, i32 0, i32 0
  store ptr @73, ptr %1818, align 8
  %1819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1817, i32 0, i32 1
  store i64 4, ptr %1819, align 4
  %1820 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1817, align 8
  %1821 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1821, i32 0, i32 0
  store ptr null, ptr %1822, align 8
  %1823 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1821, i32 0, i32 1
  store i64 0, ptr %1823, align 4
  %1824 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1821, align 8
  %1825 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1826 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1820, ptr %1825, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %1824, i1 false)
  %1827 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, i32 0, i32 0
  store ptr @6, ptr %1828, align 8
  %1829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, i32 0, i32 1
  store i64 4, ptr %1829, align 4
  %1830 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, align 8
  %1831 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1832 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1831, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1796, ptr %1832, align 8
  %1833 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1831, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1806, ptr %1833, align 8
  %1834 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1831, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1816, ptr %1834, align 8
  %1835 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1831, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1826, ptr %1835, align 8
  %1836 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1836, i32 0, i32 0
  store ptr %1831, ptr %1837, align 8
  %1838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1836, i32 0, i32 1
  store i64 4, ptr %1838, align 4
  %1839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1836, i32 0, i32 2
  store i64 4, ptr %1839, align 4
  %1840 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1836, align 8
  %1841 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1830, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1840)
  store ptr %1841, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %1842 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1777, label %_llgo_77, label %_llgo_78

_llgo_77:                                         ; preds = %_llgo_76
  %1843 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1843, i32 0, i32 0
  store ptr @74, ptr %1844, align 8
  %1845 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1843, i32 0, i32 1
  store i64 15, ptr %1845, align 4
  %1846 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1843, align 8
  %1847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, i32 0, i32 0
  store ptr @75, ptr %1848, align 8
  %1849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, i32 0, i32 1
  store i64 42, ptr %1849, align 4
  %1850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1847, align 8
  %1851 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1850, i64 25, i64 40, i64 0, i64 3)
  %1852 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1853 = icmp eq ptr %1852, null
  br i1 %1853, label %_llgo_79, label %_llgo_80

_llgo_78:                                         ; preds = %_llgo_82, %_llgo_76
  %1854 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1854, i32 0, i32 0
  store ptr @70, ptr %1855, align 8
  %1856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1854, i32 0, i32 1
  store i64 48, ptr %1856, align 4
  %1857 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1854, align 8
  %1858 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1857, i64 25, i64 24, i64 0, i64 2)
  %1859 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1860 = icmp eq ptr %1859, null
  br i1 %1860, label %_llgo_83, label %_llgo_84

_llgo_79:                                         ; preds = %_llgo_77
  %1861 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1851)
  store ptr %1861, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_77
  %1862 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1863 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1864 = icmp eq ptr %1863, null
  br i1 %1864, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %1865 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1866 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1867 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1866, i32 0, i32 0
  store ptr %1865, ptr %1867, align 8
  %1868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1866, i32 0, i32 1
  store i64 0, ptr %1868, align 4
  %1869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1866, i32 0, i32 2
  store i64 0, ptr %1869, align 4
  %1870 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1866, align 8
  %1871 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1872 = getelementptr ptr, ptr %1871, i64 0
  store ptr %1862, ptr %1872, align 8
  %1873 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1873, i32 0, i32 0
  store ptr %1871, ptr %1874, align 8
  %1875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1873, i32 0, i32 1
  store i64 1, ptr %1875, align 4
  %1876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1873, i32 0, i32 2
  store i64 1, ptr %1876, align 4
  %1877 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1873, align 8
  %1878 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1870, %"github.com/goplus/llgo/internal/runtime.Slice" %1877, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1878)
  store ptr %1878, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %1879 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1880 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1880, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1846, ptr %1881, align 8
  %1882 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1880, i32 0, i32 1
  store ptr %1879, ptr %1882, align 8
  %1883 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1880, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1883, align 8
  %1884 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1880, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1884, align 8
  %1885 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1880, align 8
  %1886 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1886, i32 0, i32 0
  store ptr @44, ptr %1887, align 8
  %1888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1886, i32 0, i32 1
  store i64 7, ptr %1888, align 4
  %1889 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1886, align 8
  %1890 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1891 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1892 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1891, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1889, ptr %1892, align 8
  %1893 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1891, i32 0, i32 1
  store ptr %1890, ptr %1893, align 8
  %1894 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1891, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1894, align 8
  %1895 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1891, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1895, align 8
  %1896 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1891, align 8
  %1897 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1898 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1897, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1885, ptr %1898, align 8
  %1899 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1897, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1896, ptr %1899, align 8
  %1900 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1900, i32 0, i32 0
  store ptr %1897, ptr %1901, align 8
  %1902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1900, i32 0, i32 1
  store i64 2, ptr %1902, align 4
  %1903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1900, i32 0, i32 2
  store i64 2, ptr %1903, align 4
  %1904 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1900, align 8
  %1905 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1905, i32 0, i32 0
  store ptr @31, ptr %1906, align 8
  %1907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1905, i32 0, i32 1
  store i64 35, ptr %1907, align 4
  %1908 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1905, align 8
  %1909 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1909, i32 0, i32 0
  store ptr @76, ptr %1910, align 8
  %1911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1909, i32 0, i32 1
  store i64 12, ptr %1911, align 4
  %1912 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1909, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1775, %"github.com/goplus/llgo/internal/runtime.String" %1908, %"github.com/goplus/llgo/internal/runtime.String" %1912, ptr %1842, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1904)
  br label %_llgo_78

_llgo_83:                                         ; preds = %_llgo_78
  %1913 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1858)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1913)
  store ptr %1913, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_78
  %1914 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1915 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1916 = icmp eq ptr %1915, null
  br i1 %1916, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %1917 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1918 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1918, i32 0, i32 0
  store ptr %1917, ptr %1919, align 8
  %1920 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1918, i32 0, i32 1
  store i64 0, ptr %1920, align 4
  %1921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1918, i32 0, i32 2
  store i64 0, ptr %1921, align 4
  %1922 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1918, align 8
  %1923 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1924 = getelementptr ptr, ptr %1923, i64 0
  store ptr %1914, ptr %1924, align 8
  %1925 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1925, i32 0, i32 0
  store ptr %1923, ptr %1926, align 8
  %1927 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1925, i32 0, i32 1
  store i64 1, ptr %1927, align 4
  %1928 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1925, i32 0, i32 2
  store i64 1, ptr %1928, align 4
  %1929 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1925, align 8
  %1930 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1922, %"github.com/goplus/llgo/internal/runtime.Slice" %1929, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1930)
  store ptr %1930, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %1931 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1932 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1933 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1932, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1770, ptr %1933, align 8
  %1934 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1932, i32 0, i32 1
  store ptr %1931, ptr %1934, align 8
  %1935 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1932, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %1935, align 8
  %1936 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1932, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %1936, align 8
  %1937 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1932, align 8
  %1938 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %1939 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1568, ptr %1939, align 8
  %1940 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1579, ptr %1940, align 8
  %1941 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1590, ptr %1941, align 8
  %1942 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1601, ptr %1942, align 8
  %1943 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1612, ptr %1943, align 8
  %1944 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1623, ptr %1944, align 8
  %1945 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1634, ptr %1945, align 8
  %1946 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1645, ptr %1946, align 8
  %1947 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1656, ptr %1947, align 8
  %1948 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1667, ptr %1948, align 8
  %1949 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1678, ptr %1949, align 8
  %1950 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1689, ptr %1950, align 8
  %1951 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1700, ptr %1951, align 8
  %1952 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1711, ptr %1952, align 8
  %1953 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1722, ptr %1953, align 8
  %1954 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1733, ptr %1954, align 8
  %1955 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1744, ptr %1955, align 8
  %1956 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1755, ptr %1956, align 8
  %1957 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1766, ptr %1957, align 8
  %1958 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1938, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1937, ptr %1958, align 8
  %1959 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1960 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1959, i32 0, i32 0
  store ptr %1938, ptr %1960, align 8
  %1961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1959, i32 0, i32 1
  store i64 20, ptr %1961, align 4
  %1962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1959, i32 0, i32 2
  store i64 20, ptr %1962, align 4
  %1963 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1959, align 8
  %1964 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1964, i32 0, i32 0
  store ptr @31, ptr %1965, align 8
  %1966 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1964, i32 0, i32 1
  store i64 35, ptr %1966, align 4
  %1967 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1964, align 8
  %1968 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1968, i32 0, i32 0
  store ptr @65, ptr %1969, align 8
  %1970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1968, i32 0, i32 1
  store i64 10, ptr %1970, align 4
  %1971 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1968, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1499, %"github.com/goplus/llgo/internal/runtime.String" %1967, %"github.com/goplus/llgo/internal/runtime.String" %1971, ptr %1557, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1963)
  br label %_llgo_72

_llgo_87:                                         ; preds = %_llgo_72
  %1972 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1782)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1972)
  store ptr %1972, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_72
  %1973 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1974 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1975 = icmp eq ptr %1974, null
  br i1 %1975, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %1976 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1977 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1977, i32 0, i32 0
  store ptr %1976, ptr %1978, align 8
  %1979 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1977, i32 0, i32 1
  store i64 0, ptr %1979, align 4
  %1980 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1977, i32 0, i32 2
  store i64 0, ptr %1980, align 4
  %1981 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1977, align 8
  %1982 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1983 = getelementptr ptr, ptr %1982, i64 0
  store ptr %1973, ptr %1983, align 8
  %1984 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1985 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1984, i32 0, i32 0
  store ptr %1982, ptr %1985, align 8
  %1986 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1984, i32 0, i32 1
  store i64 1, ptr %1986, align 4
  %1987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1984, i32 0, i32 2
  store i64 1, ptr %1987, align 4
  %1988 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1984, align 8
  %1989 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1981, %"github.com/goplus/llgo/internal/runtime.Slice" %1988, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1989)
  store ptr %1989, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %1990 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1991 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1992 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1991, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1494, ptr %1992, align 8
  %1993 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1991, i32 0, i32 1
  store ptr %1990, ptr %1993, align 8
  %1994 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1991, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %1994, align 8
  %1995 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1991, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %1995, align 8
  %1996 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1991, align 8
  %1997 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1997, i32 0, i32 0
  store ptr @69, ptr %1998, align 8
  %1999 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1997, i32 0, i32 1
  store i64 8, ptr %1999, align 4
  %2000 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1997, align 8
  %2001 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2002 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2003 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2002, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2000, ptr %2003, align 8
  %2004 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2002, i32 0, i32 1
  store ptr %2001, ptr %2004, align 8
  %2005 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2002, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2005, align 8
  %2006 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2002, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %2006, align 8
  %2007 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2002, align 8
  %2008 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 920)
  %2009 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1246, ptr %2009, align 8
  %2010 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1257, ptr %2010, align 8
  %2011 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1268, ptr %2011, align 8
  %2012 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1279, ptr %2012, align 8
  %2013 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1290, ptr %2013, align 8
  %2014 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1301, ptr %2014, align 8
  %2015 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1312, ptr %2015, align 8
  %2016 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1323, ptr %2016, align 8
  %2017 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1334, ptr %2017, align 8
  %2018 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1345, ptr %2018, align 8
  %2019 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1356, ptr %2019, align 8
  %2020 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1367, ptr %2020, align 8
  %2021 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1378, ptr %2021, align 8
  %2022 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1389, ptr %2022, align 8
  %2023 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1400, ptr %2023, align 8
  %2024 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1411, ptr %2024, align 8
  %2025 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1422, ptr %2025, align 8
  %2026 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1433, ptr %2026, align 8
  %2027 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1444, ptr %2027, align 8
  %2028 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1479, ptr %2028, align 8
  %2029 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1490, ptr %2029, align 8
  %2030 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1996, ptr %2030, align 8
  %2031 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2008, i64 22
  store %"github.com/goplus/llgo/internal/abi.Method" %2007, ptr %2031, align 8
  %2032 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2033 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2032, i32 0, i32 0
  store ptr %2008, ptr %2033, align 8
  %2034 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2032, i32 0, i32 1
  store i64 23, ptr %2034, align 4
  %2035 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2032, i32 0, i32 2
  store i64 23, ptr %2035, align 4
  %2036 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2032, align 8
  %2037 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2038 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2037, i32 0, i32 0
  store ptr @31, ptr %2038, align 8
  %2039 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2037, i32 0, i32 1
  store i64 35, ptr %2039, align 4
  %2040 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2037, align 8
  %2041 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, i32 0, i32 0
  store ptr @50, ptr %2042, align 8
  %2043 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, i32 0, i32 1
  store i64 7, ptr %2043, align 4
  %2044 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1048, %"github.com/goplus/llgo/internal/runtime.String" %2040, %"github.com/goplus/llgo/internal/runtime.String" %2044, ptr %1235, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2036)
  br label %_llgo_64

_llgo_91:                                         ; preds = %_llgo_64
  %2045 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1456)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2045)
  store ptr %2045, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_64
  %2046 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %2047 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2048 = icmp eq ptr %2047, null
  br i1 %2048, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %2049 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2050 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2051 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2050, i32 0, i32 0
  store ptr %2049, ptr %2051, align 8
  %2052 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2050, i32 0, i32 1
  store i64 0, ptr %2052, align 4
  %2053 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2050, i32 0, i32 2
  store i64 0, ptr %2053, align 4
  %2054 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2050, align 8
  %2055 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2056 = getelementptr ptr, ptr %2055, i64 0
  store ptr %2046, ptr %2056, align 8
  %2057 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2058 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2057, i32 0, i32 0
  store ptr %2055, ptr %2058, align 8
  %2059 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2057, i32 0, i32 1
  store i64 1, ptr %2059, align 4
  %2060 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2057, i32 0, i32 2
  store i64 1, ptr %2060, align 4
  %2061 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2057, align 8
  %2062 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2054, %"github.com/goplus/llgo/internal/runtime.Slice" %2061, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2062)
  store ptr %2062, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %2063 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2064 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2065 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2064, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1043, ptr %2065, align 8
  %2066 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2064, i32 0, i32 1
  store ptr %2063, ptr %2066, align 8
  %2067 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2064, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2067, align 8
  %2068 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2064, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %2068, align 8
  %2069 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2064, align 8
  %2070 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2071 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2070, i32 0, i32 0
  store ptr @62, ptr %2071, align 8
  %2072 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2070, i32 0, i32 1
  store i64 8, ptr %2072, align 4
  %2073 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2070, align 8
  %2074 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2075 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2076 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2075, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2073, ptr %2076, align 8
  %2077 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2075, i32 0, i32 1
  store ptr %2074, ptr %2077, align 8
  %2078 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2075, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2078, align 8
  %2079 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2075, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %2079, align 8
  %2080 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2075, align 8
  %2081 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2082 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2081, i32 0, i32 0
  store ptr @64, ptr %2082, align 8
  %2083 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2081, i32 0, i32 1
  store i64 4, ptr %2083, align 4
  %2084 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2081, align 8
  %2085 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2086 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2087 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2086, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2084, ptr %2087, align 8
  %2088 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2086, i32 0, i32 1
  store ptr %2085, ptr %2088, align 8
  %2089 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2086, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2089, align 8
  %2090 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2086, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %2090, align 8
  %2091 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2086, align 8
  %2092 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2093 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2092, i32 0, i32 0
  store ptr @49, ptr %2093, align 8
  %2094 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2092, i32 0, i32 1
  store i64 6, ptr %2094, align 4
  %2095 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2092, align 8
  %2096 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2097 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2098 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2097, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2095, ptr %2098, align 8
  %2099 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2097, i32 0, i32 1
  store ptr %2096, ptr %2099, align 8
  %2100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2097, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2100, align 8
  %2101 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2097, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %2101, align 8
  %2102 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2097, align 8
  %2103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2103, i32 0, i32 0
  store ptr @65, ptr %2104, align 8
  %2105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2103, i32 0, i32 1
  store i64 10, ptr %2105, align 4
  %2106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2103, align 8
  %2107 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2108 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2109 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2108, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2106, ptr %2109, align 8
  %2110 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2108, i32 0, i32 1
  store ptr %2107, ptr %2110, align 8
  %2111 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2108, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2111, align 8
  %2112 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2108, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %2112, align 8
  %2113 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2108, align 8
  %2114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2114, i32 0, i32 0
  store ptr @69, ptr %2115, align 8
  %2116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2114, i32 0, i32 1
  store i64 8, ptr %2116, align 4
  %2117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2114, align 8
  %2118 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2119 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2119, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2117, ptr %2120, align 8
  %2121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2119, i32 0, i32 1
  store ptr %2118, ptr %2121, align 8
  %2122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2119, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2122, align 8
  %2123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2119, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %2123, align 8
  %2124 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2119, align 8
  %2125 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 800)
  %2126 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %802, ptr %2126, align 8
  %2127 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %813, ptr %2127, align 8
  %2128 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %824, ptr %2128, align 8
  %2129 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %835, ptr %2129, align 8
  %2130 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %846, ptr %2130, align 8
  %2131 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %857, ptr %2131, align 8
  %2132 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %868, ptr %2132, align 8
  %2133 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %879, ptr %2133, align 8
  %2134 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %890, ptr %2134, align 8
  %2135 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %901, ptr %2135, align 8
  %2136 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %912, ptr %2136, align 8
  %2137 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %923, ptr %2137, align 8
  %2138 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1028, ptr %2138, align 8
  %2139 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1039, ptr %2139, align 8
  %2140 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2069, ptr %2140, align 8
  %2141 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2080, ptr %2141, align 8
  %2142 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2091, ptr %2142, align 8
  %2143 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2102, ptr %2143, align 8
  %2144 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2113, ptr %2144, align 8
  %2145 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2125, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2124, ptr %2145, align 8
  %2146 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2146, i32 0, i32 0
  store ptr %2125, ptr %2147, align 8
  %2148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2146, i32 0, i32 1
  store i64 20, ptr %2148, align 4
  %2149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2146, i32 0, i32 2
  store i64 20, ptr %2149, align 4
  %2150 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2146, align 8
  %2151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 0
  store ptr @31, ptr %2152, align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 1
  store i64 35, ptr %2153, align 4
  %2154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, align 8
  %2155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2155, i32 0, i32 0
  store ptr @40, ptr %2156, align 8
  %2157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2155, i32 0, i32 1
  store i64 13, ptr %2157, align 4
  %2158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2155, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %733, %"github.com/goplus/llgo/internal/runtime.String" %2154, %"github.com/goplus/llgo/internal/runtime.String" %2158, ptr %791, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2150)
  br label %_llgo_46

_llgo_95:                                         ; preds = %_llgo_46
  %2159 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %939)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2159)
  store ptr %2159, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_46
  %2160 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %2161 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2162 = icmp eq ptr %2161, null
  br i1 %2162, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %2163 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2164 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2164, i32 0, i32 0
  store ptr %2163, ptr %2165, align 8
  %2166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2164, i32 0, i32 1
  store i64 0, ptr %2166, align 4
  %2167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2164, i32 0, i32 2
  store i64 0, ptr %2167, align 4
  %2168 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2164, align 8
  %2169 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2170 = getelementptr ptr, ptr %2169, i64 0
  store ptr %2160, ptr %2170, align 8
  %2171 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2171, i32 0, i32 0
  store ptr %2169, ptr %2172, align 8
  %2173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2171, i32 0, i32 1
  store i64 1, ptr %2173, align 4
  %2174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2171, i32 0, i32 2
  store i64 1, ptr %2174, align 4
  %2175 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2171, align 8
  %2176 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2168, %"github.com/goplus/llgo/internal/runtime.Slice" %2175, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2176)
  store ptr %2176, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %2177 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2178 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %728, ptr %2179, align 8
  %2180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 1
  store ptr %2177, ptr %2180, align 8
  %2181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2181, align 8
  %2182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %2182, align 8
  %2183 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, align 8
  %2184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 0
  store ptr @45, ptr %2185, align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 1
  store i64 13, ptr %2186, align 4
  %2187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, align 8
  %2188 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2189 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2187, ptr %2190, align 8
  %2191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 1
  store ptr %2188, ptr %2191, align 8
  %2192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2192, align 8
  %2193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %2193, align 8
  %2194 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, align 8
  %2195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 0
  store ptr @46, ptr %2196, align 8
  %2197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, i32 0, i32 1
  store i64 3, ptr %2197, align 4
  %2198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2195, align 8
  %2199 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2200 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2198, ptr %2201, align 8
  %2202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 1
  store ptr %2199, ptr %2202, align 8
  %2203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2203, align 8
  %2204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Key", ptr %2204, align 8
  %2205 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2200, align 8
  %2206 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, i32 0, i32 0
  store ptr @47, ptr %2207, align 8
  %2208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, i32 0, i32 1
  store i64 4, ptr %2208, align 4
  %2209 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2206, align 8
  %2210 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2211 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2209, ptr %2212, align 8
  %2213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 1
  store ptr %2210, ptr %2213, align 8
  %2214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2214, align 8
  %2215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %2215, align 8
  %2216 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2211, align 8
  %2217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, i32 0, i32 0
  store ptr @28, ptr %2218, align 8
  %2219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, i32 0, i32 1
  store i64 3, ptr %2219, align 4
  %2220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, align 8
  %2221 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2222 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2223 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2220, ptr %2223, align 8
  %2224 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 1
  store ptr %2221, ptr %2224, align 8
  %2225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2225, align 8
  %2226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %2226, align 8
  %2227 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2222, align 8
  %2228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2228, i32 0, i32 0
  store ptr @50, ptr %2229, align 8
  %2230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2228, i32 0, i32 1
  store i64 7, ptr %2230, align 4
  %2231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2228, align 8
  %2232 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2233 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2231, ptr %2234, align 8
  %2235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 1
  store ptr %2232, ptr %2235, align 8
  %2236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2236, align 8
  %2237 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %2237, align 8
  %2238 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2233, align 8
  %2239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, i32 0, i32 0
  store ptr @62, ptr %2240, align 8
  %2241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, i32 0, i32 1
  store i64 8, ptr %2241, align 4
  %2242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2239, align 8
  %2243 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2244 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2242, ptr %2245, align 8
  %2246 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 1
  store ptr %2243, ptr %2246, align 8
  %2247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2247, align 8
  %2248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %2248, align 8
  %2249 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, align 8
  %2250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 0
  store ptr @64, ptr %2251, align 8
  %2252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 1
  store i64 4, ptr %2252, align 4
  %2253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, align 8
  %2254 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2255 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2253, ptr %2256, align 8
  %2257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 1
  store ptr %2254, ptr %2257, align 8
  %2258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2258, align 8
  %2259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %2259, align 8
  %2260 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, align 8
  %2261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, i32 0, i32 0
  store ptr @49, ptr %2262, align 8
  %2263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, i32 0, i32 1
  store i64 6, ptr %2263, align 4
  %2264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, align 8
  %2265 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2266 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2264, ptr %2267, align 8
  %2268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 1
  store ptr %2265, ptr %2268, align 8
  %2269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2269, align 8
  %2270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %2270, align 8
  %2271 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, align 8
  %2272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, i32 0, i32 0
  store ptr @65, ptr %2273, align 8
  %2274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, i32 0, i32 1
  store i64 10, ptr %2274, align 4
  %2275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, align 8
  %2276 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2277 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2275, ptr %2278, align 8
  %2279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 1
  store ptr %2276, ptr %2279, align 8
  %2280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2280, align 8
  %2281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2281, align 8
  %2282 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, align 8
  %2283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, i32 0, i32 0
  store ptr @69, ptr %2284, align 8
  %2285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, i32 0, i32 1
  store i64 8, ptr %2285, align 4
  %2286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, align 8
  %2287 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2288 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2286, ptr %2289, align 8
  %2290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 1
  store ptr %2287, ptr %2290, align 8
  %2291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2291, align 8
  %2292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2292, align 8
  %2293 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, align 8
  %2294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, i32 0, i32 0
  store ptr @77, ptr %2295, align 8
  %2296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, i32 0, i32 1
  store i64 8, ptr %2296, align 4
  %2297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, align 8
  %2298 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2299 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2297, ptr %2300, align 8
  %2301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 1
  store ptr %2298, ptr %2301, align 8
  %2302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2302, align 8
  %2303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2303, align 8
  %2304 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, align 8
  %2305 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 840)
  %2306 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %612, ptr %2306, align 8
  %2307 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %623, ptr %2307, align 8
  %2308 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %634, ptr %2308, align 8
  %2309 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %645, ptr %2309, align 8
  %2310 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %656, ptr %2310, align 8
  %2311 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %667, ptr %2311, align 8
  %2312 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %678, ptr %2312, align 8
  %2313 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %713, ptr %2313, align 8
  %2314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %724, ptr %2314, align 8
  %2315 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2183, ptr %2315, align 8
  %2316 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2194, ptr %2316, align 8
  %2317 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2205, ptr %2317, align 8
  %2318 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2216, ptr %2318, align 8
  %2319 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2227, ptr %2319, align 8
  %2320 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2238, ptr %2320, align 8
  %2321 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2249, ptr %2321, align 8
  %2322 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2260, ptr %2322, align 8
  %2323 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2271, ptr %2323, align 8
  %2324 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2282, ptr %2324, align 8
  %2325 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %2293, ptr %2325, align 8
  %2326 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2305, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %2304, ptr %2326, align 8
  %2327 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2327, i32 0, i32 0
  store ptr %2305, ptr %2328, align 8
  %2329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2327, i32 0, i32 1
  store i64 21, ptr %2329, align 4
  %2330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2327, i32 0, i32 2
  store i64 21, ptr %2330, align 4
  %2331 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2327, align 8
  %2332 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2332, i32 0, i32 0
  store ptr @31, ptr %2333, align 8
  %2334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2332, i32 0, i32 1
  store i64 35, ptr %2334, align 4
  %2335 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2332, align 8
  %2336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2336, i32 0, i32 0
  store ptr @34, ptr %2337, align 8
  %2338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2336, i32 0, i32 1
  store i64 8, ptr %2338, align 4
  %2339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2336, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %536, %"github.com/goplus/llgo/internal/runtime.String" %2335, %"github.com/goplus/llgo/internal/runtime.String" %2339, ptr %601, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2331)
  br label %_llgo_38

_llgo_99:                                         ; preds = %_llgo_38
  %2340 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %690)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2340)
  store ptr %2340, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_38
  %2341 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2342 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2343 = icmp eq ptr %2342, null
  br i1 %2343, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %2344 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2345 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, i32 0, i32 0
  store ptr %2344, ptr %2346, align 8
  %2347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, i32 0, i32 1
  store i64 0, ptr %2347, align 4
  %2348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, i32 0, i32 2
  store i64 0, ptr %2348, align 4
  %2349 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2345, align 8
  %2350 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2351 = getelementptr ptr, ptr %2350, i64 0
  store ptr %2341, ptr %2351, align 8
  %2352 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2352, i32 0, i32 0
  store ptr %2350, ptr %2353, align 8
  %2354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2352, i32 0, i32 1
  store i64 1, ptr %2354, align 4
  %2355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2352, i32 0, i32 2
  store i64 1, ptr %2355, align 4
  %2356 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2352, align 8
  %2357 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2349, %"github.com/goplus/llgo/internal/runtime.Slice" %2356, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2357)
  store ptr %2357, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %2358 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2359 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2360 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2359, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %531, ptr %2360, align 8
  %2361 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2359, i32 0, i32 1
  store ptr %2358, ptr %2361, align 8
  %2362 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2359, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2362, align 8
  %2363 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2359, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2363, align 8
  %2364 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2359, align 8
  %2365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2365, i32 0, i32 0
  store ptr @38, ptr %2366, align 8
  %2367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2365, i32 0, i32 1
  store i64 7, ptr %2367, align 4
  %2368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2365, align 8
  %2369 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2370 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2371 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2370, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2368, ptr %2371, align 8
  %2372 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2370, i32 0, i32 1
  store ptr %2369, ptr %2372, align 8
  %2373 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2370, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2373, align 8
  %2374 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2370, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2374, align 8
  %2375 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2370, align 8
  %2376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2376, i32 0, i32 0
  store ptr @39, ptr %2377, align 8
  %2378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2376, i32 0, i32 1
  store i64 10, ptr %2378, align 4
  %2379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2376, align 8
  %2380 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2381 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2381, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2379, ptr %2382, align 8
  %2383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2381, i32 0, i32 1
  store ptr %2380, ptr %2383, align 8
  %2384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2381, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2384, align 8
  %2385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2381, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2385, align 8
  %2386 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2381, align 8
  %2387 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2387, i32 0, i32 0
  store ptr @40, ptr %2388, align 8
  %2389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2387, i32 0, i32 1
  store i64 13, ptr %2389, align 4
  %2390 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2387, align 8
  %2391 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2392 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2392, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2390, ptr %2393, align 8
  %2394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2392, i32 0, i32 1
  store ptr %2391, ptr %2394, align 8
  %2395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2392, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2395, align 8
  %2396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2392, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2396, align 8
  %2397 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2392, align 8
  %2398 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2398, i32 0, i32 0
  store ptr @45, ptr %2399, align 8
  %2400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2398, i32 0, i32 1
  store i64 13, ptr %2400, align 4
  %2401 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2398, align 8
  %2402 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2403 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2403, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2401, ptr %2404, align 8
  %2405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2403, i32 0, i32 1
  store ptr %2402, ptr %2405, align 8
  %2406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2403, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2406, align 8
  %2407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2403, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2407, align 8
  %2408 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2403, align 8
  %2409 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2409, i32 0, i32 0
  store ptr @46, ptr %2410, align 8
  %2411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2409, i32 0, i32 1
  store i64 3, ptr %2411, align 4
  %2412 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2409, align 8
  %2413 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2414 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2415 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2414, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2412, ptr %2415, align 8
  %2416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2414, i32 0, i32 1
  store ptr %2413, ptr %2416, align 8
  %2417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2414, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %2417, align 8
  %2418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2414, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Key", ptr %2418, align 8
  %2419 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2414, align 8
  %2420 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2420, i32 0, i32 0
  store ptr @47, ptr %2421, align 8
  %2422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2420, i32 0, i32 1
  store i64 4, ptr %2422, align 4
  %2423 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2420, align 8
  %2424 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2425 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2425, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2423, ptr %2426, align 8
  %2427 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2425, i32 0, i32 1
  store ptr %2424, ptr %2427, align 8
  %2428 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2425, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2428, align 8
  %2429 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2425, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2429, align 8
  %2430 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2425, align 8
  %2431 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2431, i32 0, i32 0
  store ptr @50, ptr %2432, align 8
  %2433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2431, i32 0, i32 1
  store i64 7, ptr %2433, align 4
  %2434 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2431, align 8
  %2435 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2436 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2437 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2436, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2434, ptr %2437, align 8
  %2438 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2436, i32 0, i32 1
  store ptr %2435, ptr %2438, align 8
  %2439 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2436, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2439, align 8
  %2440 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2436, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2440, align 8
  %2441 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2436, align 8
  %2442 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2442, i32 0, i32 0
  store ptr @62, ptr %2443, align 8
  %2444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2442, i32 0, i32 1
  store i64 8, ptr %2444, align 4
  %2445 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2442, align 8
  %2446 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2447 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2448 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2447, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2445, ptr %2448, align 8
  %2449 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2447, i32 0, i32 1
  store ptr %2446, ptr %2449, align 8
  %2450 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2447, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2450, align 8
  %2451 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2447, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2451, align 8
  %2452 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2447, align 8
  %2453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2453, i32 0, i32 0
  store ptr @64, ptr %2454, align 8
  %2455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2453, i32 0, i32 1
  store i64 4, ptr %2455, align 4
  %2456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2453, align 8
  %2457 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2458 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2459 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2458, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2456, ptr %2459, align 8
  %2460 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2458, i32 0, i32 1
  store ptr %2457, ptr %2460, align 8
  %2461 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2458, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2461, align 8
  %2462 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2458, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2462, align 8
  %2463 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2458, align 8
  %2464 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2464, i32 0, i32 0
  store ptr @49, ptr %2465, align 8
  %2466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2464, i32 0, i32 1
  store i64 6, ptr %2466, align 4
  %2467 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2464, align 8
  %2468 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2469 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2470 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2469, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2467, ptr %2470, align 8
  %2471 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2469, i32 0, i32 1
  store ptr %2468, ptr %2471, align 8
  %2472 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2469, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2472, align 8
  %2473 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2469, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2473, align 8
  %2474 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2469, align 8
  %2475 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2475, i32 0, i32 0
  store ptr @65, ptr %2476, align 8
  %2477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2475, i32 0, i32 1
  store i64 10, ptr %2477, align 4
  %2478 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2475, align 8
  %2479 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2480 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2480, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2478, ptr %2481, align 8
  %2482 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2480, i32 0, i32 1
  store ptr %2479, ptr %2482, align 8
  %2483 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2480, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2483, align 8
  %2484 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2480, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2484, align 8
  %2485 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2480, align 8
  %2486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2486, i32 0, i32 0
  store ptr @69, ptr %2487, align 8
  %2488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2486, i32 0, i32 1
  store i64 8, ptr %2488, align 4
  %2489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2486, align 8
  %2490 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2491 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2491, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2489, ptr %2492, align 8
  %2493 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2491, i32 0, i32 1
  store ptr %2490, ptr %2493, align 8
  %2494 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2491, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2494, align 8
  %2495 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2491, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2495, align 8
  %2496 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2491, align 8
  %2497 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %2498 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %418, ptr %2498, align 8
  %2499 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %429, ptr %2499, align 8
  %2500 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %480, ptr %2500, align 8
  %2501 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %516, ptr %2501, align 8
  %2502 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %527, ptr %2502, align 8
  %2503 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2364, ptr %2503, align 8
  %2504 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2375, ptr %2504, align 8
  %2505 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2386, ptr %2505, align 8
  %2506 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2397, ptr %2506, align 8
  %2507 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2408, ptr %2507, align 8
  %2508 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2419, ptr %2508, align 8
  %2509 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2430, ptr %2509, align 8
  %2510 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2441, ptr %2510, align 8
  %2511 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2452, ptr %2511, align 8
  %2512 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2463, ptr %2512, align 8
  %2513 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2474, ptr %2513, align 8
  %2514 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2485, ptr %2514, align 8
  %2515 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2497, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2496, ptr %2515, align 8
  %2516 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2516, i32 0, i32 0
  store ptr %2497, ptr %2517, align 8
  %2518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2516, i32 0, i32 1
  store i64 18, ptr %2518, align 4
  %2519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2516, i32 0, i32 2
  store i64 18, ptr %2519, align 4
  %2520 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2516, align 8
  %2521 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2521, i32 0, i32 0
  store ptr @31, ptr %2522, align 8
  %2523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2521, i32 0, i32 1
  store i64 35, ptr %2523, align 4
  %2524 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2521, align 8
  %2525 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2525, i32 0, i32 0
  store ptr @23, ptr %2526, align 8
  %2527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2525, i32 0, i32 1
  store i64 9, ptr %2527, align 4
  %2528 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2525, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %333, %"github.com/goplus/llgo/internal/runtime.String" %2524, %"github.com/goplus/llgo/internal/runtime.String" %2528, ptr %407, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2520)
  br label %_llgo_22

_llgo_103:                                        ; preds = %_llgo_22
  %2529 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %445)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2529)
  store ptr %2529, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_22
  %2530 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %2531 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2532 = icmp eq ptr %2531, null
  br i1 %2532, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %2533 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2534 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2534, i32 0, i32 0
  store ptr %2533, ptr %2535, align 8
  %2536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2534, i32 0, i32 1
  store i64 0, ptr %2536, align 4
  %2537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2534, i32 0, i32 2
  store i64 0, ptr %2537, align 4
  %2538 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2534, align 8
  %2539 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2540 = getelementptr ptr, ptr %2539, i64 0
  store ptr %2530, ptr %2540, align 8
  %2541 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2541, i32 0, i32 0
  store ptr %2539, ptr %2542, align 8
  %2543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2541, i32 0, i32 1
  store i64 1, ptr %2543, align 4
  %2544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2541, i32 0, i32 2
  store i64 1, ptr %2544, align 4
  %2545 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2541, align 8
  %2546 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2538, %"github.com/goplus/llgo/internal/runtime.Slice" %2545, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2546)
  store ptr %2546, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
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
  %2587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2587, i32 0, i32 0
  store ptr @33, ptr %2588, align 8
  %2589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2587, i32 0, i32 1
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
  br label %_llgo_12
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Align"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*MapType).String"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem"(ptr)

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

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*ArrayType).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr)

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
