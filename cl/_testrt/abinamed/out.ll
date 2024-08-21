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
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"p", align 1
@1 = private unnamed_addr constant [1 x i8] c"t", align 1
@2 = private unnamed_addr constant [1 x i8] c"n", align 1
@3 = private unnamed_addr constant [1 x i8] c"a", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [1 x i8] c"T", align 1
@"_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"Size_", align 1
@7 = private unnamed_addr constant [8 x i8] c"PtrBytes", align 1
@8 = private unnamed_addr constant [4 x i8] c"Hash", align 1
@9 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@10 = private unnamed_addr constant [6 x i8] c"Align_", align 1
@11 = private unnamed_addr constant [11 x i8] c"FieldAlign_", align 1
@12 = private unnamed_addr constant [5 x i8] c"Kind_", align 1
@13 = private unnamed_addr constant [5 x i8] c"Equal", align 1
@14 = private unnamed_addr constant [1 x i8] c"f", align 1
@15 = private unnamed_addr constant [4 x i8] c"data", align 1
@16 = private unnamed_addr constant [6 x i8] c"GCData", align 1
@17 = private unnamed_addr constant [4 x i8] c"Str_", align 1
@18 = private unnamed_addr constant [10 x i8] c"PtrToThis_", align 1
@19 = private unnamed_addr constant [5 x i8] c"Align", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
@"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY" = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [4 x i8] c"Type", align 1
@22 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@23 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@24 = private unnamed_addr constant [3 x i8] c"Len", align 1
@25 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.Type" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@27 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw" = linkonce global ptr null, align 8
@28 = private unnamed_addr constant [2 x i8] c"In", align 1
@29 = private unnamed_addr constant [3 x i8] c"Out", align 1
@30 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@32 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4" = linkonce global ptr null, align 8
@33 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@34 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@35 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@36 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.Kind" = linkonce global ptr null, align 8
@_llgo_uint = linkonce global ptr null, align 8
@37 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [35 x i8] c"github.com/goplus/llgo/internal/abi", align 1
@39 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM" = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@40 = private unnamed_addr constant [3 x i8] c"Key", align 1
@41 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@42 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@43 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@44 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@45 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@46 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@47 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@48 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@49 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@50 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@51 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@52 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@53 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@54 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0" = linkonce global ptr null, align 8
@55 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@56 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@57 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@58 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@59 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@60 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg" = linkonce global ptr null, align 8
@"[]_llgo_github.com/goplus/llgo/internal/abi.Method" = linkonce global ptr null, align 8
@61 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.StructType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.MapType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType" = linkonce global ptr null, align 8
@62 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"*_llgo_github.com/goplus/llgo/internal/abi.FuncType" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType" = linkonce global ptr null, align 8
@63 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@64 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@65 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@66 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@67 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@68 = private unnamed_addr constant [13 x i8] c"error field 3", align 1

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
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %28, i64 56)
  %30 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %31)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %32, i32 0, i32 2
  %34 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %33, align 8
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %34, 0
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %34, 1
  %37 = icmp sge i64 0, %36
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %37)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %35, i64 0
  %39 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %38, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %39, ptr %29, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %29, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %43, i32 0, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = icmp ne ptr %41, %45
  br i1 %46, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @63, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 13, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = load ptr, ptr @_llgo_string, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %50, ptr %52, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %51, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr %52, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %56)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %29, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %58)
  %60 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = icmp ne ptr %59, %61
  br i1 %62, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @64, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 18, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %66, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %69, i32 0, i32 0
  store ptr %67, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %69, i32 0, i32 1
  store ptr %68, ptr %71, align 8
  %72 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %69, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %72)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %73 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %73, i64 56)
  %75 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %76 = load ptr, ptr %75, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %76)
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %77, i32 0, i32 2
  %79 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, align 8
  %80 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, 0
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, 1
  %82 = icmp sge i64 1, %81
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %82)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %80, i64 1
  %84 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %83, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %84, ptr %74, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %74, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %88, i32 0, i32 10
  %90 = load ptr, ptr %89, align 8
  %91 = icmp ne ptr %86, %90
  br i1 %91, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @65, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 13, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  %96 = load ptr, ptr @_llgo_string, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %95, ptr %97, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, i32 0, i32 0
  store ptr %96, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, i32 0, i32 1
  store ptr %97, ptr %100, align 8
  %101 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %101)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %74, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %103)
  %105 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %106 = load ptr, ptr %105, align 8
  %107 = icmp ne ptr %104, %106
  br i1 %107, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr @66, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 18, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  %112 = load ptr, ptr @_llgo_string, align 8
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %111, ptr %113, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %114, i32 0, i32 0
  store ptr %112, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %114, i32 0, i32 1
  store ptr %113, ptr %116, align 8
  %117 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %114, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %117)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %118 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  %119 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %118, i64 56)
  %120 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %121 = load ptr, ptr %120, align 8
  %122 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %121)
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %122, i32 0, i32 2
  %124 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %123, align 8
  %125 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %124, 0
  %126 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %124, 1
  %127 = icmp sge i64 2, %126
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %127)
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %125, i64 2
  %129 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %128, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %129, ptr %119, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %119, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %main.eface, ptr %15, i32 0, i32 0
  %133 = load ptr, ptr %132, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %133)
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %134, i32 0, i32 2
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %137 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %136, 0
  %138 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %136, 1
  %139 = icmp sge i64 0, %138
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %139)
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %137, i64 0
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8
  %143 = icmp ne ptr %131, %142
  br i1 %143, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @67, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 13, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = load ptr, ptr @_llgo_string, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %147, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, i32 0, i32 0
  store ptr %148, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, i32 0, i32 1
  store ptr %149, ptr %152, align 8
  %153 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %153)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %154 = alloca %"github.com/goplus/llgo/internal/abi.StructField", align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %154, i64 56)
  %156 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %157 = load ptr, ptr %156, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType"(ptr %157)
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructType", ptr %158, i32 0, i32 2
  %160 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, align 8
  %161 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %160, 0
  %162 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %160, 1
  %163 = icmp sge i64 3, %162
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %163)
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %161, i64 3
  %165 = load %"github.com/goplus/llgo/internal/abi.StructField", ptr %164, align 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %165, ptr %155, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.StructField", ptr %155, i32 0, i32 1
  %167 = load ptr, ptr %166, align 8
  %168 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %167)
  %169 = getelementptr inbounds %main.eface, ptr %8, i32 0, i32 0
  %170 = load ptr, ptr %169, align 8
  %171 = icmp ne ptr %168, %170
  br i1 %171, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @68, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 13, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = load ptr, ptr @_llgo_string, align 8
  %177 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %175, ptr %177, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, i32 0, i32 0
  store ptr %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, i32 0, i32 1
  store ptr %177, ptr %180, align 8
  %181 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %181)
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 48, i64 0, i64 0)
  %1 = load ptr, ptr @_llgo_main.T, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 80, i64 0, i64 18)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 1, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 0, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  %13 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %7, ptr %12, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %11, i1 false)
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr @1, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 1, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 0, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %23 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %17, ptr %22, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %21, i1 false)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 0
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %28, i32 0, i32 1
  store i64 0, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %33 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %27, ptr %32, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %31, i1 false)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr @3, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 1, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 0, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %0)
  %43 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %37, ptr %42, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %41, i1 false)
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 0
  store ptr @4, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 1
  store i64 4, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %49 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %48, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %13, ptr %49, align 8
  %50 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %48, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %23, ptr %50, align 8
  %51 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %48, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %33, ptr %51, align 8
  %52 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %48, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %43, ptr %52, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 0
  store ptr %48, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 1
  store i64 4, ptr %55, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 2
  store i64 4, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %47, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %57)
  store ptr %58, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  %59 = load ptr, ptr @"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE", align 8
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr @4, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 4, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %64, i32 0, i32 0
  store ptr @5, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %64, i32 0, i32 1
  store i64 1, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %64, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %63, %"github.com/goplus/llgo/internal/runtime.String" %67, ptr %59, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %3, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 8, i64 1, i64 0, i64 0)
  %71 = load ptr, ptr @_llgo_Pointer, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %73)
  store ptr %73, ptr @_llgo_Pointer, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %74 = load ptr, ptr @_llgo_Pointer, align 8
  %75 = load ptr, ptr @_llgo_Pointer, align 8
  %76 = load ptr, ptr @_llgo_Pointer, align 8
  %77 = load ptr, ptr @_llgo_bool, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  store ptr %79, ptr @_llgo_bool, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %80 = load ptr, ptr @_llgo_bool, align 8
  %81 = load ptr, ptr @"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @6, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 5, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 0
  store ptr null, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 1
  store i64 0, ptr %89, align 4
  %90 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %87, align 8
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %92 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %86, ptr %91, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %90, i1 false)
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @7, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 8, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 0
  store ptr null, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 1
  store i64 0, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %102 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %96, ptr %101, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %100, i1 false)
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 0
  store ptr @8, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 1
  store i64 4, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %103, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 0
  store ptr null, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 1
  store i64 0, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %107, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %112 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %106, ptr %111, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %110, i1 false)
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
  %121 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %116, ptr %70, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %120, i1 false)
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 0
  store ptr @10, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %122, i32 0, i32 1
  store i64 6, ptr %124, align 4
  %125 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %122, align 8
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr null, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 0, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %131 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %125, ptr %130, i64 21, %"github.com/goplus/llgo/internal/runtime.String" %129, i1 false)
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 0
  store ptr @11, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 1
  store i64 11, ptr %134, align 4
  %135 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %132, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 0
  store ptr null, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 1
  store i64 0, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %136, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %141 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %135, ptr %140, i64 22, %"github.com/goplus/llgo/internal/runtime.String" %139, i1 false)
  %142 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 0
  store ptr @12, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %142, i32 0, i32 1
  store i64 5, ptr %144, align 4
  %145 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %142, align 8
  %146 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %146, i32 0, i32 0
  store ptr null, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %146, i32 0, i32 1
  store i64 0, ptr %148, align 4
  %149 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %146, align 8
  %150 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %151 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %145, ptr %150, i64 23, %"github.com/goplus/llgo/internal/runtime.String" %149, i1 false)
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @13, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 5, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr null, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 0, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @14, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 1, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 0
  store ptr null, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 1
  store i64 0, ptr %166, align 4
  %167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %164, align 8
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %169 = getelementptr ptr, ptr %168, i64 0
  store ptr %74, ptr %169, align 8
  %170 = getelementptr ptr, ptr %168, i64 1
  store ptr %75, ptr %170, align 8
  %171 = getelementptr ptr, ptr %168, i64 2
  store ptr %76, ptr %171, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 0
  store ptr %168, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 1
  store i64 3, ptr %174, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 2
  store i64 3, ptr %175, align 4
  %176 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, align 8
  %177 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %178 = getelementptr ptr, ptr %177, i64 0
  store ptr %80, ptr %178, align 8
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 0
  store ptr %177, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 1
  store i64 1, ptr %181, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 2
  store i64 1, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, align 8
  %184 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %176, %"github.com/goplus/llgo/internal/runtime.Slice" %183, i1 false)
  %185 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %163, ptr %184, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %167, i1 false)
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr @15, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 4, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr null, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 0, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %195 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %189, ptr %194, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %193, i1 false)
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @4, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 4, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %201 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %200, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %185, ptr %201, align 8
  %202 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %200, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %195, ptr %202, align 8
  %203 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, i32 0, i32 0
  store ptr %200, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, i32 0, i32 1
  store i64 2, ptr %205, align 4
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, i32 0, i32 2
  store i64 2, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %199, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %207)
  %209 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %155, ptr %208, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %159, i1 false)
  %210 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 0
  store ptr @16, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %210, i32 0, i32 1
  store i64 6, ptr %212, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %210, align 8
  %214 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 0
  store ptr null, ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 1
  store i64 0, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %214, align 8
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %218)
  %220 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %213, ptr %219, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %217, i1 false)
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @17, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 4, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 0
  store ptr null, ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 1
  store i64 0, ptr %227, align 4
  %228 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %225, align 8
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %230 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %224, ptr %229, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %228, i1 false)
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 0
  store ptr @18, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 1
  store i64 10, ptr %233, align 4
  %234 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %231, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr null, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 0, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %240 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %234, ptr %239, i64 64, %"github.com/goplus/llgo/internal/runtime.String" %238, i1 false)
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 0
  store ptr @4, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 1
  store i64 4, ptr %243, align 4
  %244 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %241, align 8
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %246 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %92, ptr %246, align 8
  %247 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %102, ptr %247, align 8
  %248 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %112, ptr %248, align 8
  %249 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %121, ptr %249, align 8
  %250 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %131, ptr %250, align 8
  %251 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %141, ptr %251, align 8
  %252 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %151, ptr %252, align 8
  %253 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %209, ptr %253, align 8
  %254 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %220, ptr %254, align 8
  %255 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %230, ptr %255, align 8
  %256 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %245, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %240, ptr %256, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 0
  store ptr %245, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 1
  store i64 11, ptr %259, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 2
  store i64 11, ptr %260, align 4
  %261 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, align 8
  %262 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %244, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %261)
  store ptr %262, ptr @"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %263 = load ptr, ptr @"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br i1 %69, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 0
  store ptr @19, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 1
  store i64 5, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %264, align 8
  %268 = load ptr, ptr @_llgo_int, align 8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %_llgo_15, label %_llgo_16

_llgo_14:                                         ; preds = %_llgo_104, %_llgo_12
  ret void

_llgo_15:                                         ; preds = %_llgo_13
  %270 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %270, ptr @_llgo_int, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_13
  %271 = load ptr, ptr @_llgo_int, align 8
  %272 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %273 = icmp eq ptr %272, null
  br i1 %273, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %274 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %275 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 0
  store ptr %274, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 1
  store i64 0, ptr %277, align 4
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, i32 0, i32 2
  store i64 0, ptr %278, align 4
  %279 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %275, align 8
  %280 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %281 = getelementptr ptr, ptr %280, i64 0
  store ptr %271, ptr %281, align 8
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, i32 0, i32 0
  store ptr %280, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, i32 0, i32 1
  store i64 1, ptr %284, align 4
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, i32 0, i32 2
  store i64 1, ptr %285, align 4
  %286 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %282, align 8
  %287 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %279, %"github.com/goplus/llgo/internal/runtime.Slice" %286, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %287)
  store ptr %287, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %288 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %289 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %267, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 1
  store ptr %288, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %289, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %293, align 8
  %294 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %289, align 8
  %295 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %295, i32 0, i32 0
  store ptr @20, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %295, i32 0, i32 1
  store i64 9, ptr %297, align 4
  %298 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %295, align 8
  %299 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 104, i64 0, i64 16)
  %300 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %301 = icmp eq ptr %300, null
  br i1 %301, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %299, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %302 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %303 = icmp eq ptr %302, null
  br i1 %303, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %304 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %304, i32 0, i32 0
  store ptr @21, ptr %305, align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %304, i32 0, i32 1
  store i64 4, ptr %306, align 4
  %307 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %304, align 8
  %308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 0
  store ptr null, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 1
  store i64 0, ptr %310, align 4
  %311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %308, align 8
  %312 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %307, ptr %3, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %311, i1 true)
  %313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 0
  store ptr @22, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 1
  store i64 4, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %313, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr null, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 0, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  %321 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %322 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %316, ptr %321, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %320, i1 false)
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr @23, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 5, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 0
  store ptr null, ptr %328, align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %327, i32 0, i32 1
  store i64 0, ptr %329, align 4
  %330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %327, align 8
  %331 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %332 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %326, ptr %331, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %330, i1 false)
  %333 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 0
  store ptr @24, ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 1
  store i64 3, ptr %335, align 4
  %336 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %333, align 8
  %337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 0
  store ptr null, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 1
  store i64 0, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %337, align 8
  %341 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %342 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %336, ptr %341, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %340, i1 false)
  %343 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 0
  store ptr @4, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 1
  store i64 4, ptr %345, align 4
  %346 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %343, align 8
  %347 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %348 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %347, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %312, ptr %348, align 8
  %349 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %347, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %322, ptr %349, align 8
  %350 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %347, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %332, ptr %350, align 8
  %351 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %347, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %342, ptr %351, align 8
  %352 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, i32 0, i32 0
  store ptr %347, ptr %353, align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, i32 0, i32 1
  store i64 4, ptr %354, align 4
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, i32 0, i32 2
  store i64 4, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %352, align 8
  %357 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %346, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %356)
  store ptr %357, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %358 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %301, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %359 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 0
  store ptr @19, ptr %360, align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 1
  store i64 5, ptr %361, align 4
  %362 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %359, align 8
  %363 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %364 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %364, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %362, ptr %365, align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %364, i32 0, i32 1
  store ptr %363, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %364, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %367, align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %364, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %368, align 8
  %369 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %364, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr @20, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 9, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  %374 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %375 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %375, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %373, ptr %376, align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %375, i32 0, i32 1
  store ptr %374, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %375, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %378, align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %375, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %379, align 8
  %380 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %375, align 8
  %381 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 0
  store ptr @25, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 1
  store i64 6, ptr %383, align 4
  %384 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %381, align 8
  %385 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %386 = icmp eq ptr %385, null
  br i1 %386, label %_llgo_25, label %_llgo_26

_llgo_24:                                         ; preds = %_llgo_100, %_llgo_22
  %387 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %388 = icmp eq ptr %387, null
  br i1 %388, label %_llgo_101, label %_llgo_102

_llgo_25:                                         ; preds = %_llgo_23
  %389 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %389)
  store ptr %389, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_23
  %390 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %391 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %393 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %394 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %394, i32 0, i32 0
  store ptr %393, ptr %395, align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %394, i32 0, i32 1
  store i64 0, ptr %396, align 4
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %394, i32 0, i32 2
  store i64 0, ptr %397, align 4
  %398 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %394, align 8
  %399 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %400 = getelementptr ptr, ptr %399, i64 0
  store ptr %390, ptr %400, align 8
  %401 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, i32 0, i32 0
  store ptr %399, ptr %402, align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, i32 0, i32 1
  store i64 1, ptr %403, align 4
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, i32 0, i32 2
  store i64 1, ptr %404, align 4
  %405 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %401, align 8
  %406 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %398, %"github.com/goplus/llgo/internal/runtime.Slice" %405, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %406)
  store ptr %406, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %407 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %408 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %384, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 1
  store ptr %407, ptr %410, align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %408, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %412, align 8
  %413 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %408, align 8
  %414 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %414, i32 0, i32 0
  store ptr @26, ptr %415, align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %414, i32 0, i32 1
  store i64 10, ptr %416, align 4
  %417 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %414, align 8
  %418 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %419 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %419, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %417, ptr %420, align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %419, i32 0, i32 1
  store ptr %418, ptr %421, align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %419, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %419, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %423, align 8
  %424 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %419, align 8
  %425 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 0
  store ptr @27, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 1
  store i64 8, ptr %427, align 4
  %428 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %425, align 8
  %429 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 128, i64 0, i64 19)
  %430 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %431 = icmp eq ptr %430, null
  br i1 %431, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  store ptr %429, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %432 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
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
  %442 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %437, ptr %3, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %441, i1 true)
  %443 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %443, i32 0, i32 0
  store ptr @28, ptr %444, align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %443, i32 0, i32 1
  store i64 2, ptr %445, align 4
  %446 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %443, align 8
  %447 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %447, i32 0, i32 0
  store ptr null, ptr %448, align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %447, i32 0, i32 1
  store i64 0, ptr %449, align 4
  %450 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %447, align 8
  %451 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %452 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %451)
  %453 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %446, ptr %452, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %450, i1 false)
  %454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 0
  store ptr @29, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 1
  store i64 3, ptr %456, align 4
  %457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %454, align 8
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr null, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 0, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  %462 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %463 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %462)
  %464 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %457, ptr %463, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %461, i1 false)
  %465 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %465, i32 0, i32 0
  store ptr @4, ptr %466, align 8
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %465, i32 0, i32 1
  store i64 4, ptr %467, align 4
  %468 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %465, align 8
  %469 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %470 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %469, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %442, ptr %470, align 8
  %471 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %469, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %453, ptr %471, align 8
  %472 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %469, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %464, ptr %472, align 8
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 0
  store ptr %469, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 1
  store i64 3, ptr %475, align 4
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 2
  store i64 3, ptr %476, align 4
  %477 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, align 8
  %478 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %468, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %477)
  store ptr %478, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %479 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %431, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %480 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %480, i32 0, i32 0
  store ptr @19, ptr %481, align 8
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %480, i32 0, i32 1
  store i64 5, ptr %482, align 4
  %483 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %480, align 8
  %484 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %485 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %485, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %483, ptr %486, align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %485, i32 0, i32 1
  store ptr %484, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %485, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %488, align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %485, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %489, align 8
  %490 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %485, align 8
  %491 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 0
  store ptr @20, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 1
  store i64 9, ptr %493, align 4
  %494 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %491, align 8
  %495 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %496 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %496, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %494, ptr %497, align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %496, i32 0, i32 1
  store ptr %495, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %496, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %499, align 8
  %500 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %496, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %500, align 8
  %501 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %496, align 8
  %502 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %502, i32 0, i32 0
  store ptr @25, ptr %503, align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %502, i32 0, i32 1
  store i64 6, ptr %504, align 4
  %505 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %502, align 8
  %506 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %507 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %507, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %505, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %507, i32 0, i32 1
  store ptr %506, ptr %509, align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %507, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %510, align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %507, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %511, align 8
  %512 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %507, align 8
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 0
  store ptr @22, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 1
  store i64 4, ptr %515, align 4
  %516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %513, align 8
  %517 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %518 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %518, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %516, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %518, i32 0, i32 1
  store ptr %517, ptr %520, align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %518, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %521, align 8
  %522 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %518, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %522, align 8
  %523 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %518, align 8
  %524 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %524, i32 0, i32 0
  store ptr @26, ptr %525, align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %524, i32 0, i32 1
  store i64 10, ptr %526, align 4
  %527 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %524, align 8
  %528 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %529 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %529, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %527, ptr %530, align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %529, i32 0, i32 1
  store ptr %528, ptr %531, align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %529, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %532, align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %529, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %533, align 8
  %534 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %529, align 8
  %535 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %535, i32 0, i32 0
  store ptr @27, ptr %536, align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %535, i32 0, i32 1
  store i64 8, ptr %537, align 4
  %538 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %535, align 8
  %539 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %540 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %540, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %538, ptr %541, align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %540, i32 0, i32 1
  store ptr %539, ptr %542, align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %540, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %543, align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %540, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %544, align 8
  %545 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %540, align 8
  %546 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %546, i32 0, i32 0
  store ptr @30, ptr %547, align 8
  %548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %546, i32 0, i32 1
  store i64 7, ptr %548, align 4
  %549 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %546, align 8
  %550 = load ptr, ptr @_llgo_bool, align 8
  %551 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %552 = icmp eq ptr %551, null
  br i1 %552, label %_llgo_35, label %_llgo_36

_llgo_34:                                         ; preds = %_llgo_96, %_llgo_32
  %553 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %554 = icmp eq ptr %553, null
  br i1 %554, label %_llgo_97, label %_llgo_98

_llgo_35:                                         ; preds = %_llgo_33
  %555 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %556 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, i32 0, i32 0
  store ptr %555, ptr %557, align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, i32 0, i32 1
  store i64 0, ptr %558, align 4
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, i32 0, i32 2
  store i64 0, ptr %559, align 4
  %560 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, align 8
  %561 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %562 = getelementptr ptr, ptr %561, i64 0
  store ptr %550, ptr %562, align 8
  %563 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 0
  store ptr %561, ptr %564, align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 1
  store i64 1, ptr %565, align 4
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 2
  store i64 1, ptr %566, align 4
  %567 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, align 8
  %568 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %560, %"github.com/goplus/llgo/internal/runtime.Slice" %567, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %568)
  store ptr %568, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_33
  %569 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %570 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %549, ptr %571, align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 1
  store ptr %569, ptr %572, align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %573, align 8
  %574 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %574, align 8
  %575 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %570, align 8
  %576 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %576, i32 0, i32 0
  store ptr @31, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %576, i32 0, i32 1
  store i64 10, ptr %578, align 4
  %579 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %576, align 8
  %580 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %581 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %579, ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 1
  store ptr %580, ptr %583, align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %584, align 8
  %585 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %585, align 8
  %586 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %581, align 8
  %587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %587, i32 0, i32 0
  store ptr @32, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %587, i32 0, i32 1
  store i64 13, ptr %589, align 4
  %590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %587, align 8
  %591 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 120, i64 0, i64 18)
  %592 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %593 = icmp eq ptr %592, null
  br i1 %593, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %591, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %594 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 24, i64 0, i64 3)
  %595 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %597 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %597, i32 0, i32 0
  store ptr @21, ptr %598, align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %597, i32 0, i32 1
  store i64 4, ptr %599, align 4
  %600 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %597, align 8
  %601 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %601, i32 0, i32 0
  store ptr null, ptr %602, align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %601, i32 0, i32 1
  store i64 0, ptr %603, align 4
  %604 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %601, align 8
  %605 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %600, ptr %3, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %604, i1 true)
  %606 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 0
  store ptr @33, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 1
  store i64 8, ptr %608, align 4
  %609 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %606, align 8
  %610 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %610, i32 0, i32 0
  store ptr null, ptr %611, align 8
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %610, i32 0, i32 1
  store i64 0, ptr %612, align 4
  %613 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %610, align 8
  %614 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %615 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %609, ptr %614, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %613, i1 false)
  %616 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %616, i32 0, i32 0
  store ptr @34, ptr %617, align 8
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %616, i32 0, i32 1
  store i64 7, ptr %618, align 4
  %619 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %616, align 8
  %620 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %621 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %620, i32 0, i32 0
  store ptr null, ptr %621, align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %620, i32 0, i32 1
  store i64 0, ptr %622, align 4
  %623 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %620, align 8
  %624 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %594)
  %625 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %619, ptr %624, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %623, i1 false)
  %626 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %627 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %626, i32 0, i32 0
  store ptr @4, ptr %627, align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %626, i32 0, i32 1
  store i64 4, ptr %628, align 4
  %629 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %626, align 8
  %630 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %631 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %630, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %605, ptr %631, align 8
  %632 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %630, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %615, ptr %632, align 8
  %633 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %630, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %625, ptr %633, align 8
  %634 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %634, i32 0, i32 0
  store ptr %630, ptr %635, align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %634, i32 0, i32 1
  store i64 3, ptr %636, align 4
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %634, i32 0, i32 2
  store i64 3, ptr %637, align 4
  %638 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %634, align 8
  %639 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %629, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %638)
  store ptr %639, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %640 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %593, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %641 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %642 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %641, i32 0, i32 0
  store ptr @19, ptr %642, align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %641, i32 0, i32 1
  store i64 5, ptr %643, align 4
  %644 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %641, align 8
  %645 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %646 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %644, ptr %647, align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 1
  store ptr %645, ptr %648, align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %649, align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %646, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %650, align 8
  %651 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %646, align 8
  %652 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %652, i32 0, i32 0
  store ptr @20, ptr %653, align 8
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %652, i32 0, i32 1
  store i64 9, ptr %654, align 4
  %655 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %652, align 8
  %656 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %657 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %655, ptr %658, align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 1
  store ptr %656, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %660, align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %661, align 8
  %662 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %657, align 8
  %663 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %663, i32 0, i32 0
  store ptr @25, ptr %664, align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %663, i32 0, i32 1
  store i64 6, ptr %665, align 4
  %666 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %663, align 8
  %667 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %668 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %669 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %668, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %666, ptr %669, align 8
  %670 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %668, i32 0, i32 1
  store ptr %667, ptr %670, align 8
  %671 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %668, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %671, align 8
  %672 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %668, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %672, align 8
  %673 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %668, align 8
  %674 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %674, i32 0, i32 0
  store ptr @22, ptr %675, align 8
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %674, i32 0, i32 1
  store i64 4, ptr %676, align 4
  %677 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %674, align 8
  %678 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %679 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %679, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %677, ptr %680, align 8
  %681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %679, i32 0, i32 1
  store ptr %678, ptr %681, align 8
  %682 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %679, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %682, align 8
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %679, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %683, align 8
  %684 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %679, align 8
  %685 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %685, i32 0, i32 0
  store ptr @26, ptr %686, align 8
  %687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %685, i32 0, i32 1
  store i64 10, ptr %687, align 4
  %688 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %685, align 8
  %689 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %690 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %688, ptr %691, align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 1
  store ptr %689, ptr %692, align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %693, align 8
  %694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %694, align 8
  %695 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %690, align 8
  %696 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %696, i32 0, i32 0
  store ptr @27, ptr %697, align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %696, i32 0, i32 1
  store i64 8, ptr %698, align 4
  %699 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %696, align 8
  %700 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %701 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %702 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %701, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %699, ptr %702, align 8
  %703 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %701, i32 0, i32 1
  store ptr %700, ptr %703, align 8
  %704 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %701, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %704, align 8
  %705 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %701, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %705, align 8
  %706 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %701, align 8
  %707 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %708 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %707, i32 0, i32 0
  store ptr @30, ptr %708, align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %707, i32 0, i32 1
  store i64 7, ptr %709, align 4
  %710 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %707, align 8
  %711 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %712 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %710, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 1
  store ptr %711, ptr %714, align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %715, align 8
  %716 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %716, align 8
  %717 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %712, align 8
  %718 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %718, i32 0, i32 0
  store ptr @31, ptr %719, align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %718, i32 0, i32 1
  store i64 10, ptr %720, align 4
  %721 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %718, align 8
  %722 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %723 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %721, ptr %724, align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 1
  store ptr %722, ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %727, align 8
  %728 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %723, align 8
  %729 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 0
  store ptr @32, ptr %730, align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 1
  store i64 13, ptr %731, align 4
  %732 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %729, align 8
  %733 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %734 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %732, ptr %735, align 8
  %736 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i32 0, i32 1
  store ptr %733, ptr %736, align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %737, align 8
  %738 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %734, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %738, align 8
  %739 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %734, align 8
  %740 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %740, i32 0, i32 0
  store ptr @35, ptr %741, align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %740, i32 0, i32 1
  store i64 13, ptr %742, align 4
  %743 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %740, align 8
  %744 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %745 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %745, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %743, ptr %746, align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %745, i32 0, i32 1
  store ptr %744, ptr %747, align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %745, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %748, align 8
  %749 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %745, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %749, align 8
  %750 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %745, align 8
  %751 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %751, i32 0, i32 0
  store ptr @36, ptr %752, align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %751, i32 0, i32 1
  store i64 4, ptr %753, align 4
  %754 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %751, align 8
  %755 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 7, i64 8, i64 1, i64 1)
  %756 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %757 = icmp eq ptr %756, null
  br i1 %757, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_92, %_llgo_40
  %758 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %759 = icmp eq ptr %758, null
  br i1 %759, label %_llgo_93, label %_llgo_94

_llgo_43:                                         ; preds = %_llgo_41
  store ptr %755, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %760 = load ptr, ptr @_llgo_uint, align 8
  %761 = icmp eq ptr %760, null
  br i1 %761, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %762 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %762, ptr @_llgo_uint, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %763 = load ptr, ptr @_llgo_uint, align 8
  br i1 %757, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %764 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %764, i32 0, i32 0
  store ptr @37, ptr %765, align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %764, i32 0, i32 1
  store i64 6, ptr %766, align 4
  %767 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %764, align 8
  %768 = load ptr, ptr @_llgo_string, align 8
  %769 = icmp eq ptr %768, null
  br i1 %769, label %_llgo_49, label %_llgo_50

_llgo_48:                                         ; preds = %_llgo_52, %_llgo_46
  %770 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %771 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %772 = icmp eq ptr %771, null
  br i1 %772, label %_llgo_53, label %_llgo_54

_llgo_49:                                         ; preds = %_llgo_47
  %773 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %773, ptr @_llgo_string, align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_47
  %774 = load ptr, ptr @_llgo_string, align 8
  %775 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %776 = icmp eq ptr %775, null
  br i1 %776, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %777 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %778 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, i32 0, i32 0
  store ptr %777, ptr %779, align 8
  %780 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, i32 0, i32 1
  store i64 0, ptr %780, align 4
  %781 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, i32 0, i32 2
  store i64 0, ptr %781, align 4
  %782 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, align 8
  %783 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %784 = getelementptr ptr, ptr %783, i64 0
  store ptr %774, ptr %784, align 8
  %785 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, i32 0, i32 0
  store ptr %783, ptr %786, align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, i32 0, i32 1
  store i64 1, ptr %787, align 4
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, i32 0, i32 2
  store i64 1, ptr %788, align 4
  %789 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %785, align 8
  %790 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %782, %"github.com/goplus/llgo/internal/runtime.Slice" %789, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %790)
  store ptr %790, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %791 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %792 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %792, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %767, ptr %793, align 8
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %792, i32 0, i32 1
  store ptr %791, ptr %794, align 8
  %795 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %792, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %795, align 8
  %796 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %792, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %796, align 8
  %797 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %792, align 8
  %798 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %767, ptr %799, align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 1
  store ptr %791, ptr %800, align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %801, align 8
  %802 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %798, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %802, align 8
  %803 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %798, align 8
  %804 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %805 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %804, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %803, ptr %805, align 8
  %806 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %806, i32 0, i32 0
  store ptr %804, ptr %807, align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %806, i32 0, i32 1
  store i64 1, ptr %808, align 4
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %806, i32 0, i32 2
  store i64 1, ptr %809, align 4
  %810 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %806, align 8
  %811 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %812 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %811, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %797, ptr %812, align 8
  %813 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %813, i32 0, i32 0
  store ptr %811, ptr %814, align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %813, i32 0, i32 1
  store i64 1, ptr %815, align 4
  %816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %813, i32 0, i32 2
  store i64 1, ptr %816, align 4
  %817 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %813, align 8
  %818 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 0
  store ptr @38, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 1
  store i64 35, ptr %820, align 4
  %821 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %818, align 8
  %822 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %822, i32 0, i32 0
  store ptr @36, ptr %823, align 8
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %822, i32 0, i32 1
  store i64 4, ptr %824, align 4
  %825 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %822, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %755, %"github.com/goplus/llgo/internal/runtime.String" %821, %"github.com/goplus/llgo/internal/runtime.String" %825, ptr %763, %"github.com/goplus/llgo/internal/runtime.Slice" %810, %"github.com/goplus/llgo/internal/runtime.Slice" %817)
  br label %_llgo_48

_llgo_53:                                         ; preds = %_llgo_48
  %826 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %827 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %827, i32 0, i32 0
  store ptr %826, ptr %828, align 8
  %829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %827, i32 0, i32 1
  store i64 0, ptr %829, align 4
  %830 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %827, i32 0, i32 2
  store i64 0, ptr %830, align 4
  %831 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %827, align 8
  %832 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %833 = getelementptr ptr, ptr %832, i64 0
  store ptr %770, ptr %833, align 8
  %834 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, i32 0, i32 0
  store ptr %832, ptr %835, align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, i32 0, i32 1
  store i64 1, ptr %836, align 4
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, i32 0, i32 2
  store i64 1, ptr %837, align 4
  %838 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, align 8
  %839 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %831, %"github.com/goplus/llgo/internal/runtime.Slice" %838, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %839)
  store ptr %839, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_48
  %840 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %841 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %754, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 1
  store ptr %840, ptr %843, align 8
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %844, align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %841, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %845, align 8
  %846 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %841, align 8
  %847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 0
  store ptr @24, ptr %848, align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 1
  store i64 3, ptr %849, align 4
  %850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %847, align 8
  %851 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %852 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %853 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %850, ptr %853, align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 1
  store ptr %851, ptr %854, align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %855, align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %852, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %856, align 8
  %857 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %852, align 8
  %858 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %858, i32 0, i32 0
  store ptr @39, ptr %859, align 8
  %860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %858, i32 0, i32 1
  store i64 7, ptr %860, align 4
  %861 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %858, align 8
  %862 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 136, i64 0, i64 22)
  %863 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %864 = icmp eq ptr %863, null
  br i1 %864, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  store ptr %862, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %865 = load ptr, ptr @_llgo_Pointer, align 8
  %866 = load ptr, ptr @_llgo_Pointer, align 8
  %867 = load ptr, ptr @_llgo_uintptr, align 8
  %868 = icmp eq ptr %867, null
  br i1 %868, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %869 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %869, ptr @_llgo_uintptr, align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %870 = load ptr, ptr @_llgo_uintptr, align 8
  %871 = load ptr, ptr @_llgo_uintptr, align 8
  %872 = load ptr, ptr @"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %873 = icmp eq ptr %872, null
  br i1 %873, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %874 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 0
  store ptr @21, ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 1
  store i64 4, ptr %876, align 4
  %877 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %874, align 8
  %878 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %878, i32 0, i32 0
  store ptr null, ptr %879, align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %878, i32 0, i32 1
  store i64 0, ptr %880, align 4
  %881 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %878, align 8
  %882 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %877, ptr %3, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %881, i1 true)
  %883 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %883, i32 0, i32 0
  store ptr @40, ptr %884, align 8
  %885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %883, i32 0, i32 1
  store i64 3, ptr %885, align 4
  %886 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %883, align 8
  %887 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %887, i32 0, i32 0
  store ptr null, ptr %888, align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %887, i32 0, i32 1
  store i64 0, ptr %889, align 4
  %890 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %887, align 8
  %891 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %892 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %886, ptr %891, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %890, i1 false)
  %893 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 0
  store ptr @22, ptr %894, align 8
  %895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 1
  store i64 4, ptr %895, align 4
  %896 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %893, align 8
  %897 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %897, i32 0, i32 0
  store ptr null, ptr %898, align 8
  %899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %897, i32 0, i32 1
  store i64 0, ptr %899, align 4
  %900 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %897, align 8
  %901 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %902 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %896, ptr %901, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %900, i1 false)
  %903 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %903, i32 0, i32 0
  store ptr @41, ptr %904, align 8
  %905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %903, i32 0, i32 1
  store i64 6, ptr %905, align 4
  %906 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %903, align 8
  %907 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %907, i32 0, i32 0
  store ptr null, ptr %908, align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %907, i32 0, i32 1
  store i64 0, ptr %909, align 4
  %910 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %907, align 8
  %911 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %3)
  %912 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %906, ptr %911, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %910, i1 false)
  %913 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %913, i32 0, i32 0
  store ptr @42, ptr %914, align 8
  %915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %913, i32 0, i32 1
  store i64 6, ptr %915, align 4
  %916 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %913, align 8
  %917 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %917, i32 0, i32 0
  store ptr null, ptr %918, align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %917, i32 0, i32 1
  store i64 0, ptr %919, align 4
  %920 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %917, align 8
  %921 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %921, i32 0, i32 0
  store ptr @14, ptr %922, align 8
  %923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %921, i32 0, i32 1
  store i64 1, ptr %923, align 4
  %924 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %921, align 8
  %925 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %925, i32 0, i32 0
  store ptr null, ptr %926, align 8
  %927 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %925, i32 0, i32 1
  store i64 0, ptr %927, align 4
  %928 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %925, align 8
  %929 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %930 = getelementptr ptr, ptr %929, i64 0
  store ptr %865, ptr %930, align 8
  %931 = getelementptr ptr, ptr %929, i64 1
  store ptr %866, ptr %931, align 8
  %932 = getelementptr ptr, ptr %929, i64 2
  store ptr %870, ptr %932, align 8
  %933 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, i32 0, i32 0
  store ptr %929, ptr %934, align 8
  %935 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, i32 0, i32 1
  store i64 3, ptr %935, align 4
  %936 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, i32 0, i32 2
  store i64 3, ptr %936, align 4
  %937 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %933, align 8
  %938 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %939 = getelementptr ptr, ptr %938, i64 0
  store ptr %871, ptr %939, align 8
  %940 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, i32 0, i32 0
  store ptr %938, ptr %941, align 8
  %942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, i32 0, i32 1
  store i64 1, ptr %942, align 4
  %943 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, i32 0, i32 2
  store i64 1, ptr %943, align 4
  %944 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %940, align 8
  %945 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %937, %"github.com/goplus/llgo/internal/runtime.Slice" %944, i1 false)
  %946 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %924, ptr %945, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %928, i1 false)
  %947 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %948 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %947, i32 0, i32 0
  store ptr @15, ptr %948, align 8
  %949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %947, i32 0, i32 1
  store i64 4, ptr %949, align 4
  %950 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %947, align 8
  %951 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %952 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %951, i32 0, i32 0
  store ptr null, ptr %952, align 8
  %953 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %951, i32 0, i32 1
  store i64 0, ptr %953, align 4
  %954 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %951, align 8
  %955 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %956 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %950, ptr %955, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %954, i1 false)
  %957 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %958 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %957, i32 0, i32 0
  store ptr @4, ptr %958, align 8
  %959 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %957, i32 0, i32 1
  store i64 4, ptr %959, align 4
  %960 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %957, align 8
  %961 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %962 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %961, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %946, ptr %962, align 8
  %963 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %961, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %956, ptr %963, align 8
  %964 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %964, i32 0, i32 0
  store ptr %961, ptr %965, align 8
  %966 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %964, i32 0, i32 1
  store i64 2, ptr %966, align 4
  %967 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %964, i32 0, i32 2
  store i64 2, ptr %967, align 4
  %968 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %964, align 8
  %969 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %960, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %968)
  %970 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %916, ptr %969, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %920, i1 false)
  %971 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %972 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %971, i32 0, i32 0
  store ptr @43, ptr %972, align 8
  %973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %971, i32 0, i32 1
  store i64 7, ptr %973, align 4
  %974 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %971, align 8
  %975 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %976 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %975, i32 0, i32 0
  store ptr null, ptr %976, align 8
  %977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %975, i32 0, i32 1
  store i64 0, ptr %977, align 4
  %978 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %975, align 8
  %979 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %980 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %974, ptr %979, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %978, i1 false)
  %981 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %982 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %981, i32 0, i32 0
  store ptr @44, ptr %982, align 8
  %983 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %981, i32 0, i32 1
  store i64 9, ptr %983, align 4
  %984 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %981, align 8
  %985 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %986 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %985, i32 0, i32 0
  store ptr null, ptr %986, align 8
  %987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %985, i32 0, i32 1
  store i64 0, ptr %987, align 4
  %988 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %985, align 8
  %989 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %990 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %984, ptr %989, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %988, i1 false)
  %991 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %992 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %991, i32 0, i32 0
  store ptr @45, ptr %992, align 8
  %993 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %991, i32 0, i32 1
  store i64 10, ptr %993, align 4
  %994 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %991, align 8
  %995 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %995, i32 0, i32 0
  store ptr null, ptr %996, align 8
  %997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %995, i32 0, i32 1
  store i64 0, ptr %997, align 4
  %998 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %995, align 8
  %999 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1000 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %994, ptr %999, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %998, i1 false)
  %1001 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1001, i32 0, i32 0
  store ptr @46, ptr %1002, align 8
  %1003 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1001, i32 0, i32 1
  store i64 5, ptr %1003, align 4
  %1004 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1001, align 8
  %1005 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1005, i32 0, i32 0
  store ptr null, ptr %1006, align 8
  %1007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1005, i32 0, i32 1
  store i64 0, ptr %1007, align 4
  %1008 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1005, align 8
  %1009 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1010 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1004, ptr %1009, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %1008, i1 false)
  %1011 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1012 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1011, i32 0, i32 0
  store ptr @4, ptr %1012, align 8
  %1013 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1011, i32 0, i32 1
  store i64 4, ptr %1013, align 4
  %1014 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1011, align 8
  %1015 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %1016 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %882, ptr %1016, align 8
  %1017 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %892, ptr %1017, align 8
  %1018 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %902, ptr %1018, align 8
  %1019 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %912, ptr %1019, align 8
  %1020 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %970, ptr %1020, align 8
  %1021 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %980, ptr %1021, align 8
  %1022 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %990, ptr %1022, align 8
  %1023 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %1000, ptr %1023, align 8
  %1024 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1015, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %1010, ptr %1024, align 8
  %1025 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1026 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, i32 0, i32 0
  store ptr %1015, ptr %1026, align 8
  %1027 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, i32 0, i32 1
  store i64 9, ptr %1027, align 4
  %1028 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, i32 0, i32 2
  store i64 9, ptr %1028, align 4
  %1029 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1025, align 8
  %1030 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1014, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %1029)
  store ptr %1030, ptr @"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %1031 = load ptr, ptr @"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %864, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %1032 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1033 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1032, i32 0, i32 0
  store ptr @19, ptr %1033, align 8
  %1034 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1032, i32 0, i32 1
  store i64 5, ptr %1034, align 4
  %1035 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1032, align 8
  %1036 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1037 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1038 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1037, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1035, ptr %1038, align 8
  %1039 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1037, i32 0, i32 1
  store ptr %1036, ptr %1039, align 8
  %1040 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1037, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1040, align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1037, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1041, align 8
  %1042 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1037, align 8
  %1043 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1044 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1043, i32 0, i32 0
  store ptr @20, ptr %1044, align 8
  %1045 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1043, i32 0, i32 1
  store i64 9, ptr %1045, align 4
  %1046 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1043, align 8
  %1047 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1048 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1049 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1048, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1046, ptr %1049, align 8
  %1050 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1048, i32 0, i32 1
  store ptr %1047, ptr %1050, align 8
  %1051 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1048, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1051, align 8
  %1052 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1048, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1052, align 8
  %1053 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1048, align 8
  %1054 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1055 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1054, i32 0, i32 0
  store ptr @25, ptr %1055, align 8
  %1056 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1054, i32 0, i32 1
  store i64 6, ptr %1056, align 4
  %1057 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1054, align 8
  %1058 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1059 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1060 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1059, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1057, ptr %1060, align 8
  %1061 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1059, i32 0, i32 1
  store ptr %1058, ptr %1061, align 8
  %1062 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1059, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1062, align 8
  %1063 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1059, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1063, align 8
  %1064 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1059, align 8
  %1065 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1066 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1065, i32 0, i32 0
  store ptr @26, ptr %1066, align 8
  %1067 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1065, i32 0, i32 1
  store i64 10, ptr %1067, align 4
  %1068 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1065, align 8
  %1069 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1070 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1070, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1068, ptr %1071, align 8
  %1072 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1070, i32 0, i32 1
  store ptr %1069, ptr %1072, align 8
  %1073 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1070, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1073, align 8
  %1074 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1070, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1074, align 8
  %1075 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1070, align 8
  %1076 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1077 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1076, i32 0, i32 0
  store ptr @27, ptr %1077, align 8
  %1078 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1076, i32 0, i32 1
  store i64 8, ptr %1078, align 4
  %1079 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1076, align 8
  %1080 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1081 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1079, ptr %1082, align 8
  %1083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 1
  store ptr %1080, ptr %1083, align 8
  %1084 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1084, align 8
  %1085 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1085, align 8
  %1086 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1081, align 8
  %1087 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1088 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, i32 0, i32 0
  store ptr @30, ptr %1088, align 8
  %1089 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, i32 0, i32 1
  store i64 7, ptr %1089, align 4
  %1090 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1087, align 8
  %1091 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1092 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1090, ptr %1093, align 8
  %1094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 1
  store ptr %1091, ptr %1094, align 8
  %1095 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1095, align 8
  %1096 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1096, align 8
  %1097 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1092, align 8
  %1098 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1099 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1098, i32 0, i32 0
  store ptr @47, ptr %1099, align 8
  %1100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1098, i32 0, i32 1
  store i64 14, ptr %1100, align 4
  %1101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1098, align 8
  %1102 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1103 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1101, ptr %1104, align 8
  %1105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 1
  store ptr %1102, ptr %1105, align 8
  %1106 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1106, align 8
  %1107 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1107, align 8
  %1108 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1103, align 8
  %1109 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, i32 0, i32 0
  store ptr @31, ptr %1110, align 8
  %1111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, i32 0, i32 1
  store i64 10, ptr %1111, align 4
  %1112 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1109, align 8
  %1113 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1114 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1114, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1112, ptr %1115, align 8
  %1116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1114, i32 0, i32 1
  store ptr %1113, ptr %1116, align 8
  %1117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1114, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1117, align 8
  %1118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1114, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1118, align 8
  %1119 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1114, align 8
  %1120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1120, i32 0, i32 0
  store ptr @48, ptr %1121, align 8
  %1122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1120, i32 0, i32 1
  store i64 12, ptr %1122, align 4
  %1123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1120, align 8
  %1124 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1125 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1125, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1123, ptr %1126, align 8
  %1127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1125, i32 0, i32 1
  store ptr %1124, ptr %1127, align 8
  %1128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1125, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1128, align 8
  %1129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1125, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1129, align 8
  %1130 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1125, align 8
  %1131 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1131, i32 0, i32 0
  store ptr @49, ptr %1132, align 8
  %1133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1131, i32 0, i32 1
  store i64 11, ptr %1133, align 4
  %1134 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1131, align 8
  %1135 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1136 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1136, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1134, ptr %1137, align 8
  %1138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1136, i32 0, i32 1
  store ptr %1135, ptr %1138, align 8
  %1139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1136, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1139, align 8
  %1140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1136, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1140, align 8
  %1141 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1136, align 8
  %1142 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1142, i32 0, i32 0
  store ptr @32, ptr %1143, align 8
  %1144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1142, i32 0, i32 1
  store i64 13, ptr %1144, align 4
  %1145 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1142, align 8
  %1146 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1147 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1147, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1145, ptr %1148, align 8
  %1149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1147, i32 0, i32 1
  store ptr %1146, ptr %1149, align 8
  %1150 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1147, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1150, align 8
  %1151 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1147, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1151, align 8
  %1152 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1147, align 8
  %1153 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1153, i32 0, i32 0
  store ptr @35, ptr %1154, align 8
  %1155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1153, i32 0, i32 1
  store i64 13, ptr %1155, align 4
  %1156 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1153, align 8
  %1157 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1158 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1158, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1156, ptr %1159, align 8
  %1160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1158, i32 0, i32 1
  store ptr %1157, ptr %1160, align 8
  %1161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1158, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1161, align 8
  %1162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1158, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1162, align 8
  %1163 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1158, align 8
  %1164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1164, i32 0, i32 0
  store ptr @36, ptr %1165, align 8
  %1166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1164, i32 0, i32 1
  store i64 4, ptr %1166, align 4
  %1167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1164, align 8
  %1168 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1169 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1169, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1167, ptr %1170, align 8
  %1171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1169, i32 0, i32 1
  store ptr %1168, ptr %1171, align 8
  %1172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1169, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1172, align 8
  %1173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1169, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1173, align 8
  %1174 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1169, align 8
  %1175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, i32 0, i32 0
  store ptr @24, ptr %1176, align 8
  %1177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, i32 0, i32 1
  store i64 3, ptr %1177, align 4
  %1178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1175, align 8
  %1179 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1180 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1180, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1178, ptr %1181, align 8
  %1182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1180, i32 0, i32 1
  store ptr %1179, ptr %1182, align 8
  %1183 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1180, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1183, align 8
  %1184 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1180, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1184, align 8
  %1185 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1180, align 8
  %1186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1186, i32 0, i32 0
  store ptr @39, ptr %1187, align 8
  %1188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1186, i32 0, i32 1
  store i64 7, ptr %1188, align 4
  %1189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1186, align 8
  %1190 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1191 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1191, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1189, ptr %1192, align 8
  %1193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1191, i32 0, i32 1
  store ptr %1190, ptr %1193, align 8
  %1194 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1191, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1194, align 8
  %1195 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1191, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1195, align 8
  %1196 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1191, align 8
  %1197 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1197, i32 0, i32 0
  store ptr @50, ptr %1198, align 8
  %1199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1197, i32 0, i32 1
  store i64 13, ptr %1199, align 4
  %1200 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1197, align 8
  %1201 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1202 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1202, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1200, ptr %1203, align 8
  %1204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1202, i32 0, i32 1
  store ptr %1201, ptr %1204, align 8
  %1205 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1202, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1205, align 8
  %1206 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1202, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1206, align 8
  %1207 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1202, align 8
  %1208 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1208, i32 0, i32 0
  store ptr @51, ptr %1209, align 8
  %1210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1208, i32 0, i32 1
  store i64 8, ptr %1210, align 4
  %1211 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1208, align 8
  %1212 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1213 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1213, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1211, ptr %1214, align 8
  %1215 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1213, i32 0, i32 1
  store ptr %1212, ptr %1215, align 8
  %1216 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1213, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1216, align 8
  %1217 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1213, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1217, align 8
  %1218 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1213, align 8
  %1219 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1219, i32 0, i32 0
  store ptr @52, ptr %1220, align 8
  %1221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1219, i32 0, i32 1
  store i64 12, ptr %1221, align 4
  %1222 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1219, align 8
  %1223 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1224 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1225 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1224, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1222, ptr %1225, align 8
  %1226 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1224, i32 0, i32 1
  store ptr %1223, ptr %1226, align 8
  %1227 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1224, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1227, align 8
  %1228 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1224, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1228, align 8
  %1229 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1224, align 8
  %1230 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1230, i32 0, i32 0
  store ptr @53, ptr %1231, align 8
  %1232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1230, i32 0, i32 1
  store i64 4, ptr %1232, align 4
  %1233 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1230, align 8
  %1234 = load ptr, ptr @_llgo_uintptr, align 8
  %1235 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %_llgo_63, label %_llgo_64

_llgo_62:                                         ; preds = %_llgo_88, %_llgo_60
  %1237 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %_llgo_89, label %_llgo_90

_llgo_63:                                         ; preds = %_llgo_61
  %1239 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1240 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1240, i32 0, i32 0
  store ptr %1239, ptr %1241, align 8
  %1242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1240, i32 0, i32 1
  store i64 0, ptr %1242, align 4
  %1243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1240, i32 0, i32 2
  store i64 0, ptr %1243, align 4
  %1244 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1240, align 8
  %1245 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1246 = getelementptr ptr, ptr %1245, i64 0
  store ptr %1234, ptr %1246, align 8
  %1247 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, i32 0, i32 0
  store ptr %1245, ptr %1248, align 8
  %1249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, i32 0, i32 1
  store i64 1, ptr %1249, align 4
  %1250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, i32 0, i32 2
  store i64 1, ptr %1250, align 4
  %1251 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1247, align 8
  %1252 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1244, %"github.com/goplus/llgo/internal/runtime.Slice" %1251, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1252)
  store ptr %1252, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_61
  %1253 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1254 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1255 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1254, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1233, ptr %1255, align 8
  %1256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1254, i32 0, i32 1
  store ptr %1253, ptr %1256, align 8
  %1257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1254, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1257, align 8
  %1258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1254, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1258, align 8
  %1259 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1254, align 8
  %1260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1260, i32 0, i32 0
  store ptr @37, ptr %1261, align 8
  %1262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1260, i32 0, i32 1
  store i64 6, ptr %1262, align 4
  %1263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1260, align 8
  %1264 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1265 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1266 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1265, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1263, ptr %1266, align 8
  %1267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1265, i32 0, i32 1
  store ptr %1264, ptr %1267, align 8
  %1268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1265, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1268, align 8
  %1269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1265, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1269, align 8
  %1270 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1265, align 8
  %1271 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1271, i32 0, i32 0
  store ptr @54, ptr %1272, align 8
  %1273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1271, i32 0, i32 1
  store i64 10, ptr %1273, align 4
  %1274 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1271, align 8
  %1275 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 120, i64 0, i64 18)
  %1276 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  store ptr %1275, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %1278 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 56, i64 0, i64 2)
  %1279 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %1281 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1281, i32 0, i32 0
  store ptr @21, ptr %1282, align 8
  %1283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1281, i32 0, i32 1
  store i64 4, ptr %1283, align 4
  %1284 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1281, align 8
  %1285 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1285, i32 0, i32 0
  store ptr null, ptr %1286, align 8
  %1287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1285, i32 0, i32 1
  store i64 0, ptr %1287, align 4
  %1288 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1285, align 8
  %1289 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1284, ptr %3, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1288, i1 true)
  %1290 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1290, i32 0, i32 0
  store ptr @33, ptr %1291, align 8
  %1292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1290, i32 0, i32 1
  store i64 8, ptr %1292, align 4
  %1293 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1290, align 8
  %1294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1294, i32 0, i32 0
  store ptr null, ptr %1295, align 8
  %1296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1294, i32 0, i32 1
  store i64 0, ptr %1296, align 4
  %1297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1294, align 8
  %1298 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1299 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1293, ptr %1298, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1297, i1 false)
  %1300 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1300, i32 0, i32 0
  store ptr @55, ptr %1301, align 8
  %1302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1300, i32 0, i32 1
  store i64 6, ptr %1302, align 4
  %1303 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1300, align 8
  %1304 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, i32 0, i32 0
  store ptr null, ptr %1305, align 8
  %1306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, i32 0, i32 1
  store i64 0, ptr %1306, align 4
  %1307 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, align 8
  %1308 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1278)
  %1309 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1303, ptr %1308, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1307, i1 false)
  %1310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1310, i32 0, i32 0
  store ptr @4, ptr %1311, align 8
  %1312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1310, i32 0, i32 1
  store i64 4, ptr %1312, align 4
  %1313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1310, align 8
  %1314 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1315 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1314, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1289, ptr %1315, align 8
  %1316 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1314, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1299, ptr %1316, align 8
  %1317 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1314, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1309, ptr %1317, align 8
  %1318 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1318, i32 0, i32 0
  store ptr %1314, ptr %1319, align 8
  %1320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1318, i32 0, i32 1
  store i64 3, ptr %1320, align 4
  %1321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1318, i32 0, i32 2
  store i64 3, ptr %1321, align 4
  %1322 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1318, align 8
  %1323 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1313, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1322)
  store ptr %1323, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %1324 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1277, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %1325 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1325, i32 0, i32 0
  store ptr @19, ptr %1326, align 8
  %1327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1325, i32 0, i32 1
  store i64 5, ptr %1327, align 4
  %1328 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1325, align 8
  %1329 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1330 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1330, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1328, ptr %1331, align 8
  %1332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1330, i32 0, i32 1
  store ptr %1329, ptr %1332, align 8
  %1333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1330, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1333, align 8
  %1334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1330, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1334, align 8
  %1335 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1330, align 8
  %1336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1336, i32 0, i32 0
  store ptr @20, ptr %1337, align 8
  %1338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1336, i32 0, i32 1
  store i64 9, ptr %1338, align 4
  %1339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1336, align 8
  %1340 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1341 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1341, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1339, ptr %1342, align 8
  %1343 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1341, i32 0, i32 1
  store ptr %1340, ptr %1343, align 8
  %1344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1341, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1344, align 8
  %1345 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1341, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1345, align 8
  %1346 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1341, align 8
  %1347 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1347, i32 0, i32 0
  store ptr @25, ptr %1348, align 8
  %1349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1347, i32 0, i32 1
  store i64 6, ptr %1349, align 4
  %1350 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1347, align 8
  %1351 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1352 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1353 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1352, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1350, ptr %1353, align 8
  %1354 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1352, i32 0, i32 1
  store ptr %1351, ptr %1354, align 8
  %1355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1352, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1355, align 8
  %1356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1352, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1356, align 8
  %1357 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1352, align 8
  %1358 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1358, i32 0, i32 0
  store ptr @22, ptr %1359, align 8
  %1360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1358, i32 0, i32 1
  store i64 4, ptr %1360, align 4
  %1361 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1358, align 8
  %1362 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1363 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1364 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1363, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1361, ptr %1364, align 8
  %1365 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1363, i32 0, i32 1
  store ptr %1362, ptr %1365, align 8
  %1366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1363, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1366, align 8
  %1367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1363, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1367, align 8
  %1368 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1363, align 8
  %1369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1369, i32 0, i32 0
  store ptr @26, ptr %1370, align 8
  %1371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1369, i32 0, i32 1
  store i64 10, ptr %1371, align 4
  %1372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1369, align 8
  %1373 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1374 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1374, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1372, ptr %1375, align 8
  %1376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1374, i32 0, i32 1
  store ptr %1373, ptr %1376, align 8
  %1377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1374, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1377, align 8
  %1378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1374, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1378, align 8
  %1379 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1374, align 8
  %1380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1380, i32 0, i32 0
  store ptr @27, ptr %1381, align 8
  %1382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1380, i32 0, i32 1
  store i64 8, ptr %1382, align 4
  %1383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1380, align 8
  %1384 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1385 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1385, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1383, ptr %1386, align 8
  %1387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1385, i32 0, i32 1
  store ptr %1384, ptr %1387, align 8
  %1388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1385, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1388, align 8
  %1389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1385, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1389, align 8
  %1390 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1385, align 8
  %1391 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1391, i32 0, i32 0
  store ptr @30, ptr %1392, align 8
  %1393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1391, i32 0, i32 1
  store i64 7, ptr %1393, align 4
  %1394 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1391, align 8
  %1395 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1396 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1396, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1394, ptr %1397, align 8
  %1398 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1396, i32 0, i32 1
  store ptr %1395, ptr %1398, align 8
  %1399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1396, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1399, align 8
  %1400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1396, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1400, align 8
  %1401 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1396, align 8
  %1402 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1402, i32 0, i32 0
  store ptr @31, ptr %1403, align 8
  %1404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1402, i32 0, i32 1
  store i64 10, ptr %1404, align 4
  %1405 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1402, align 8
  %1406 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1407 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1407, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1405, ptr %1408, align 8
  %1409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1407, i32 0, i32 1
  store ptr %1406, ptr %1409, align 8
  %1410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1407, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1410, align 8
  %1411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1407, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1411, align 8
  %1412 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1407, align 8
  %1413 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1413, i32 0, i32 0
  store ptr @32, ptr %1414, align 8
  %1415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1413, i32 0, i32 1
  store i64 13, ptr %1415, align 4
  %1416 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1413, align 8
  %1417 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1418 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1418, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1416, ptr %1419, align 8
  %1420 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1418, i32 0, i32 1
  store ptr %1417, ptr %1420, align 8
  %1421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1418, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1421, align 8
  %1422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1418, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1422, align 8
  %1423 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1418, align 8
  %1424 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1424, i32 0, i32 0
  store ptr @35, ptr %1425, align 8
  %1426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1424, i32 0, i32 1
  store i64 13, ptr %1426, align 4
  %1427 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1424, align 8
  %1428 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1429 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1430 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1429, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1427, ptr %1430, align 8
  %1431 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1429, i32 0, i32 1
  store ptr %1428, ptr %1431, align 8
  %1432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1429, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1432, align 8
  %1433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1429, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1433, align 8
  %1434 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1429, align 8
  %1435 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1435, i32 0, i32 0
  store ptr @36, ptr %1436, align 8
  %1437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1435, i32 0, i32 1
  store i64 4, ptr %1437, align 4
  %1438 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1435, align 8
  %1439 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1440 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1441 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1440, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1438, ptr %1441, align 8
  %1442 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1440, i32 0, i32 1
  store ptr %1439, ptr %1442, align 8
  %1443 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1440, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1443, align 8
  %1444 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1440, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1444, align 8
  %1445 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1440, align 8
  %1446 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1446, i32 0, i32 0
  store ptr @24, ptr %1447, align 8
  %1448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1446, i32 0, i32 1
  store i64 3, ptr %1448, align 4
  %1449 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1446, align 8
  %1450 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1451 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1452 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1451, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1449, ptr %1452, align 8
  %1453 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1451, i32 0, i32 1
  store ptr %1450, ptr %1453, align 8
  %1454 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1451, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1454, align 8
  %1455 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1451, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1455, align 8
  %1456 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1451, align 8
  %1457 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1458 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1457, i32 0, i32 0
  store ptr @39, ptr %1458, align 8
  %1459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1457, i32 0, i32 1
  store i64 7, ptr %1459, align 4
  %1460 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1457, align 8
  %1461 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1462 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1463 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1462, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1460, ptr %1463, align 8
  %1464 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1462, i32 0, i32 1
  store ptr %1461, ptr %1464, align 8
  %1465 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1462, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1465, align 8
  %1466 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1462, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1466, align 8
  %1467 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1462, align 8
  %1468 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1468, i32 0, i32 0
  store ptr @51, ptr %1469, align 8
  %1470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1468, i32 0, i32 1
  store i64 8, ptr %1470, align 4
  %1471 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1468, align 8
  %1472 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1473 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1474 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1473, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1471, ptr %1474, align 8
  %1475 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1473, i32 0, i32 1
  store ptr %1472, ptr %1475, align 8
  %1476 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1473, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1476, align 8
  %1477 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1473, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1477, align 8
  %1478 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1473, align 8
  %1479 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1479, i32 0, i32 0
  store ptr @53, ptr %1480, align 8
  %1481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1479, i32 0, i32 1
  store i64 4, ptr %1481, align 4
  %1482 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1479, align 8
  %1483 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1484 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1485 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1484, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1482, ptr %1485, align 8
  %1486 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1484, i32 0, i32 1
  store ptr %1483, ptr %1486, align 8
  %1487 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1484, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1487, align 8
  %1488 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1484, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1488, align 8
  %1489 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1484, align 8
  %1490 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1490, i32 0, i32 0
  store ptr @37, ptr %1491, align 8
  %1492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1490, i32 0, i32 1
  store i64 6, ptr %1492, align 4
  %1493 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1490, align 8
  %1494 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1495 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1496 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1495, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1493, ptr %1496, align 8
  %1497 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1495, i32 0, i32 1
  store ptr %1494, ptr %1497, align 8
  %1498 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1495, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1498, align 8
  %1499 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1495, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1499, align 8
  %1500 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1495, align 8
  %1501 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1501, i32 0, i32 0
  store ptr @54, ptr %1502, align 8
  %1503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1501, i32 0, i32 1
  store i64 10, ptr %1503, align 4
  %1504 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1501, align 8
  %1505 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1506 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1507 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1506, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1504, ptr %1507, align 8
  %1508 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1506, i32 0, i32 1
  store ptr %1505, ptr %1508, align 8
  %1509 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1506, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1509, align 8
  %1510 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1506, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1510, align 8
  %1511 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1506, align 8
  %1512 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1512, i32 0, i32 0
  store ptr @56, ptr %1513, align 8
  %1514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1512, i32 0, i32 1
  store i64 8, ptr %1514, align 4
  %1515 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1512, align 8
  %1516 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 24, i64 0, i64 2)
  %1517 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1518 = icmp eq ptr %1517, null
  br i1 %1518, label %_llgo_71, label %_llgo_72

_llgo_70:                                         ; preds = %_llgo_84, %_llgo_68
  %1519 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1520 = icmp eq ptr %1519, null
  br i1 %1520, label %_llgo_85, label %_llgo_86

_llgo_71:                                         ; preds = %_llgo_69
  store ptr %1516, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_69
  %1521 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1522 = icmp eq ptr %1521, null
  br i1 %1522, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %1523 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1523, i32 0, i32 0
  store ptr @33, ptr %1524, align 8
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
  %1532 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1526, ptr %1531, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1530, i1 false)
  %1533 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1533, i32 0, i32 0
  store ptr @57, ptr %1534, align 8
  %1535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1533, i32 0, i32 1
  store i64 6, ptr %1535, align 4
  %1536 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1533, align 8
  %1537 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1537, i32 0, i32 0
  store ptr null, ptr %1538, align 8
  %1539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1537, i32 0, i32 1
  store i64 0, ptr %1539, align 4
  %1540 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1537, align 8
  %1541 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1542 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1536, ptr %1541, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1540, i1 false)
  %1543 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1543, i32 0, i32 0
  store ptr @58, ptr %1544, align 8
  %1545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1543, i32 0, i32 1
  store i64 6, ptr %1545, align 4
  %1546 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1543, align 8
  %1547 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1547, i32 0, i32 0
  store ptr null, ptr %1548, align 8
  %1549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1547, i32 0, i32 1
  store i64 0, ptr %1549, align 4
  %1550 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1547, align 8
  %1551 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  %1552 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1546, ptr %1551, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %1550, i1 false)
  %1553 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1553, i32 0, i32 0
  store ptr @59, ptr %1554, align 8
  %1555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1553, i32 0, i32 1
  store i64 4, ptr %1555, align 4
  %1556 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1553, align 8
  %1557 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1557, i32 0, i32 0
  store ptr null, ptr %1558, align 8
  %1559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1557, i32 0, i32 1
  store i64 0, ptr %1559, align 4
  %1560 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1557, align 8
  %1561 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  %1562 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1556, ptr %1561, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %1560, i1 false)
  %1563 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1563, i32 0, i32 0
  store ptr @4, ptr %1564, align 8
  %1565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1563, i32 0, i32 1
  store i64 4, ptr %1565, align 4
  %1566 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1563, align 8
  %1567 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1568 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1567, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1532, ptr %1568, align 8
  %1569 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1567, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1542, ptr %1569, align 8
  %1570 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1567, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1552, ptr %1570, align 8
  %1571 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1567, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1562, ptr %1571, align 8
  %1572 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1572, i32 0, i32 0
  store ptr %1567, ptr %1573, align 8
  %1574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1572, i32 0, i32 1
  store i64 4, ptr %1574, align 4
  %1575 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1572, i32 0, i32 2
  store i64 4, ptr %1575, align 4
  %1576 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1572, align 8
  %1577 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1566, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1576)
  store ptr %1577, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %1578 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1518, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %1579 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1580 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1579, i32 0, i32 0
  store ptr @60, ptr %1580, align 8
  %1581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1579, i32 0, i32 1
  store i64 15, ptr %1581, align 4
  %1582 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1579, align 8
  %1583 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 40, i64 0, i64 3)
  %1584 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1585 = icmp eq ptr %1584, null
  br i1 %1585, label %_llgo_77, label %_llgo_78

_llgo_76:                                         ; preds = %_llgo_80, %_llgo_74
  %1586 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1587 = icmp eq ptr %1586, null
  br i1 %1587, label %_llgo_81, label %_llgo_82

_llgo_77:                                         ; preds = %_llgo_75
  %1588 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1583)
  store ptr %1588, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_75
  %1589 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1590 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1591 = icmp eq ptr %1590, null
  br i1 %1591, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %1592 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1593 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1593, i32 0, i32 0
  store ptr %1592, ptr %1594, align 8
  %1595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1593, i32 0, i32 1
  store i64 0, ptr %1595, align 4
  %1596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1593, i32 0, i32 2
  store i64 0, ptr %1596, align 4
  %1597 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1593, align 8
  %1598 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1599 = getelementptr ptr, ptr %1598, i64 0
  store ptr %1589, ptr %1599, align 8
  %1600 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1600, i32 0, i32 0
  store ptr %1598, ptr %1601, align 8
  %1602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1600, i32 0, i32 1
  store i64 1, ptr %1602, align 4
  %1603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1600, i32 0, i32 2
  store i64 1, ptr %1603, align 4
  %1604 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1600, align 8
  %1605 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1597, %"github.com/goplus/llgo/internal/runtime.Slice" %1604, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1605)
  store ptr %1605, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %1606 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1607 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1608 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1582, ptr %1608, align 8
  %1609 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 1
  store ptr %1606, ptr %1609, align 8
  %1610 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1610, align 8
  %1611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1611, align 8
  %1612 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1607, align 8
  %1613 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, i32 0, i32 0
  store ptr @34, ptr %1614, align 8
  %1615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, i32 0, i32 1
  store i64 7, ptr %1615, align 4
  %1616 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1613, align 8
  %1617 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1618 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1616, ptr %1619, align 8
  %1620 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 1
  store ptr %1617, ptr %1620, align 8
  %1621 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1621, align 8
  %1622 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1622, align 8
  %1623 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1618, align 8
  %1624 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1625 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1612, ptr %1625, align 8
  %1626 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1624, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1623, ptr %1626, align 8
  %1627 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1627, i32 0, i32 0
  store ptr %1624, ptr %1628, align 8
  %1629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1627, i32 0, i32 1
  store i64 2, ptr %1629, align 4
  %1630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1627, i32 0, i32 2
  store i64 2, ptr %1630, align 4
  %1631 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1627, align 8
  %1632 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1632, i32 0, i32 0
  store ptr @38, ptr %1633, align 8
  %1634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1632, i32 0, i32 1
  store i64 35, ptr %1634, align 4
  %1635 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1632, align 8
  %1636 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1636, i32 0, i32 0
  store ptr @61, ptr %1637, align 8
  %1638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1636, i32 0, i32 1
  store i64 12, ptr %1638, align 4
  %1639 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1636, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1516, %"github.com/goplus/llgo/internal/runtime.String" %1635, %"github.com/goplus/llgo/internal/runtime.String" %1639, ptr %1578, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1631)
  br label %_llgo_76

_llgo_81:                                         ; preds = %_llgo_76
  %1640 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1516)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1640)
  store ptr %1640, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_76
  %1641 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1642 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1643 = icmp eq ptr %1642, null
  br i1 %1643, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %1644 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1645 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1645, i32 0, i32 0
  store ptr %1644, ptr %1646, align 8
  %1647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1645, i32 0, i32 1
  store i64 0, ptr %1647, align 4
  %1648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1645, i32 0, i32 2
  store i64 0, ptr %1648, align 4
  %1649 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1645, align 8
  %1650 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1651 = getelementptr ptr, ptr %1650, i64 0
  store ptr %1641, ptr %1651, align 8
  %1652 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1652, i32 0, i32 0
  store ptr %1650, ptr %1653, align 8
  %1654 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1652, i32 0, i32 1
  store i64 1, ptr %1654, align 4
  %1655 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1652, i32 0, i32 2
  store i64 1, ptr %1655, align 4
  %1656 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1652, align 8
  %1657 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1649, %"github.com/goplus/llgo/internal/runtime.Slice" %1656, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1657)
  store ptr %1657, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %1658 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1659 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1659, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1515, ptr %1660, align 8
  %1661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1659, i32 0, i32 1
  store ptr %1658, ptr %1661, align 8
  %1662 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1659, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %1662, align 8
  %1663 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1659, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %1663, align 8
  %1664 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1659, align 8
  %1665 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %1666 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1335, ptr %1666, align 8
  %1667 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1346, ptr %1667, align 8
  %1668 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1357, ptr %1668, align 8
  %1669 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1368, ptr %1669, align 8
  %1670 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1379, ptr %1670, align 8
  %1671 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1390, ptr %1671, align 8
  %1672 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1401, ptr %1672, align 8
  %1673 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1412, ptr %1673, align 8
  %1674 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1423, ptr %1674, align 8
  %1675 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1434, ptr %1675, align 8
  %1676 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1445, ptr %1676, align 8
  %1677 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1456, ptr %1677, align 8
  %1678 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1467, ptr %1678, align 8
  %1679 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1478, ptr %1679, align 8
  %1680 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1489, ptr %1680, align 8
  %1681 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1500, ptr %1681, align 8
  %1682 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1511, ptr %1682, align 8
  %1683 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1665, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1664, ptr %1683, align 8
  %1684 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1684, i32 0, i32 0
  store ptr %1665, ptr %1685, align 8
  %1686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1684, i32 0, i32 1
  store i64 18, ptr %1686, align 4
  %1687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1684, i32 0, i32 2
  store i64 18, ptr %1687, align 4
  %1688 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1684, align 8
  %1689 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1690 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1689, i32 0, i32 0
  store ptr @38, ptr %1690, align 8
  %1691 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1689, i32 0, i32 1
  store i64 35, ptr %1691, align 4
  %1692 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1689, align 8
  %1693 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1694 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, i32 0, i32 0
  store ptr @54, ptr %1694, align 8
  %1695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, i32 0, i32 1
  store i64 10, ptr %1695, align 4
  %1696 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1693, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1275, %"github.com/goplus/llgo/internal/runtime.String" %1692, %"github.com/goplus/llgo/internal/runtime.String" %1696, ptr %1324, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1688)
  br label %_llgo_70

_llgo_85:                                         ; preds = %_llgo_70
  %1697 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1275)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1697)
  store ptr %1697, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_70
  %1698 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1699 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1700 = icmp eq ptr %1699, null
  br i1 %1700, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %1701 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1702 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1702, i32 0, i32 0
  store ptr %1701, ptr %1703, align 8
  %1704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1702, i32 0, i32 1
  store i64 0, ptr %1704, align 4
  %1705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1702, i32 0, i32 2
  store i64 0, ptr %1705, align 4
  %1706 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1702, align 8
  %1707 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1708 = getelementptr ptr, ptr %1707, i64 0
  store ptr %1698, ptr %1708, align 8
  %1709 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1710 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1709, i32 0, i32 0
  store ptr %1707, ptr %1710, align 8
  %1711 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1709, i32 0, i32 1
  store i64 1, ptr %1711, align 4
  %1712 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1709, i32 0, i32 2
  store i64 1, ptr %1712, align 4
  %1713 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1709, align 8
  %1714 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1706, %"github.com/goplus/llgo/internal/runtime.Slice" %1713, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1714)
  store ptr %1714, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %1715 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1716 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1717 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1716, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1274, ptr %1717, align 8
  %1718 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1716, i32 0, i32 1
  store ptr %1715, ptr %1718, align 8
  %1719 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1716, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %1719, align 8
  %1720 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1716, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %1720, align 8
  %1721 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1716, align 8
  %1722 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1723 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1722, i32 0, i32 0
  store ptr @56, ptr %1723, align 8
  %1724 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1722, i32 0, i32 1
  store i64 8, ptr %1724, align 4
  %1725 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1722, align 8
  %1726 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1727 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1728 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1727, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1725, ptr %1728, align 8
  %1729 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1727, i32 0, i32 1
  store ptr %1726, ptr %1729, align 8
  %1730 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1727, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %1730, align 8
  %1731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1727, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %1731, align 8
  %1732 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1727, align 8
  %1733 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %1734 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1042, ptr %1734, align 8
  %1735 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1053, ptr %1735, align 8
  %1736 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1064, ptr %1736, align 8
  %1737 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1075, ptr %1737, align 8
  %1738 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1086, ptr %1738, align 8
  %1739 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1097, ptr %1739, align 8
  %1740 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1108, ptr %1740, align 8
  %1741 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1119, ptr %1741, align 8
  %1742 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1130, ptr %1742, align 8
  %1743 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1141, ptr %1743, align 8
  %1744 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1152, ptr %1744, align 8
  %1745 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1163, ptr %1745, align 8
  %1746 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1174, ptr %1746, align 8
  %1747 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1185, ptr %1747, align 8
  %1748 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1196, ptr %1748, align 8
  %1749 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1207, ptr %1749, align 8
  %1750 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1218, ptr %1750, align 8
  %1751 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1229, ptr %1751, align 8
  %1752 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1259, ptr %1752, align 8
  %1753 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1270, ptr %1753, align 8
  %1754 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1721, ptr %1754, align 8
  %1755 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1733, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1732, ptr %1755, align 8
  %1756 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1757 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1756, i32 0, i32 0
  store ptr %1733, ptr %1757, align 8
  %1758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1756, i32 0, i32 1
  store i64 22, ptr %1758, align 4
  %1759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1756, i32 0, i32 2
  store i64 22, ptr %1759, align 4
  %1760 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1756, align 8
  %1761 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1762 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1761, i32 0, i32 0
  store ptr @38, ptr %1762, align 8
  %1763 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1761, i32 0, i32 1
  store i64 35, ptr %1763, align 4
  %1764 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1761, align 8
  %1765 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1766 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1765, i32 0, i32 0
  store ptr @39, ptr %1766, align 8
  %1767 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1765, i32 0, i32 1
  store i64 7, ptr %1767, align 4
  %1768 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1765, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %862, %"github.com/goplus/llgo/internal/runtime.String" %1764, %"github.com/goplus/llgo/internal/runtime.String" %1768, ptr %1031, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1760)
  br label %_llgo_62

_llgo_89:                                         ; preds = %_llgo_62
  %1769 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %862)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1769)
  store ptr %1769, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_62
  %1770 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1771 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1772 = icmp eq ptr %1771, null
  br i1 %1772, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %1773 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1774 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1774, i32 0, i32 0
  store ptr %1773, ptr %1775, align 8
  %1776 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1774, i32 0, i32 1
  store i64 0, ptr %1776, align 4
  %1777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1774, i32 0, i32 2
  store i64 0, ptr %1777, align 4
  %1778 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1774, align 8
  %1779 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1780 = getelementptr ptr, ptr %1779, i64 0
  store ptr %1770, ptr %1780, align 8
  %1781 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1782 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1781, i32 0, i32 0
  store ptr %1779, ptr %1782, align 8
  %1783 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1781, i32 0, i32 1
  store i64 1, ptr %1783, align 4
  %1784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1781, i32 0, i32 2
  store i64 1, ptr %1784, align 4
  %1785 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1781, align 8
  %1786 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1778, %"github.com/goplus/llgo/internal/runtime.Slice" %1785, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1786)
  store ptr %1786, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %1787 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1788 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1788, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %861, ptr %1789, align 8
  %1790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1788, i32 0, i32 1
  store ptr %1787, ptr %1790, align 8
  %1791 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1788, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %1791, align 8
  %1792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1788, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %1792, align 8
  %1793 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1788, align 8
  %1794 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1795 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1794, i32 0, i32 0
  store ptr @51, ptr %1795, align 8
  %1796 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1794, i32 0, i32 1
  store i64 8, ptr %1796, align 4
  %1797 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1794, align 8
  %1798 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1799 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1799, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1797, ptr %1800, align 8
  %1801 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1799, i32 0, i32 1
  store ptr %1798, ptr %1801, align 8
  %1802 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1799, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %1802, align 8
  %1803 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1799, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %1803, align 8
  %1804 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1799, align 8
  %1805 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1805, i32 0, i32 0
  store ptr @53, ptr %1806, align 8
  %1807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1805, i32 0, i32 1
  store i64 4, ptr %1807, align 4
  %1808 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1805, align 8
  %1809 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1810 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1811 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1810, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1808, ptr %1811, align 8
  %1812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1810, i32 0, i32 1
  store ptr %1809, ptr %1812, align 8
  %1813 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1810, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %1813, align 8
  %1814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1810, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %1814, align 8
  %1815 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1810, align 8
  %1816 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1817 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1816, i32 0, i32 0
  store ptr @37, ptr %1817, align 8
  %1818 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1816, i32 0, i32 1
  store i64 6, ptr %1818, align 4
  %1819 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1816, align 8
  %1820 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1821 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1822 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1819, ptr %1822, align 8
  %1823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 1
  store ptr %1820, ptr %1823, align 8
  %1824 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %1824, align 8
  %1825 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %1825, align 8
  %1826 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1821, align 8
  %1827 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, i32 0, i32 0
  store ptr @54, ptr %1828, align 8
  %1829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, i32 0, i32 1
  store i64 10, ptr %1829, align 4
  %1830 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1827, align 8
  %1831 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1832 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1833 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1830, ptr %1833, align 8
  %1834 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 1
  store ptr %1831, ptr %1834, align 8
  %1835 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %1835, align 8
  %1836 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %1836, align 8
  %1837 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1832, align 8
  %1838 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1838, i32 0, i32 0
  store ptr @56, ptr %1839, align 8
  %1840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1838, i32 0, i32 1
  store i64 8, ptr %1840, align 4
  %1841 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1838, align 8
  %1842 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1843 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1844 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1843, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1841, ptr %1844, align 8
  %1845 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1843, i32 0, i32 1
  store ptr %1842, ptr %1845, align 8
  %1846 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1843, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %1846, align 8
  %1847 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1843, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %1847, align 8
  %1848 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1843, align 8
  %1849 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %1850 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %651, ptr %1850, align 8
  %1851 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %662, ptr %1851, align 8
  %1852 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %673, ptr %1852, align 8
  %1853 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %684, ptr %1853, align 8
  %1854 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %695, ptr %1854, align 8
  %1855 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %706, ptr %1855, align 8
  %1856 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %717, ptr %1856, align 8
  %1857 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %728, ptr %1857, align 8
  %1858 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %739, ptr %1858, align 8
  %1859 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %750, ptr %1859, align 8
  %1860 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %846, ptr %1860, align 8
  %1861 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %857, ptr %1861, align 8
  %1862 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1793, ptr %1862, align 8
  %1863 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1804, ptr %1863, align 8
  %1864 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1815, ptr %1864, align 8
  %1865 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1826, ptr %1865, align 8
  %1866 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1837, ptr %1866, align 8
  %1867 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1849, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1848, ptr %1867, align 8
  %1868 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1868, i32 0, i32 0
  store ptr %1849, ptr %1869, align 8
  %1870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1868, i32 0, i32 1
  store i64 18, ptr %1870, align 4
  %1871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1868, i32 0, i32 2
  store i64 18, ptr %1871, align 4
  %1872 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1868, align 8
  %1873 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1873, i32 0, i32 0
  store ptr @38, ptr %1874, align 8
  %1875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1873, i32 0, i32 1
  store i64 35, ptr %1875, align 4
  %1876 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1873, align 8
  %1877 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1878 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1877, i32 0, i32 0
  store ptr @32, ptr %1878, align 8
  %1879 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1877, i32 0, i32 1
  store i64 13, ptr %1879, align 4
  %1880 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1877, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %591, %"github.com/goplus/llgo/internal/runtime.String" %1876, %"github.com/goplus/llgo/internal/runtime.String" %1880, ptr %640, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1872)
  br label %_llgo_42

_llgo_93:                                         ; preds = %_llgo_42
  %1881 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %591)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1881)
  store ptr %1881, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_42
  %1882 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1883 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1884 = icmp eq ptr %1883, null
  br i1 %1884, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %1885 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1886 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1886, i32 0, i32 0
  store ptr %1885, ptr %1887, align 8
  %1888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1886, i32 0, i32 1
  store i64 0, ptr %1888, align 4
  %1889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1886, i32 0, i32 2
  store i64 0, ptr %1889, align 4
  %1890 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1886, align 8
  %1891 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1892 = getelementptr ptr, ptr %1891, i64 0
  store ptr %1882, ptr %1892, align 8
  %1893 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1893, i32 0, i32 0
  store ptr %1891, ptr %1894, align 8
  %1895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1893, i32 0, i32 1
  store i64 1, ptr %1895, align 4
  %1896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1893, i32 0, i32 2
  store i64 1, ptr %1896, align 4
  %1897 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1893, align 8
  %1898 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1890, %"github.com/goplus/llgo/internal/runtime.Slice" %1897, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1898)
  store ptr %1898, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %1899 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1900 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1901 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1900, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %590, ptr %1901, align 8
  %1902 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1900, i32 0, i32 1
  store ptr %1899, ptr %1902, align 8
  %1903 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1900, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %1903, align 8
  %1904 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1900, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %1904, align 8
  %1905 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1900, align 8
  %1906 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1906, i32 0, i32 0
  store ptr @35, ptr %1907, align 8
  %1908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1906, i32 0, i32 1
  store i64 13, ptr %1908, align 4
  %1909 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1906, align 8
  %1910 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1911 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1912 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1911, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1909, ptr %1912, align 8
  %1913 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1911, i32 0, i32 1
  store ptr %1910, ptr %1913, align 8
  %1914 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1911, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %1914, align 8
  %1915 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1911, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %1915, align 8
  %1916 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1911, align 8
  %1917 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1917, i32 0, i32 0
  store ptr @36, ptr %1918, align 8
  %1919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1917, i32 0, i32 1
  store i64 4, ptr %1919, align 4
  %1920 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1917, align 8
  %1921 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1922 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1923 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1922, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1920, ptr %1923, align 8
  %1924 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1922, i32 0, i32 1
  store ptr %1921, ptr %1924, align 8
  %1925 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1922, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %1925, align 8
  %1926 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1922, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %1926, align 8
  %1927 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1922, align 8
  %1928 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1928, i32 0, i32 0
  store ptr @24, ptr %1929, align 8
  %1930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1928, i32 0, i32 1
  store i64 3, ptr %1930, align 4
  %1931 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1928, align 8
  %1932 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1933 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1934 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1931, ptr %1934, align 8
  %1935 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 1
  store ptr %1932, ptr %1935, align 8
  %1936 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %1936, align 8
  %1937 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %1937, align 8
  %1938 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1933, align 8
  %1939 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1940 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1939, i32 0, i32 0
  store ptr @39, ptr %1940, align 8
  %1941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1939, i32 0, i32 1
  store i64 7, ptr %1941, align 4
  %1942 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1939, align 8
  %1943 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1944 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1945 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1944, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1942, ptr %1945, align 8
  %1946 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1944, i32 0, i32 1
  store ptr %1943, ptr %1946, align 8
  %1947 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1944, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %1947, align 8
  %1948 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1944, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %1948, align 8
  %1949 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1944, align 8
  %1950 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1951 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1950, i32 0, i32 0
  store ptr @51, ptr %1951, align 8
  %1952 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1950, i32 0, i32 1
  store i64 8, ptr %1952, align 4
  %1953 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1950, align 8
  %1954 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1955 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1956 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1955, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1953, ptr %1956, align 8
  %1957 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1955, i32 0, i32 1
  store ptr %1954, ptr %1957, align 8
  %1958 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1955, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %1958, align 8
  %1959 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1955, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %1959, align 8
  %1960 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1955, align 8
  %1961 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1961, i32 0, i32 0
  store ptr @53, ptr %1962, align 8
  %1963 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1961, i32 0, i32 1
  store i64 4, ptr %1963, align 4
  %1964 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1961, align 8
  %1965 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1966 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1967 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1966, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1964, ptr %1967, align 8
  %1968 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1966, i32 0, i32 1
  store ptr %1965, ptr %1968, align 8
  %1969 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1966, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %1969, align 8
  %1970 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1966, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %1970, align 8
  %1971 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1966, align 8
  %1972 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1972, i32 0, i32 0
  store ptr @37, ptr %1973, align 8
  %1974 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1972, i32 0, i32 1
  store i64 6, ptr %1974, align 4
  %1975 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1972, align 8
  %1976 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1977 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1978 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1977, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1975, ptr %1978, align 8
  %1979 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1977, i32 0, i32 1
  store ptr %1976, ptr %1979, align 8
  %1980 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1977, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %1980, align 8
  %1981 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1977, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %1981, align 8
  %1982 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1977, align 8
  %1983 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1983, i32 0, i32 0
  store ptr @54, ptr %1984, align 8
  %1985 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1983, i32 0, i32 1
  store i64 10, ptr %1985, align 4
  %1986 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1983, align 8
  %1987 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1988 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1989 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1988, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1986, ptr %1989, align 8
  %1990 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1988, i32 0, i32 1
  store ptr %1987, ptr %1990, align 8
  %1991 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1988, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %1991, align 8
  %1992 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1988, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %1992, align 8
  %1993 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1988, align 8
  %1994 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1995 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1994, i32 0, i32 0
  store ptr @56, ptr %1995, align 8
  %1996 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1994, i32 0, i32 1
  store i64 8, ptr %1996, align 4
  %1997 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1994, align 8
  %1998 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1999 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2000 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1999, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1997, ptr %2000, align 8
  %2001 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1999, i32 0, i32 1
  store ptr %1998, ptr %2001, align 8
  %2002 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1999, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2002, align 8
  %2003 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1999, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2003, align 8
  %2004 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1999, align 8
  %2005 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2005, i32 0, i32 0
  store ptr @62, ptr %2006, align 8
  %2007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2005, i32 0, i32 1
  store i64 8, ptr %2007, align 4
  %2008 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2005, align 8
  %2009 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2010 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2011 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2010, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2008, ptr %2011, align 8
  %2012 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2010, i32 0, i32 1
  store ptr %2009, ptr %2012, align 8
  %2013 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2010, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2013, align 8
  %2014 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2010, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2014, align 8
  %2015 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2010, align 8
  %2016 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 760)
  %2017 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %490, ptr %2017, align 8
  %2018 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %501, ptr %2018, align 8
  %2019 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %512, ptr %2019, align 8
  %2020 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %523, ptr %2020, align 8
  %2021 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %534, ptr %2021, align 8
  %2022 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %545, ptr %2022, align 8
  %2023 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %575, ptr %2023, align 8
  %2024 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %586, ptr %2024, align 8
  %2025 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1905, ptr %2025, align 8
  %2026 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1916, ptr %2026, align 8
  %2027 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1927, ptr %2027, align 8
  %2028 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1938, ptr %2028, align 8
  %2029 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1949, ptr %2029, align 8
  %2030 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1960, ptr %2030, align 8
  %2031 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1971, ptr %2031, align 8
  %2032 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1982, ptr %2032, align 8
  %2033 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1993, ptr %2033, align 8
  %2034 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2004, ptr %2034, align 8
  %2035 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2016, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2015, ptr %2035, align 8
  %2036 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2037 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2036, i32 0, i32 0
  store ptr %2016, ptr %2037, align 8
  %2038 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2036, i32 0, i32 1
  store i64 19, ptr %2038, align 4
  %2039 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2036, i32 0, i32 2
  store i64 19, ptr %2039, align 4
  %2040 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2036, align 8
  %2041 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, i32 0, i32 0
  store ptr @38, ptr %2042, align 8
  %2043 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, i32 0, i32 1
  store i64 35, ptr %2043, align 4
  %2044 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2041, align 8
  %2045 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2046 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2045, i32 0, i32 0
  store ptr @27, ptr %2046, align 8
  %2047 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2045, i32 0, i32 1
  store i64 8, ptr %2047, align 4
  %2048 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2045, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %429, %"github.com/goplus/llgo/internal/runtime.String" %2044, %"github.com/goplus/llgo/internal/runtime.String" %2048, ptr %479, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2040)
  br label %_llgo_34

_llgo_97:                                         ; preds = %_llgo_34
  %2049 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %429)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2049)
  store ptr %2049, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_34
  %2050 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2051 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2052 = icmp eq ptr %2051, null
  br i1 %2052, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %2053 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2054 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2055 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2054, i32 0, i32 0
  store ptr %2053, ptr %2055, align 8
  %2056 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2054, i32 0, i32 1
  store i64 0, ptr %2056, align 4
  %2057 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2054, i32 0, i32 2
  store i64 0, ptr %2057, align 4
  %2058 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2054, align 8
  %2059 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2060 = getelementptr ptr, ptr %2059, i64 0
  store ptr %2050, ptr %2060, align 8
  %2061 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2062 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2061, i32 0, i32 0
  store ptr %2059, ptr %2062, align 8
  %2063 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2061, i32 0, i32 1
  store i64 1, ptr %2063, align 4
  %2064 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2061, i32 0, i32 2
  store i64 1, ptr %2064, align 4
  %2065 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2061, align 8
  %2066 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2058, %"github.com/goplus/llgo/internal/runtime.Slice" %2065, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2066)
  store ptr %2066, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %2067 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2068 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2069 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %428, ptr %2069, align 8
  %2070 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 1
  store ptr %2067, ptr %2070, align 8
  %2071 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2071, align 8
  %2072 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2072, align 8
  %2073 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2068, align 8
  %2074 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2075 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2074, i32 0, i32 0
  store ptr @30, ptr %2075, align 8
  %2076 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2074, i32 0, i32 1
  store i64 7, ptr %2076, align 4
  %2077 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2074, align 8
  %2078 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2079 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2080 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2077, ptr %2080, align 8
  %2081 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 1
  store ptr %2078, ptr %2081, align 8
  %2082 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2082, align 8
  %2083 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2083, align 8
  %2084 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2079, align 8
  %2085 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2086 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2085, i32 0, i32 0
  store ptr @31, ptr %2086, align 8
  %2087 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2085, i32 0, i32 1
  store i64 10, ptr %2087, align 4
  %2088 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2085, align 8
  %2089 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2090 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2091 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2088, ptr %2091, align 8
  %2092 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 1
  store ptr %2089, ptr %2092, align 8
  %2093 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2093, align 8
  %2094 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2094, align 8
  %2095 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2090, align 8
  %2096 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2097 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2096, i32 0, i32 0
  store ptr @32, ptr %2097, align 8
  %2098 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2096, i32 0, i32 1
  store i64 13, ptr %2098, align 4
  %2099 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2096, align 8
  %2100 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2101 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2102 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2099, ptr %2102, align 8
  %2103 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 1
  store ptr %2100, ptr %2103, align 8
  %2104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2104, align 8
  %2105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2105, align 8
  %2106 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2101, align 8
  %2107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, i32 0, i32 0
  store ptr @35, ptr %2108, align 8
  %2109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, i32 0, i32 1
  store i64 13, ptr %2109, align 4
  %2110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2107, align 8
  %2111 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2112 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2110, ptr %2113, align 8
  %2114 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 1
  store ptr %2111, ptr %2114, align 8
  %2115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2115, align 8
  %2116 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2116, align 8
  %2117 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2112, align 8
  %2118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, i32 0, i32 0
  store ptr @36, ptr %2119, align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, i32 0, i32 1
  store i64 4, ptr %2120, align 4
  %2121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2118, align 8
  %2122 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2123 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2124 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2121, ptr %2124, align 8
  %2125 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 1
  store ptr %2122, ptr %2125, align 8
  %2126 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2126, align 8
  %2127 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2127, align 8
  %2128 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2123, align 8
  %2129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2129, i32 0, i32 0
  store ptr @39, ptr %2130, align 8
  %2131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2129, i32 0, i32 1
  store i64 7, ptr %2131, align 4
  %2132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2129, align 8
  %2133 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2134 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2132, ptr %2135, align 8
  %2136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 1
  store ptr %2133, ptr %2136, align 8
  %2137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2137, align 8
  %2138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2138, align 8
  %2139 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2134, align 8
  %2140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2140, i32 0, i32 0
  store ptr @51, ptr %2141, align 8
  %2142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2140, i32 0, i32 1
  store i64 8, ptr %2142, align 4
  %2143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2140, align 8
  %2144 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2145 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2143, ptr %2146, align 8
  %2147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 1
  store ptr %2144, ptr %2147, align 8
  %2148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2148, align 8
  %2149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2149, align 8
  %2150 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2145, align 8
  %2151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 0
  store ptr @53, ptr %2152, align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, i32 0, i32 1
  store i64 4, ptr %2153, align 4
  %2154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2151, align 8
  %2155 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2156 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2157 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2154, ptr %2157, align 8
  %2158 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 1
  store ptr %2155, ptr %2158, align 8
  %2159 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2159, align 8
  %2160 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2160, align 8
  %2161 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2156, align 8
  %2162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, i32 0, i32 0
  store ptr @37, ptr %2163, align 8
  %2164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, i32 0, i32 1
  store i64 6, ptr %2164, align 4
  %2165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2162, align 8
  %2166 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2167 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2165, ptr %2168, align 8
  %2169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 1
  store ptr %2166, ptr %2169, align 8
  %2170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2170, align 8
  %2171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2171, align 8
  %2172 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2167, align 8
  %2173 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, i32 0, i32 0
  store ptr @54, ptr %2174, align 8
  %2175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, i32 0, i32 1
  store i64 10, ptr %2175, align 4
  %2176 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2173, align 8
  %2177 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2178 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2176, ptr %2179, align 8
  %2180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 1
  store ptr %2177, ptr %2180, align 8
  %2181 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2181, align 8
  %2182 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2182, align 8
  %2183 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2178, align 8
  %2184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 0
  store ptr @56, ptr %2185, align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, i32 0, i32 1
  store i64 8, ptr %2186, align 4
  %2187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2184, align 8
  %2188 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2189 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2187, ptr %2190, align 8
  %2191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 1
  store ptr %2188, ptr %2191, align 8
  %2192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2192, align 8
  %2193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2193, align 8
  %2194 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2189, align 8
  %2195 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 640)
  %2196 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %369, ptr %2196, align 8
  %2197 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %380, ptr %2197, align 8
  %2198 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %413, ptr %2198, align 8
  %2199 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %424, ptr %2199, align 8
  %2200 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2073, ptr %2200, align 8
  %2201 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2084, ptr %2201, align 8
  %2202 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2095, ptr %2202, align 8
  %2203 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2106, ptr %2203, align 8
  %2204 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2117, ptr %2204, align 8
  %2205 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2128, ptr %2205, align 8
  %2206 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2139, ptr %2206, align 8
  %2207 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2150, ptr %2207, align 8
  %2208 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2161, ptr %2208, align 8
  %2209 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2172, ptr %2209, align 8
  %2210 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2183, ptr %2210, align 8
  %2211 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2195, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2194, ptr %2211, align 8
  %2212 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2212, i32 0, i32 0
  store ptr %2195, ptr %2213, align 8
  %2214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2212, i32 0, i32 1
  store i64 16, ptr %2214, align 4
  %2215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2212, i32 0, i32 2
  store i64 16, ptr %2215, align 4
  %2216 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2212, align 8
  %2217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, i32 0, i32 0
  store ptr @38, ptr %2218, align 8
  %2219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, i32 0, i32 1
  store i64 35, ptr %2219, align 4
  %2220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2217, align 8
  %2221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2221, i32 0, i32 0
  store ptr @20, ptr %2222, align 8
  %2223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2221, i32 0, i32 1
  store i64 9, ptr %2223, align 4
  %2224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2221, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %299, %"github.com/goplus/llgo/internal/runtime.String" %2220, %"github.com/goplus/llgo/internal/runtime.String" %2224, ptr %358, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2216)
  br label %_llgo_24

_llgo_101:                                        ; preds = %_llgo_24
  %2225 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %299)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2225)
  store ptr %2225, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_24
  %2226 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %2227 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2228 = icmp eq ptr %2227, null
  br i1 %2228, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %2229 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2230 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2230, i32 0, i32 0
  store ptr %2229, ptr %2231, align 8
  %2232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2230, i32 0, i32 1
  store i64 0, ptr %2232, align 4
  %2233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2230, i32 0, i32 2
  store i64 0, ptr %2233, align 4
  %2234 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2230, align 8
  %2235 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2236 = getelementptr ptr, ptr %2235, i64 0
  store ptr %2226, ptr %2236, align 8
  %2237 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2237, i32 0, i32 0
  store ptr %2235, ptr %2238, align 8
  %2239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2237, i32 0, i32 1
  store i64 1, ptr %2239, align 4
  %2240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2237, i32 0, i32 2
  store i64 1, ptr %2240, align 4
  %2241 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2237, align 8
  %2242 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2234, %"github.com/goplus/llgo/internal/runtime.Slice" %2241, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %2242)
  store ptr %2242, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %2243 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2244 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2245 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %298, ptr %2245, align 8
  %2246 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 1
  store ptr %2243, ptr %2246, align 8
  %2247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2247, align 8
  %2248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2248, align 8
  %2249 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2244, align 8
  %2250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 0
  store ptr @25, ptr %2251, align 8
  %2252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, i32 0, i32 1
  store i64 6, ptr %2252, align 4
  %2253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2250, align 8
  %2254 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2255 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2253, ptr %2256, align 8
  %2257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 1
  store ptr %2254, ptr %2257, align 8
  %2258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2258, align 8
  %2259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2259, align 8
  %2260 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2255, align 8
  %2261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, i32 0, i32 0
  store ptr @22, ptr %2262, align 8
  %2263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, i32 0, i32 1
  store i64 4, ptr %2263, align 4
  %2264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2261, align 8
  %2265 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2266 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2264, ptr %2267, align 8
  %2268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 1
  store ptr %2265, ptr %2268, align 8
  %2269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2269, align 8
  %2270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2270, align 8
  %2271 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2266, align 8
  %2272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, i32 0, i32 0
  store ptr @26, ptr %2273, align 8
  %2274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, i32 0, i32 1
  store i64 10, ptr %2274, align 4
  %2275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2272, align 8
  %2276 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2277 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2275, ptr %2278, align 8
  %2279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 1
  store ptr %2276, ptr %2279, align 8
  %2280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2280, align 8
  %2281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2281, align 8
  %2282 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2277, align 8
  %2283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, i32 0, i32 0
  store ptr @27, ptr %2284, align 8
  %2285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, i32 0, i32 1
  store i64 8, ptr %2285, align 4
  %2286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2283, align 8
  %2287 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2288 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2286, ptr %2289, align 8
  %2290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 1
  store ptr %2287, ptr %2290, align 8
  %2291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2291, align 8
  %2292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2292, align 8
  %2293 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2288, align 8
  %2294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, i32 0, i32 0
  store ptr @30, ptr %2295, align 8
  %2296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, i32 0, i32 1
  store i64 7, ptr %2296, align 4
  %2297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2294, align 8
  %2298 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2299 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2297, ptr %2300, align 8
  %2301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 1
  store ptr %2298, ptr %2301, align 8
  %2302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2302, align 8
  %2303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2303, align 8
  %2304 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2299, align 8
  %2305 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2305, i32 0, i32 0
  store ptr @31, ptr %2306, align 8
  %2307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2305, i32 0, i32 1
  store i64 10, ptr %2307, align 4
  %2308 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2305, align 8
  %2309 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2310 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2310, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2308, ptr %2311, align 8
  %2312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2310, i32 0, i32 1
  store ptr %2309, ptr %2312, align 8
  %2313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2310, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2313, align 8
  %2314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2310, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2314, align 8
  %2315 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2310, align 8
  %2316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2316, i32 0, i32 0
  store ptr @32, ptr %2317, align 8
  %2318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2316, i32 0, i32 1
  store i64 13, ptr %2318, align 4
  %2319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2316, align 8
  %2320 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2321 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2321, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2319, ptr %2322, align 8
  %2323 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2321, i32 0, i32 1
  store ptr %2320, ptr %2323, align 8
  %2324 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2321, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2324, align 8
  %2325 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2321, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2325, align 8
  %2326 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2321, align 8
  %2327 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2327, i32 0, i32 0
  store ptr @35, ptr %2328, align 8
  %2329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2327, i32 0, i32 1
  store i64 13, ptr %2329, align 4
  %2330 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2327, align 8
  %2331 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2332 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2332, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2330, ptr %2333, align 8
  %2334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2332, i32 0, i32 1
  store ptr %2331, ptr %2334, align 8
  %2335 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2332, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2335, align 8
  %2336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2332, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2336, align 8
  %2337 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2332, align 8
  %2338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2338, i32 0, i32 0
  store ptr @36, ptr %2339, align 8
  %2340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2338, i32 0, i32 1
  store i64 4, ptr %2340, align 4
  %2341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2338, align 8
  %2342 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2343 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2344 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2343, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2341, ptr %2344, align 8
  %2345 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2343, i32 0, i32 1
  store ptr %2342, ptr %2345, align 8
  %2346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2343, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2346, align 8
  %2347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2343, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2347, align 8
  %2348 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2343, align 8
  %2349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2349, i32 0, i32 0
  store ptr @24, ptr %2350, align 8
  %2351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2349, i32 0, i32 1
  store i64 3, ptr %2351, align 4
  %2352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2349, align 8
  %2353 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2354 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2354, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2352, ptr %2355, align 8
  %2356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2354, i32 0, i32 1
  store ptr %2353, ptr %2356, align 8
  %2357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2354, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2357, align 8
  %2358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2354, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2358, align 8
  %2359 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2354, align 8
  %2360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2360, i32 0, i32 0
  store ptr @39, ptr %2361, align 8
  %2362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2360, i32 0, i32 1
  store i64 7, ptr %2362, align 4
  %2363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2360, align 8
  %2364 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2365 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2366 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2365, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2363, ptr %2366, align 8
  %2367 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2365, i32 0, i32 1
  store ptr %2364, ptr %2367, align 8
  %2368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2365, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2368, align 8
  %2369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2365, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2369, align 8
  %2370 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2365, align 8
  %2371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2371, i32 0, i32 0
  store ptr @51, ptr %2372, align 8
  %2373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2371, i32 0, i32 1
  store i64 8, ptr %2373, align 4
  %2374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2371, align 8
  %2375 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2376 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2374, ptr %2377, align 8
  %2378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 1
  store ptr %2375, ptr %2378, align 8
  %2379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2379, align 8
  %2380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2380, align 8
  %2381 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2376, align 8
  %2382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, i32 0, i32 0
  store ptr @53, ptr %2383, align 8
  %2384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, i32 0, i32 1
  store i64 4, ptr %2384, align 4
  %2385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2382, align 8
  %2386 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2387 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2387, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2385, ptr %2388, align 8
  %2389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2387, i32 0, i32 1
  store ptr %2386, ptr %2389, align 8
  %2390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2387, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2390, align 8
  %2391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2387, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2391, align 8
  %2392 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2387, align 8
  %2393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2393, i32 0, i32 0
  store ptr @37, ptr %2394, align 8
  %2395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2393, i32 0, i32 1
  store i64 6, ptr %2395, align 4
  %2396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2393, align 8
  %2397 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2398 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2398, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2396, ptr %2399, align 8
  %2400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2398, i32 0, i32 1
  store ptr %2397, ptr %2400, align 8
  %2401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2398, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2401, align 8
  %2402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2398, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2402, align 8
  %2403 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2398, align 8
  %2404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2404, i32 0, i32 0
  store ptr @54, ptr %2405, align 8
  %2406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2404, i32 0, i32 1
  store i64 10, ptr %2406, align 4
  %2407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2404, align 8
  %2408 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2409 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2409, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2407, ptr %2410, align 8
  %2411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2409, i32 0, i32 1
  store ptr %2408, ptr %2411, align 8
  %2412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2409, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2412, align 8
  %2413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2409, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2413, align 8
  %2414 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2409, align 8
  %2415 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2415, i32 0, i32 0
  store ptr @56, ptr %2416, align 8
  %2417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2415, i32 0, i32 1
  store i64 8, ptr %2417, align 4
  %2418 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2415, align 8
  %2419 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2420 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2421 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2420, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2418, ptr %2421, align 8
  %2422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2420, i32 0, i32 1
  store ptr %2419, ptr %2422, align 8
  %2423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2420, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2423, align 8
  %2424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2420, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2424, align 8
  %2425 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2420, align 8
  %2426 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %2427 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %294, ptr %2427, align 8
  %2428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2249, ptr %2428, align 8
  %2429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2260, ptr %2429, align 8
  %2430 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2271, ptr %2430, align 8
  %2431 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2282, ptr %2431, align 8
  %2432 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2293, ptr %2432, align 8
  %2433 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2304, ptr %2433, align 8
  %2434 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2315, ptr %2434, align 8
  %2435 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2326, ptr %2435, align 8
  %2436 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2337, ptr %2436, align 8
  %2437 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2348, ptr %2437, align 8
  %2438 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2359, ptr %2438, align 8
  %2439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2370, ptr %2439, align 8
  %2440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2381, ptr %2440, align 8
  %2441 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2392, ptr %2441, align 8
  %2442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2403, ptr %2442, align 8
  %2443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2414, ptr %2443, align 8
  %2444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2426, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2425, ptr %2444, align 8
  %2445 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, i32 0, i32 0
  store ptr %2426, ptr %2446, align 8
  %2447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, i32 0, i32 1
  store i64 18, ptr %2447, align 4
  %2448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, i32 0, i32 2
  store i64 18, ptr %2448, align 4
  %2449 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2445, align 8
  %2450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2450, i32 0, i32 0
  store ptr @38, ptr %2451, align 8
  %2452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2450, i32 0, i32 1
  store i64 35, ptr %2452, align 4
  %2453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2450, align 8
  %2454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2454, i32 0, i32 0
  store ptr @21, ptr %2455, align 8
  %2456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2454, i32 0, i32 1
  store i64 4, ptr %2456, align 4
  %2457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2454, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %3, %"github.com/goplus/llgo/internal/runtime.String" %2453, %"github.com/goplus/llgo/internal/runtime.String" %2457, ptr %263, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2449)
  br label %_llgo_14
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

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

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*Kind).String"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.Kind.String"(i64)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*MapType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType"(ptr)

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

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface"(ptr)

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

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/abi.(*ArrayType).String"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface"(ptr)

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

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)
