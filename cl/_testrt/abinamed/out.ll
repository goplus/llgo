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
@"main.struct$FYfyNCnlvkYOztpQWjt-y8D_WY3tpxyt5Qo62CJffTE" = global ptr null, align 8
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
  %0 = load ptr, ptr @_llgo_main.T, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 0)
  store ptr %2, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %2)
  %12 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %6, ptr %11, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %10, i1 false)
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @1, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 1, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 18)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %23 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %16, ptr %22, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %20, i1 false)
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
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
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
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2)
  %43 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %37, ptr %42, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %41, i1 false)
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 0
  store ptr @4, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 1
  store i64 4, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %49 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %48, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %12, ptr %49, align 8
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
  br i1 %1, label %_llgo_3, label %_llgo_4

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
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %2, %"github.com/goplus/llgo/internal/runtime.String" %63, %"github.com/goplus/llgo/internal/runtime.String" %67, ptr %59, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %21, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %70 = load ptr, ptr @_llgo_Pointer, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  store ptr %72, ptr @_llgo_Pointer, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %73 = load ptr, ptr @_llgo_Pointer, align 8
  %74 = load ptr, ptr @_llgo_Pointer, align 8
  %75 = load ptr, ptr @_llgo_Pointer, align 8
  %76 = load ptr, ptr @_llgo_bool, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %78, i32 0, i32 6
  %80 = load i8, ptr %79, align 1
  %81 = or i8 %80, 32
  store i8 %81, ptr %79, align 1
  store ptr %78, ptr @_llgo_bool, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %82 = load ptr, ptr @_llgo_bool, align 8
  %83 = load ptr, ptr @"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 0
  store ptr @6, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 1
  store i64 5, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %85, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr null, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 0, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %94 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %88, ptr %93, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %92, i1 false)
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 0
  store ptr @7, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 1
  store i64 8, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %95, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 0
  store ptr null, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 1
  store i64 0, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %99, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %104 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %98, ptr %103, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %102, i1 false)
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 0
  store ptr @8, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 1
  store i64 4, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %105, align 8
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %109, i32 0, i32 0
  store ptr null, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %109, i32 0, i32 1
  store i64 0, ptr %111, align 4
  %112 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %109, align 8
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %114 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %108, ptr %113, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %112, i1 false)
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @9, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 5, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 0
  store ptr null, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 1
  store i64 0, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %119, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 8, i64 0, i64 0)
  %124 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %118, ptr %123, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %122, i1 false)
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 0
  store ptr @10, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 1
  store i64 6, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %125, align 8
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 0
  store ptr null, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 1
  store i64 0, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %129, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %134 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %128, ptr %133, i64 21, %"github.com/goplus/llgo/internal/runtime.String" %132, i1 false)
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %135, i32 0, i32 0
  store ptr @11, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %135, i32 0, i32 1
  store i64 11, ptr %137, align 4
  %138 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %135, align 8
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 0
  store ptr null, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 1
  store i64 0, ptr %141, align 4
  %142 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %139, align 8
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %144 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %138, ptr %143, i64 22, %"github.com/goplus/llgo/internal/runtime.String" %142, i1 false)
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 0
  store ptr @12, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 1
  store i64 5, ptr %147, align 4
  %148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %145, align 8
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 0
  store ptr null, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 1
  store i64 0, ptr %151, align 4
  %152 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %149, align 8
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %154 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %148, ptr %153, i64 23, %"github.com/goplus/llgo/internal/runtime.String" %152, i1 false)
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @13, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 5, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr null, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 0, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 0
  store ptr @14, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 1
  store i64 1, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %163, align 8
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 0
  store ptr null, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 1
  store i64 0, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %167, align 8
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %172 = getelementptr ptr, ptr %171, i64 0
  store ptr %73, ptr %172, align 8
  %173 = getelementptr ptr, ptr %171, i64 1
  store ptr %74, ptr %173, align 8
  %174 = getelementptr ptr, ptr %171, i64 2
  store ptr %75, ptr %174, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 0
  store ptr %171, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 1
  store i64 3, ptr %177, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 2
  store i64 3, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %181 = getelementptr ptr, ptr %180, i64 0
  store ptr %82, ptr %181, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 0
  store ptr %180, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 1
  store i64 1, ptr %184, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 2
  store i64 1, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, align 8
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %186, i1 false)
  %188 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %166, ptr %187, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %170, i1 false)
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 0
  store ptr @15, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %189, i32 0, i32 1
  store i64 4, ptr %191, align 4
  %192 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %189, align 8
  %193 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 0
  store ptr null, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %193, i32 0, i32 1
  store i64 0, ptr %195, align 4
  %196 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %193, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  %198 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %192, ptr %197, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %196, i1 false)
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr @4, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 4, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  %203 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %204 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %203, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %188, ptr %204, align 8
  %205 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %203, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %198, ptr %205, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 0
  store ptr %203, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 1
  store i64 2, ptr %208, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 2
  store i64 2, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, align 8
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %202, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %210)
  %212 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %158, ptr %211, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %162, i1 false)
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @16, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 6, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr null, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 0, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %221)
  %223 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %216, ptr %222, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %220, i1 false)
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @17, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 4, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr null, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 0, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  %232 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %233 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %227, ptr %232, i64 48, %"github.com/goplus/llgo/internal/runtime.String" %231, i1 false)
  %234 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 0
  store ptr @18, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 1
  store i64 10, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %234, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 0
  store ptr null, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %238, i32 0, i32 1
  store i64 0, ptr %240, align 4
  %241 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %238, align 8
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %243 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %237, ptr %242, i64 64, %"github.com/goplus/llgo/internal/runtime.String" %241, i1 false)
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 0
  store ptr @4, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 1
  store i64 4, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %244, align 8
  %248 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 616)
  %249 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %94, ptr %249, align 8
  %250 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %104, ptr %250, align 8
  %251 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %114, ptr %251, align 8
  %252 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %124, ptr %252, align 8
  %253 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %134, ptr %253, align 8
  %254 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %144, ptr %254, align 8
  %255 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %154, ptr %255, align 8
  %256 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %212, ptr %256, align 8
  %257 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %223, ptr %257, align 8
  %258 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 9
  store %"github.com/goplus/llgo/internal/abi.StructField" %233, ptr %258, align 8
  %259 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %248, i64 10
  store %"github.com/goplus/llgo/internal/abi.StructField" %243, ptr %259, align 8
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 0
  store ptr %248, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 1
  store i64 11, ptr %262, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 2
  store i64 11, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %247, i64 72, %"github.com/goplus/llgo/internal/runtime.Slice" %264)
  store ptr %265, ptr @"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %266 = load ptr, ptr @"_llgo_struct$13P_TvKNXommvK6tKt3eRNnJqTcPEFYrHagFiHeRpb0", align 8
  br i1 %69, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 0
  store ptr @19, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 1
  store i64 5, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %267, align 8
  %271 = load ptr, ptr @_llgo_int, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %_llgo_15, label %_llgo_16

_llgo_14:                                         ; preds = %_llgo_104, %_llgo_12
  ret void

_llgo_15:                                         ; preds = %_llgo_13
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %273, i32 0, i32 6
  %275 = load i8, ptr %274, align 1
  %276 = or i8 %275, 32
  store i8 %276, ptr %274, align 1
  store ptr %273, ptr @_llgo_int, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_13
  %277 = load ptr, ptr @_llgo_int, align 8
  %278 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %279 = icmp eq ptr %278, null
  br i1 %279, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %280 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 0
  store ptr %280, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 1
  store i64 0, ptr %283, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 2
  store i64 0, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %287 = getelementptr ptr, ptr %286, i64 0
  store ptr %277, ptr %287, align 8
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 0
  store ptr %286, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 1
  store i64 1, ptr %290, align 4
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 2
  store i64 1, ptr %291, align 4
  %292 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, align 8
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %285, %"github.com/goplus/llgo/internal/runtime.Slice" %292, i1 false)
  store ptr %293, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %294 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %295 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %270, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 1
  store ptr %294, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Align", ptr %299, align 8
  %300 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %295, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 0
  store ptr @20, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 1
  store i64 9, ptr %303, align 4
  %304 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %301, align 8
  %305 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %306 = icmp eq ptr %305, null
  br i1 %306, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %307 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 16)
  store ptr %307, ptr @"_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %308 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  %309 = icmp eq ptr %308, null
  br i1 %309, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 0
  store ptr @21, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 1
  store i64 4, ptr %312, align 4
  %313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %310, align 8
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 0
  store ptr null, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 1
  store i64 0, ptr %316, align 4
  %317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %314, align 8
  %318 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %313, ptr %21, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %317, i1 true)
  %319 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %319, i32 0, i32 0
  store ptr @22, ptr %320, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %319, i32 0, i32 1
  store i64 4, ptr %321, align 4
  %322 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %319, align 8
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr null, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 0, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %328 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %322, ptr %327, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %326, i1 false)
  %329 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 0
  store ptr @23, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 1
  store i64 5, ptr %331, align 4
  %332 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %329, align 8
  %333 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 0
  store ptr null, ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 1
  store i64 0, ptr %335, align 4
  %336 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %333, align 8
  %337 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %338 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %332, ptr %337, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %336, i1 false)
  %339 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %339, i32 0, i32 0
  store ptr @24, ptr %340, align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %339, i32 0, i32 1
  store i64 3, ptr %341, align 4
  %342 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %339, align 8
  %343 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 0
  store ptr null, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 1
  store i64 0, ptr %345, align 4
  %346 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %343, align 8
  %347 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %348 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %342, ptr %347, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %346, i1 false)
  %349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 0
  store ptr @4, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 1
  store i64 4, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %349, align 8
  %353 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %354 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %353, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %318, ptr %354, align 8
  %355 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %353, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %328, ptr %355, align 8
  %356 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %353, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %338, ptr %356, align 8
  %357 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %353, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %348, ptr %357, align 8
  %358 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, i32 0, i32 0
  store ptr %353, ptr %359, align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, i32 0, i32 1
  store i64 4, ptr %360, align 4
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, i32 0, i32 2
  store i64 4, ptr %361, align 4
  %362 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %358, align 8
  %363 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %352, i64 96, %"github.com/goplus/llgo/internal/runtime.Slice" %362)
  store ptr %363, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %364 = load ptr, ptr @"_llgo_struct$eLreYy_0Tx9Ip-rgTmC6_uCvf27HVl_zBUTfLS0WYaY", align 8
  br i1 %306, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr @19, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 5, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %370 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %368, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i32 0, i32 1
  store ptr %369, ptr %372, align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %373, align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Align", ptr %374, align 8
  %375 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %370, align 8
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr @20, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 9, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %381 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %379, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 1
  store ptr %380, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).ArrayType", ptr %385, align 8
  %386 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %381, align 8
  %387 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %387, i32 0, i32 0
  store ptr @25, ptr %388, align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %387, i32 0, i32 1
  store i64 6, ptr %389, align 4
  %390 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %387, align 8
  %391 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %_llgo_25, label %_llgo_26

_llgo_24:                                         ; preds = %_llgo_100, %_llgo_22
  %393 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %394 = icmp eq ptr %393, null
  br i1 %394, label %_llgo_101, label %_llgo_102

_llgo_25:                                         ; preds = %_llgo_23
  %395 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  store ptr %395, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_23
  %396 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.Type", align 8
  %397 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %398 = icmp eq ptr %397, null
  br i1 %398, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %399 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %400 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, i32 0, i32 0
  store ptr %399, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, i32 0, i32 1
  store i64 0, ptr %402, align 4
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, i32 0, i32 2
  store i64 0, ptr %403, align 4
  %404 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, align 8
  %405 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %406 = getelementptr ptr, ptr %405, i64 0
  store ptr %396, ptr %406, align 8
  %407 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %407, i32 0, i32 0
  store ptr %405, ptr %408, align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %407, i32 0, i32 1
  store i64 1, ptr %409, align 4
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %407, i32 0, i32 2
  store i64 1, ptr %410, align 4
  %411 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %407, align 8
  %412 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %404, %"github.com/goplus/llgo/internal/runtime.Slice" %411, i1 false)
  store ptr %412, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %413 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %414 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %390, ptr %415, align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 1
  store ptr %413, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Common", ptr %418, align 8
  %419 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %414, align 8
  %420 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %420, i32 0, i32 0
  store ptr @26, ptr %421, align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %420, i32 0, i32 1
  store i64 10, ptr %422, align 4
  %423 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %420, align 8
  %424 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %425 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %423, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i32 0, i32 1
  store ptr %424, ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %428, align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FieldAlign", ptr %429, align 8
  %430 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %425, align 8
  %431 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %431, i32 0, i32 0
  store ptr @27, ptr %432, align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %431, i32 0, i32 1
  store i64 8, ptr %433, align 4
  %434 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %431, align 8
  %435 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %436 = icmp eq ptr %435, null
  br i1 %436, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %437 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 19)
  store ptr %437, ptr @"_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %438 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  %439 = icmp eq ptr %438, null
  br i1 %439, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %440 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %441 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %440, i32 0, i32 0
  store ptr @21, ptr %441, align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %440, i32 0, i32 1
  store i64 4, ptr %442, align 4
  %443 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %440, align 8
  %444 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %444, i32 0, i32 0
  store ptr null, ptr %445, align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %444, i32 0, i32 1
  store i64 0, ptr %446, align 4
  %447 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %444, align 8
  %448 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %443, ptr %21, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %447, i1 true)
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 0
  store ptr @28, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 1
  store i64 2, ptr %451, align 4
  %452 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %449, align 8
  %453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 0
  store ptr null, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 1
  store i64 0, ptr %455, align 4
  %456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %453, align 8
  %457 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %458 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %457)
  %459 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %452, ptr %458, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %456, i1 false)
  %460 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %460, i32 0, i32 0
  store ptr @29, ptr %461, align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %460, i32 0, i32 1
  store i64 3, ptr %462, align 4
  %463 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %460, align 8
  %464 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %464, i32 0, i32 0
  store ptr null, ptr %465, align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %464, i32 0, i32 1
  store i64 0, ptr %466, align 4
  %467 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %464, align 8
  %468 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %469 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %468)
  %470 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %463, ptr %469, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %467, i1 false)
  %471 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %471, i32 0, i32 0
  store ptr @4, ptr %472, align 8
  %473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %471, i32 0, i32 1
  store i64 4, ptr %473, align 4
  %474 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %471, align 8
  %475 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %476 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %475, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %448, ptr %476, align 8
  %477 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %475, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %459, ptr %477, align 8
  %478 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %475, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %470, ptr %478, align 8
  %479 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %479, i32 0, i32 0
  store ptr %475, ptr %480, align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %479, i32 0, i32 1
  store i64 3, ptr %481, align 4
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %479, i32 0, i32 2
  store i64 3, ptr %482, align 4
  %483 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %479, align 8
  %484 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %474, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %483)
  store ptr %484, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %485 = load ptr, ptr @"_llgo_struct$wRu7InfmQeSkq7akLN3soDNninnS1dQajawdYvmHbzw", align 8
  br i1 %436, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 0
  store ptr @19, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 1
  store i64 5, ptr %488, align 4
  %489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %486, align 8
  %490 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %491 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %491, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %489, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %491, i32 0, i32 1
  store ptr %490, ptr %493, align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %491, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %494, align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %491, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Align", ptr %495, align 8
  %496 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %491, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr @20, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 9, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %502 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %502, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %500, ptr %503, align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %502, i32 0, i32 1
  store ptr %501, ptr %504, align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %502, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %505, align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %502, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).ArrayType", ptr %506, align 8
  %507 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %502, align 8
  %508 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %508, i32 0, i32 0
  store ptr @25, ptr %509, align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %508, i32 0, i32 1
  store i64 6, ptr %510, align 4
  %511 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %508, align 8
  %512 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %513 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %513, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %511, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %513, i32 0, i32 1
  store ptr %512, ptr %515, align 8
  %516 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %513, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %516, align 8
  %517 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %513, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Common", ptr %517, align 8
  %518 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %513, align 8
  %519 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 0
  store ptr @22, ptr %520, align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 1
  store i64 4, ptr %521, align 4
  %522 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %519, align 8
  %523 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %524 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %524, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %522, ptr %525, align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %524, i32 0, i32 1
  store ptr %523, ptr %526, align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %524, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %527, align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %524, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Elem", ptr %528, align 8
  %529 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %524, align 8
  %530 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %530, i32 0, i32 0
  store ptr @26, ptr %531, align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %530, i32 0, i32 1
  store i64 10, ptr %532, align 4
  %533 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %530, align 8
  %534 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %535 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %535, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %533, ptr %536, align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %535, i32 0, i32 1
  store ptr %534, ptr %537, align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %535, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %535, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FieldAlign", ptr %539, align 8
  %540 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %535, align 8
  %541 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 0
  store ptr @27, ptr %542, align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 1
  store i64 8, ptr %543, align 4
  %544 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %541, align 8
  %545 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %546 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %546, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %544, ptr %547, align 8
  %548 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %546, i32 0, i32 1
  store ptr %545, ptr %548, align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %546, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %549, align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %546, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).FuncType", ptr %550, align 8
  %551 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %546, align 8
  %552 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %552, i32 0, i32 0
  store ptr @30, ptr %553, align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %552, i32 0, i32 1
  store i64 7, ptr %554, align 4
  %555 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %552, align 8
  %556 = load ptr, ptr @_llgo_bool, align 8
  %557 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %558 = icmp eq ptr %557, null
  br i1 %558, label %_llgo_35, label %_llgo_36

_llgo_34:                                         ; preds = %_llgo_96, %_llgo_32
  %559 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %560 = icmp eq ptr %559, null
  br i1 %560, label %_llgo_97, label %_llgo_98

_llgo_35:                                         ; preds = %_llgo_33
  %561 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %562 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, i32 0, i32 0
  store ptr %561, ptr %563, align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, i32 0, i32 1
  store i64 0, ptr %564, align 4
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, i32 0, i32 2
  store i64 0, ptr %565, align 4
  %566 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, align 8
  %567 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %568 = getelementptr ptr, ptr %567, i64 0
  store ptr %556, ptr %568, align 8
  %569 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, i32 0, i32 0
  store ptr %567, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, i32 0, i32 1
  store i64 1, ptr %571, align 4
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, i32 0, i32 2
  store i64 1, ptr %572, align 4
  %573 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, align 8
  %574 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %566, %"github.com/goplus/llgo/internal/runtime.Slice" %573, i1 false)
  store ptr %574, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_33
  %575 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %576 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %555, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 1
  store ptr %575, ptr %578, align 8
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %579, align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).HasName", ptr %580, align 8
  %581 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %576, align 8
  %582 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %582, i32 0, i32 0
  store ptr @31, ptr %583, align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %582, i32 0, i32 1
  store i64 10, ptr %584, align 4
  %585 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %582, align 8
  %586 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %587 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %585, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 1
  store ptr %586, ptr %589, align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %590, align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IfaceIndir", ptr %591, align 8
  %592 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %587, align 8
  %593 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 0
  store ptr @32, ptr %594, align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 1
  store i64 13, ptr %595, align 4
  %596 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %593, align 8
  %597 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %598 = icmp eq ptr %597, null
  br i1 %598, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %599 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 18)
  store ptr %599, ptr @"_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %600 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  %601 = icmp eq ptr %600, null
  br i1 %601, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %602 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 0
  store ptr @21, ptr %603, align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 1
  store i64 4, ptr %604, align 4
  %605 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %602, align 8
  %606 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 0
  store ptr null, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %606, i32 0, i32 1
  store i64 0, ptr %608, align 4
  %609 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %606, align 8
  %610 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %605, ptr %21, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %609, i1 true)
  %611 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %611, i32 0, i32 0
  store ptr @33, ptr %612, align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %611, i32 0, i32 1
  store i64 8, ptr %613, align 4
  %614 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %611, align 8
  %615 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %615, i32 0, i32 0
  store ptr null, ptr %616, align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %615, i32 0, i32 1
  store i64 0, ptr %617, align 4
  %618 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %615, align 8
  %619 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %620 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %614, ptr %619, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %618, i1 false)
  %621 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 0
  store ptr @34, ptr %622, align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 1
  store i64 7, ptr %623, align 4
  %624 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %621, align 8
  %625 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %625, i32 0, i32 0
  store ptr null, ptr %626, align 8
  %627 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %625, i32 0, i32 1
  store i64 0, ptr %627, align 4
  %628 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %625, align 8
  %629 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 3)
  %630 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %629)
  %631 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %624, ptr %630, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %628, i1 false)
  %632 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %633 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %632, i32 0, i32 0
  store ptr @4, ptr %633, align 8
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %632, i32 0, i32 1
  store i64 4, ptr %634, align 4
  %635 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %632, align 8
  %636 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %637 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %636, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %610, ptr %637, align 8
  %638 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %636, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %620, ptr %638, align 8
  %639 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %636, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %631, ptr %639, align 8
  %640 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %641 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %640, i32 0, i32 0
  store ptr %636, ptr %641, align 8
  %642 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %640, i32 0, i32 1
  store i64 3, ptr %642, align 4
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %640, i32 0, i32 2
  store i64 3, ptr %643, align 4
  %644 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %640, align 8
  %645 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %635, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %644)
  store ptr %645, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %646 = load ptr, ptr @"_llgo_struct$mWxYYevLxpL1wQyiQtAy4OszkqTlHtrmEcPpzW9Air4", align 8
  br i1 %598, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %647 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %647, i32 0, i32 0
  store ptr @19, ptr %648, align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %647, i32 0, i32 1
  store i64 5, ptr %649, align 4
  %650 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %647, align 8
  %651 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %652 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %650, ptr %653, align 8
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 1
  store ptr %651, ptr %654, align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %655, align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Align", ptr %656, align 8
  %657 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %652, align 8
  %658 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %658, i32 0, i32 0
  store ptr @20, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %658, i32 0, i32 1
  store i64 9, ptr %660, align 4
  %661 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %658, align 8
  %662 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %663 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %663, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %661, ptr %664, align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %663, i32 0, i32 1
  store ptr %662, ptr %665, align 8
  %666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %663, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %666, align 8
  %667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %663, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).ArrayType", ptr %667, align 8
  %668 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %663, align 8
  %669 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %669, i32 0, i32 0
  store ptr @25, ptr %670, align 8
  %671 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %669, i32 0, i32 1
  store i64 6, ptr %671, align 4
  %672 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %669, align 8
  %673 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %674 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %674, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %672, ptr %675, align 8
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %674, i32 0, i32 1
  store ptr %673, ptr %676, align 8
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %674, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %677, align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %674, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Common", ptr %678, align 8
  %679 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %674, align 8
  %680 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %681 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %680, i32 0, i32 0
  store ptr @22, ptr %681, align 8
  %682 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %680, i32 0, i32 1
  store i64 4, ptr %682, align 4
  %683 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %680, align 8
  %684 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %685 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %685, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %683, ptr %686, align 8
  %687 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %685, i32 0, i32 1
  store ptr %684, ptr %687, align 8
  %688 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %685, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %688, align 8
  %689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %685, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Elem", ptr %689, align 8
  %690 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %685, align 8
  %691 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %691, i32 0, i32 0
  store ptr @26, ptr %692, align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %691, i32 0, i32 1
  store i64 10, ptr %693, align 4
  %694 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %691, align 8
  %695 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %696 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %694, ptr %697, align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 1
  store ptr %695, ptr %698, align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %699, align 8
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FieldAlign", ptr %700, align 8
  %701 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %696, align 8
  %702 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %702, i32 0, i32 0
  store ptr @27, ptr %703, align 8
  %704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %702, i32 0, i32 1
  store i64 8, ptr %704, align 4
  %705 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %702, align 8
  %706 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %707 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %708 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %707, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %705, ptr %708, align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %707, i32 0, i32 1
  store ptr %706, ptr %709, align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %707, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %710, align 8
  %711 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %707, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).FuncType", ptr %711, align 8
  %712 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %707, align 8
  %713 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %713, i32 0, i32 0
  store ptr @30, ptr %714, align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %713, i32 0, i32 1
  store i64 7, ptr %715, align 4
  %716 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %713, align 8
  %717 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %718 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %716, ptr %719, align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 1
  store ptr %717, ptr %720, align 8
  %721 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %721, align 8
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %718, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).HasName", ptr %722, align 8
  %723 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %718, align 8
  %724 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %724, i32 0, i32 0
  store ptr @31, ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %724, i32 0, i32 1
  store i64 10, ptr %726, align 4
  %727 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %724, align 8
  %728 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %729 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %729, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %727, ptr %730, align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %729, i32 0, i32 1
  store ptr %728, ptr %731, align 8
  %732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %729, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %732, align 8
  %733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %729, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IfaceIndir", ptr %733, align 8
  %734 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %729, align 8
  %735 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %736 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %735, i32 0, i32 0
  store ptr @32, ptr %736, align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %735, i32 0, i32 1
  store i64 13, ptr %737, align 4
  %738 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %735, align 8
  %739 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %740 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %738, ptr %741, align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 1
  store ptr %739, ptr %742, align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %743, align 8
  %744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).InterfaceType", ptr %744, align 8
  %745 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %740, align 8
  %746 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %746, i32 0, i32 0
  store ptr @35, ptr %747, align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %746, i32 0, i32 1
  store i64 13, ptr %748, align 4
  %749 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %746, align 8
  %750 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %751 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %749, ptr %752, align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 1
  store ptr %750, ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %754, align 8
  %755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).IsDirectIface", ptr %755, align 8
  %756 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %751, align 8
  %757 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 0
  store ptr @36, ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 1
  store i64 4, ptr %759, align 4
  %760 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %757, align 8
  %761 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %762 = icmp eq ptr %761, null
  br i1 %762, label %_llgo_43, label %_llgo_44

_llgo_42:                                         ; preds = %_llgo_92, %_llgo_40
  %763 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %764 = icmp eq ptr %763, null
  br i1 %764, label %_llgo_93, label %_llgo_94

_llgo_43:                                         ; preds = %_llgo_41
  %765 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 7, i64 1, i64 1)
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %765, i32 0, i32 6
  %767 = load i8, ptr %766, align 1
  %768 = or i8 %767, 32
  store i8 %768, ptr %766, align 1
  store ptr %765, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_41
  %769 = load ptr, ptr @_llgo_uint, align 8
  %770 = icmp eq ptr %769, null
  br i1 %770, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %771 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %772 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %771, i32 0, i32 6
  %773 = load i8, ptr %772, align 1
  %774 = or i8 %773, 32
  store i8 %774, ptr %772, align 1
  store ptr %771, ptr @_llgo_uint, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %775 = load ptr, ptr @_llgo_uint, align 8
  br i1 %762, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %776 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %776, i32 0, i32 0
  store ptr @37, ptr %777, align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %776, i32 0, i32 1
  store i64 6, ptr %778, align 4
  %779 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %776, align 8
  %780 = load ptr, ptr @_llgo_string, align 8
  %781 = icmp eq ptr %780, null
  br i1 %781, label %_llgo_49, label %_llgo_50

_llgo_48:                                         ; preds = %_llgo_52, %_llgo_46
  %782 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.Kind", align 8
  %783 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %784 = icmp eq ptr %783, null
  br i1 %784, label %_llgo_53, label %_llgo_54

_llgo_49:                                         ; preds = %_llgo_47
  %785 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %785, ptr @_llgo_string, align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_47
  %786 = load ptr, ptr @_llgo_string, align 8
  %787 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %788 = icmp eq ptr %787, null
  br i1 %788, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %789 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %790 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %791 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, i32 0, i32 0
  store ptr %789, ptr %791, align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, i32 0, i32 1
  store i64 0, ptr %792, align 4
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, i32 0, i32 2
  store i64 0, ptr %793, align 4
  %794 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, align 8
  %795 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %796 = getelementptr ptr, ptr %795, i64 0
  store ptr %786, ptr %796, align 8
  %797 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %797, i32 0, i32 0
  store ptr %795, ptr %798, align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %797, i32 0, i32 1
  store i64 1, ptr %799, align 4
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %797, i32 0, i32 2
  store i64 1, ptr %800, align 4
  %801 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %797, align 8
  %802 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %794, %"github.com/goplus/llgo/internal/runtime.Slice" %801, i1 false)
  store ptr %802, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %803 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %804 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %804, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %779, ptr %805, align 8
  %806 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %804, i32 0, i32 1
  store ptr %803, ptr %806, align 8
  %807 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %804, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %807, align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %804, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %808, align 8
  %809 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %804, align 8
  %810 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %810, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %779, ptr %811, align 8
  %812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %810, i32 0, i32 1
  store ptr %803, ptr %812, align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %810, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Kind).String", ptr %813, align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %810, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.Kind.String", ptr %814, align 8
  %815 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %810, align 8
  %816 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %817 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %816, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %815, ptr %817, align 8
  %818 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, i32 0, i32 0
  store ptr %816, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, i32 0, i32 1
  store i64 1, ptr %820, align 4
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, i32 0, i32 2
  store i64 1, ptr %821, align 4
  %822 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, align 8
  %823 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %824 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %823, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %809, ptr %824, align 8
  %825 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %825, i32 0, i32 0
  store ptr %823, ptr %826, align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %825, i32 0, i32 1
  store i64 1, ptr %827, align 4
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %825, i32 0, i32 2
  store i64 1, ptr %828, align 4
  %829 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %825, align 8
  %830 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %831 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %830, i32 0, i32 0
  store ptr @38, ptr %831, align 8
  %832 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %830, i32 0, i32 1
  store i64 35, ptr %832, align 4
  %833 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %830, align 8
  %834 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %834, i32 0, i32 0
  store ptr @36, ptr %835, align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %834, i32 0, i32 1
  store i64 4, ptr %836, align 4
  %837 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %834, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %765, %"github.com/goplus/llgo/internal/runtime.String" %833, %"github.com/goplus/llgo/internal/runtime.String" %837, ptr %775, %"github.com/goplus/llgo/internal/runtime.Slice" %822, %"github.com/goplus/llgo/internal/runtime.Slice" %829)
  br label %_llgo_48

_llgo_53:                                         ; preds = %_llgo_48
  %838 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %839 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %839, i32 0, i32 0
  store ptr %838, ptr %840, align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %839, i32 0, i32 1
  store i64 0, ptr %841, align 4
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %839, i32 0, i32 2
  store i64 0, ptr %842, align 4
  %843 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %839, align 8
  %844 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %845 = getelementptr ptr, ptr %844, i64 0
  store ptr %782, ptr %845, align 8
  %846 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %847 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %846, i32 0, i32 0
  store ptr %844, ptr %847, align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %846, i32 0, i32 1
  store i64 1, ptr %848, align 4
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %846, i32 0, i32 2
  store i64 1, ptr %849, align 4
  %850 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %846, align 8
  %851 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %843, %"github.com/goplus/llgo/internal/runtime.Slice" %850, i1 false)
  store ptr %851, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_48
  %852 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %853 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %853, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %760, ptr %854, align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %853, i32 0, i32 1
  store ptr %852, ptr %855, align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %853, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %856, align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %853, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Kind", ptr %857, align 8
  %858 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %853, align 8
  %859 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %859, i32 0, i32 0
  store ptr @24, ptr %860, align 8
  %861 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %859, i32 0, i32 1
  store i64 3, ptr %861, align 4
  %862 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %859, align 8
  %863 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %864 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %865 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %862, ptr %865, align 8
  %866 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 1
  store ptr %863, ptr %866, align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %867, align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %864, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Len", ptr %868, align 8
  %869 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %864, align 8
  %870 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %870, i32 0, i32 0
  store ptr @39, ptr %871, align 8
  %872 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %870, i32 0, i32 1
  store i64 7, ptr %872, align 4
  %873 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %870, align 8
  %874 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %875 = icmp eq ptr %874, null
  br i1 %875, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %876 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 22)
  store ptr %876, ptr @"_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %877 = load ptr, ptr @_llgo_Pointer, align 8
  %878 = load ptr, ptr @_llgo_Pointer, align 8
  %879 = load ptr, ptr @_llgo_uintptr, align 8
  %880 = icmp eq ptr %879, null
  br i1 %880, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %881 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %881, i32 0, i32 6
  %883 = load i8, ptr %882, align 1
  %884 = or i8 %883, 32
  store i8 %884, ptr %882, align 1
  store ptr %881, ptr @_llgo_uintptr, align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %885 = load ptr, ptr @_llgo_uintptr, align 8
  %886 = load ptr, ptr @_llgo_uintptr, align 8
  %887 = load ptr, ptr @"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  %888 = icmp eq ptr %887, null
  br i1 %888, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %889 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %889, i32 0, i32 0
  store ptr @21, ptr %890, align 8
  %891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %889, i32 0, i32 1
  store i64 4, ptr %891, align 4
  %892 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %889, align 8
  %893 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 0
  store ptr null, ptr %894, align 8
  %895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 1
  store i64 0, ptr %895, align 4
  %896 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %893, align 8
  %897 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %892, ptr %21, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %896, i1 true)
  %898 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %898, i32 0, i32 0
  store ptr @40, ptr %899, align 8
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %898, i32 0, i32 1
  store i64 3, ptr %900, align 4
  %901 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %898, align 8
  %902 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %902, i32 0, i32 0
  store ptr null, ptr %903, align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %902, i32 0, i32 1
  store i64 0, ptr %904, align 4
  %905 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %902, align 8
  %906 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %907 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %901, ptr %906, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %905, i1 false)
  %908 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %908, i32 0, i32 0
  store ptr @22, ptr %909, align 8
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %908, i32 0, i32 1
  store i64 4, ptr %910, align 4
  %911 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %908, align 8
  %912 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %912, i32 0, i32 0
  store ptr null, ptr %913, align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %912, i32 0, i32 1
  store i64 0, ptr %914, align 4
  %915 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %912, align 8
  %916 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %917 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %911, ptr %916, i64 80, %"github.com/goplus/llgo/internal/runtime.String" %915, i1 false)
  %918 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %918, i32 0, i32 0
  store ptr @41, ptr %919, align 8
  %920 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %918, i32 0, i32 1
  store i64 6, ptr %920, align 4
  %921 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %918, align 8
  %922 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %922, i32 0, i32 0
  store ptr null, ptr %923, align 8
  %924 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %922, i32 0, i32 1
  store i64 0, ptr %924, align 4
  %925 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %922, align 8
  %926 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %21)
  %927 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %921, ptr %926, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %925, i1 false)
  %928 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 0
  store ptr @42, ptr %929, align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 1
  store i64 6, ptr %930, align 4
  %931 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %928, align 8
  %932 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %932, i32 0, i32 0
  store ptr null, ptr %933, align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %932, i32 0, i32 1
  store i64 0, ptr %934, align 4
  %935 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %932, align 8
  %936 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %936, i32 0, i32 0
  store ptr @14, ptr %937, align 8
  %938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %936, i32 0, i32 1
  store i64 1, ptr %938, align 4
  %939 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %936, align 8
  %940 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %940, i32 0, i32 0
  store ptr null, ptr %941, align 8
  %942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %940, i32 0, i32 1
  store i64 0, ptr %942, align 4
  %943 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %940, align 8
  %944 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %945 = getelementptr ptr, ptr %944, i64 0
  store ptr %877, ptr %945, align 8
  %946 = getelementptr ptr, ptr %944, i64 1
  store ptr %878, ptr %946, align 8
  %947 = getelementptr ptr, ptr %944, i64 2
  store ptr %885, ptr %947, align 8
  %948 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %948, i32 0, i32 0
  store ptr %944, ptr %949, align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %948, i32 0, i32 1
  store i64 3, ptr %950, align 4
  %951 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %948, i32 0, i32 2
  store i64 3, ptr %951, align 4
  %952 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %948, align 8
  %953 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %954 = getelementptr ptr, ptr %953, i64 0
  store ptr %886, ptr %954, align 8
  %955 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %956 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, i32 0, i32 0
  store ptr %953, ptr %956, align 8
  %957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, i32 0, i32 1
  store i64 1, ptr %957, align 4
  %958 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, i32 0, i32 2
  store i64 1, ptr %958, align 4
  %959 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, align 8
  %960 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %952, %"github.com/goplus/llgo/internal/runtime.Slice" %959, i1 false)
  %961 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %939, ptr %960, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %943, i1 false)
  %962 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %963 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %962, i32 0, i32 0
  store ptr @15, ptr %963, align 8
  %964 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %962, i32 0, i32 1
  store i64 4, ptr %964, align 4
  %965 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %962, align 8
  %966 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %967 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %966, i32 0, i32 0
  store ptr null, ptr %967, align 8
  %968 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %966, i32 0, i32 1
  store i64 0, ptr %968, align 4
  %969 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %966, align 8
  %970 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  %971 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %965, ptr %970, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %969, i1 false)
  %972 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %973 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %972, i32 0, i32 0
  store ptr @4, ptr %973, align 8
  %974 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %972, i32 0, i32 1
  store i64 4, ptr %974, align 4
  %975 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %972, align 8
  %976 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %977 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %976, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %961, ptr %977, align 8
  %978 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %976, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %971, ptr %978, align 8
  %979 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %980 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %979, i32 0, i32 0
  store ptr %976, ptr %980, align 8
  %981 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %979, i32 0, i32 1
  store i64 2, ptr %981, align 4
  %982 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %979, i32 0, i32 2
  store i64 2, ptr %982, align 4
  %983 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %979, align 8
  %984 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %975, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %983)
  %985 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %931, ptr %984, i64 96, %"github.com/goplus/llgo/internal/runtime.String" %935, i1 false)
  %986 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %987 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %986, i32 0, i32 0
  store ptr @43, ptr %987, align 8
  %988 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %986, i32 0, i32 1
  store i64 7, ptr %988, align 4
  %989 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %986, align 8
  %990 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %991 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %990, i32 0, i32 0
  store ptr null, ptr %991, align 8
  %992 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %990, i32 0, i32 1
  store i64 0, ptr %992, align 4
  %993 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %990, align 8
  %994 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %995 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %989, ptr %994, i64 112, %"github.com/goplus/llgo/internal/runtime.String" %993, i1 false)
  %996 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %996, i32 0, i32 0
  store ptr @44, ptr %997, align 8
  %998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %996, i32 0, i32 1
  store i64 9, ptr %998, align 4
  %999 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %996, align 8
  %1000 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1001 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1000, i32 0, i32 0
  store ptr null, ptr %1001, align 8
  %1002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1000, i32 0, i32 1
  store i64 0, ptr %1002, align 4
  %1003 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1000, align 8
  %1004 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %1005 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %999, ptr %1004, i64 113, %"github.com/goplus/llgo/internal/runtime.String" %1003, i1 false)
  %1006 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1006, i32 0, i32 0
  store ptr @45, ptr %1007, align 8
  %1008 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1006, i32 0, i32 1
  store i64 10, ptr %1008, align 4
  %1009 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1006, align 8
  %1010 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1011 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1010, i32 0, i32 0
  store ptr null, ptr %1011, align 8
  %1012 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1010, i32 0, i32 1
  store i64 0, ptr %1012, align 4
  %1013 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1010, align 8
  %1014 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %1015 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1009, ptr %1014, i64 114, %"github.com/goplus/llgo/internal/runtime.String" %1013, i1 false)
  %1016 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1017 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1016, i32 0, i32 0
  store ptr @46, ptr %1017, align 8
  %1018 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1016, i32 0, i32 1
  store i64 5, ptr %1018, align 4
  %1019 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1016, align 8
  %1020 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1020, i32 0, i32 0
  store ptr null, ptr %1021, align 8
  %1022 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1020, i32 0, i32 1
  store i64 0, ptr %1022, align 4
  %1023 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1020, align 8
  %1024 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %1025 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1019, ptr %1024, i64 116, %"github.com/goplus/llgo/internal/runtime.String" %1023, i1 false)
  %1026 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1027 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1026, i32 0, i32 0
  store ptr @4, ptr %1027, align 8
  %1028 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1026, i32 0, i32 1
  store i64 4, ptr %1028, align 4
  %1029 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1026, align 8
  %1030 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 504)
  %1031 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %897, ptr %1031, align 8
  %1032 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %907, ptr %1032, align 8
  %1033 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %917, ptr %1033, align 8
  %1034 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %927, ptr %1034, align 8
  %1035 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %985, ptr %1035, align 8
  %1036 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 5
  store %"github.com/goplus/llgo/internal/abi.StructField" %995, ptr %1036, align 8
  %1037 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 6
  store %"github.com/goplus/llgo/internal/abi.StructField" %1005, ptr %1037, align 8
  %1038 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 7
  store %"github.com/goplus/llgo/internal/abi.StructField" %1015, ptr %1038, align 8
  %1039 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1030, i64 8
  store %"github.com/goplus/llgo/internal/abi.StructField" %1025, ptr %1039, align 8
  %1040 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1041 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1040, i32 0, i32 0
  store ptr %1030, ptr %1041, align 8
  %1042 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1040, i32 0, i32 1
  store i64 9, ptr %1042, align 4
  %1043 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1040, i32 0, i32 2
  store i64 9, ptr %1043, align 4
  %1044 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1040, align 8
  %1045 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1029, i64 120, %"github.com/goplus/llgo/internal/runtime.Slice" %1044)
  store ptr %1045, ptr @"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %1046 = load ptr, ptr @"_llgo_struct$Yk42tBqeO4BzIoRAwt__cbPj2UwIDCP07Kg_SR7sBZM", align 8
  br i1 %875, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %1047 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1048 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1047, i32 0, i32 0
  store ptr @19, ptr %1048, align 8
  %1049 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1047, i32 0, i32 1
  store i64 5, ptr %1049, align 4
  %1050 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1047, align 8
  %1051 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1052 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1053 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1052, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1050, ptr %1053, align 8
  %1054 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1052, i32 0, i32 1
  store ptr %1051, ptr %1054, align 8
  %1055 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1052, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1055, align 8
  %1056 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1052, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Align", ptr %1056, align 8
  %1057 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1052, align 8
  %1058 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1059 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1058, i32 0, i32 0
  store ptr @20, ptr %1059, align 8
  %1060 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1058, i32 0, i32 1
  store i64 9, ptr %1060, align 4
  %1061 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1058, align 8
  %1062 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1063 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1064 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1063, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1061, ptr %1064, align 8
  %1065 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1063, i32 0, i32 1
  store ptr %1062, ptr %1065, align 8
  %1066 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1063, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1066, align 8
  %1067 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1063, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ArrayType", ptr %1067, align 8
  %1068 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1063, align 8
  %1069 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1070 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1069, i32 0, i32 0
  store ptr @25, ptr %1070, align 8
  %1071 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1069, i32 0, i32 1
  store i64 6, ptr %1071, align 4
  %1072 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1069, align 8
  %1073 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1074 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1075 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1074, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1072, ptr %1075, align 8
  %1076 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1074, i32 0, i32 1
  store ptr %1073, ptr %1076, align 8
  %1077 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1074, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1077, align 8
  %1078 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1074, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Common", ptr %1078, align 8
  %1079 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1074, align 8
  %1080 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1081 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1080, i32 0, i32 0
  store ptr @26, ptr %1081, align 8
  %1082 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1080, i32 0, i32 1
  store i64 10, ptr %1082, align 4
  %1083 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1080, align 8
  %1084 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1085 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1086 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1085, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1083, ptr %1086, align 8
  %1087 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1085, i32 0, i32 1
  store ptr %1084, ptr %1087, align 8
  %1088 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1085, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1088, align 8
  %1089 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1085, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FieldAlign", ptr %1089, align 8
  %1090 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1085, align 8
  %1091 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1092 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1091, i32 0, i32 0
  store ptr @27, ptr %1092, align 8
  %1093 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1091, i32 0, i32 1
  store i64 8, ptr %1093, align 4
  %1094 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1091, align 8
  %1095 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1096 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1097 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1096, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1094, ptr %1097, align 8
  %1098 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1096, i32 0, i32 1
  store ptr %1095, ptr %1098, align 8
  %1099 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1096, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1099, align 8
  %1100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1096, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).FuncType", ptr %1100, align 8
  %1101 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1096, align 8
  %1102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1102, i32 0, i32 0
  store ptr @30, ptr %1103, align 8
  %1104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1102, i32 0, i32 1
  store i64 7, ptr %1104, align 4
  %1105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1102, align 8
  %1106 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1107 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1108 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1107, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1105, ptr %1108, align 8
  %1109 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1107, i32 0, i32 1
  store ptr %1106, ptr %1109, align 8
  %1110 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1107, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1110, align 8
  %1111 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1107, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HasName", ptr %1111, align 8
  %1112 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1107, align 8
  %1113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1113, i32 0, i32 0
  store ptr @47, ptr %1114, align 8
  %1115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1113, i32 0, i32 1
  store i64 14, ptr %1115, align 4
  %1116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1113, align 8
  %1117 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1118 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1119 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1118, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1116, ptr %1119, align 8
  %1120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1118, i32 0, i32 1
  store ptr %1117, ptr %1120, align 8
  %1121 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1118, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1121, align 8
  %1122 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1118, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).HashMightPanic", ptr %1122, align 8
  %1123 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1118, align 8
  %1124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1124, i32 0, i32 0
  store ptr @31, ptr %1125, align 8
  %1126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1124, i32 0, i32 1
  store i64 10, ptr %1126, align 4
  %1127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1124, align 8
  %1128 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1129 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1129, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1127, ptr %1130, align 8
  %1131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1129, i32 0, i32 1
  store ptr %1128, ptr %1131, align 8
  %1132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1129, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1132, align 8
  %1133 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1129, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IfaceIndir", ptr %1133, align 8
  %1134 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1129, align 8
  %1135 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1135, i32 0, i32 0
  store ptr @48, ptr %1136, align 8
  %1137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1135, i32 0, i32 1
  store i64 12, ptr %1137, align 4
  %1138 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1135, align 8
  %1139 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1140 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1140, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1138, ptr %1141, align 8
  %1142 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1140, i32 0, i32 1
  store ptr %1139, ptr %1142, align 8
  %1143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1140, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1143, align 8
  %1144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1140, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectElem", ptr %1144, align 8
  %1145 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1140, align 8
  %1146 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1146, i32 0, i32 0
  store ptr @49, ptr %1147, align 8
  %1148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1146, i32 0, i32 1
  store i64 11, ptr %1148, align 4
  %1149 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1146, align 8
  %1150 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1151 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1149, ptr %1152, align 8
  %1153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 1
  store ptr %1150, ptr %1153, align 8
  %1154 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1154, align 8
  %1155 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IndirectKey", ptr %1155, align 8
  %1156 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1151, align 8
  %1157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1157, i32 0, i32 0
  store ptr @32, ptr %1158, align 8
  %1159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1157, i32 0, i32 1
  store i64 13, ptr %1159, align 4
  %1160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1157, align 8
  %1161 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1162 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1163 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1162, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1160, ptr %1163, align 8
  %1164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1162, i32 0, i32 1
  store ptr %1161, ptr %1164, align 8
  %1165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1162, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1165, align 8
  %1166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1162, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).InterfaceType", ptr %1166, align 8
  %1167 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1162, align 8
  %1168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1168, i32 0, i32 0
  store ptr @35, ptr %1169, align 8
  %1170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1168, i32 0, i32 1
  store i64 13, ptr %1170, align 4
  %1171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1168, align 8
  %1172 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1173 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1173, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1171, ptr %1174, align 8
  %1175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1173, i32 0, i32 1
  store ptr %1172, ptr %1175, align 8
  %1176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1173, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1176, align 8
  %1177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1173, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).IsDirectIface", ptr %1177, align 8
  %1178 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1173, align 8
  %1179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, i32 0, i32 0
  store ptr @36, ptr %1180, align 8
  %1181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, i32 0, i32 1
  store i64 4, ptr %1181, align 4
  %1182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1179, align 8
  %1183 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1184 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1185 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1184, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1182, ptr %1185, align 8
  %1186 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1184, i32 0, i32 1
  store ptr %1183, ptr %1186, align 8
  %1187 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1184, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1187, align 8
  %1188 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1184, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Kind", ptr %1188, align 8
  %1189 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1184, align 8
  %1190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1190, i32 0, i32 0
  store ptr @24, ptr %1191, align 8
  %1192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1190, i32 0, i32 1
  store i64 3, ptr %1192, align 4
  %1193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1190, align 8
  %1194 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1195 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1196 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1195, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1193, ptr %1196, align 8
  %1197 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1195, i32 0, i32 1
  store ptr %1194, ptr %1197, align 8
  %1198 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1195, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1198, align 8
  %1199 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1195, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Len", ptr %1199, align 8
  %1200 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1195, align 8
  %1201 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1201, i32 0, i32 0
  store ptr @39, ptr %1202, align 8
  %1203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1201, i32 0, i32 1
  store i64 7, ptr %1203, align 4
  %1204 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1201, align 8
  %1205 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1206 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1206, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1204, ptr %1207, align 8
  %1208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1206, i32 0, i32 1
  store ptr %1205, ptr %1208, align 8
  %1209 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1206, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1209, align 8
  %1210 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1206, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).MapType", ptr %1210, align 8
  %1211 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1206, align 8
  %1212 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1212, i32 0, i32 0
  store ptr @50, ptr %1213, align 8
  %1214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1212, i32 0, i32 1
  store i64 13, ptr %1214, align 4
  %1215 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1212, align 8
  %1216 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1217 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1218 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1217, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1215, ptr %1218, align 8
  %1219 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1217, i32 0, i32 1
  store ptr %1216, ptr %1219, align 8
  %1220 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1217, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1220, align 8
  %1221 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1217, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).NeedKeyUpdate", ptr %1221, align 8
  %1222 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1217, align 8
  %1223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1223, i32 0, i32 0
  store ptr @51, ptr %1224, align 8
  %1225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1223, i32 0, i32 1
  store i64 8, ptr %1225, align 4
  %1226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1223, align 8
  %1227 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1228 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1229 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1228, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1226, ptr %1229, align 8
  %1230 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1228, i32 0, i32 1
  store ptr %1227, ptr %1230, align 8
  %1231 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1228, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1231, align 8
  %1232 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1228, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Pointers", ptr %1232, align 8
  %1233 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1228, align 8
  %1234 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1234, i32 0, i32 0
  store ptr @52, ptr %1235, align 8
  %1236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1234, i32 0, i32 1
  store i64 12, ptr %1236, align 4
  %1237 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1234, align 8
  %1238 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1239 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1240 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1239, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1237, ptr %1240, align 8
  %1241 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1239, i32 0, i32 1
  store ptr %1238, ptr %1241, align 8
  %1242 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1239, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1242, align 8
  %1243 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1239, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).ReflexiveKey", ptr %1243, align 8
  %1244 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1239, align 8
  %1245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1245, i32 0, i32 0
  store ptr @53, ptr %1246, align 8
  %1247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1245, i32 0, i32 1
  store i64 4, ptr %1247, align 4
  %1248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1245, align 8
  %1249 = load ptr, ptr @_llgo_uintptr, align 8
  %1250 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %_llgo_63, label %_llgo_64

_llgo_62:                                         ; preds = %_llgo_88, %_llgo_60
  %1252 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %_llgo_89, label %_llgo_90

_llgo_63:                                         ; preds = %_llgo_61
  %1254 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1255 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1255, i32 0, i32 0
  store ptr %1254, ptr %1256, align 8
  %1257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1255, i32 0, i32 1
  store i64 0, ptr %1257, align 4
  %1258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1255, i32 0, i32 2
  store i64 0, ptr %1258, align 4
  %1259 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1255, align 8
  %1260 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1261 = getelementptr ptr, ptr %1260, i64 0
  store ptr %1249, ptr %1261, align 8
  %1262 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1262, i32 0, i32 0
  store ptr %1260, ptr %1263, align 8
  %1264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1262, i32 0, i32 1
  store i64 1, ptr %1264, align 4
  %1265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1262, i32 0, i32 2
  store i64 1, ptr %1265, align 4
  %1266 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1262, align 8
  %1267 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1259, %"github.com/goplus/llgo/internal/runtime.Slice" %1266, i1 false)
  store ptr %1267, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_61
  %1268 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1269 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1269, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1248, ptr %1270, align 8
  %1271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1269, i32 0, i32 1
  store ptr %1268, ptr %1271, align 8
  %1272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1269, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1272, align 8
  %1273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1269, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Size", ptr %1273, align 8
  %1274 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1269, align 8
  %1275 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1275, i32 0, i32 0
  store ptr @37, ptr %1276, align 8
  %1277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1275, i32 0, i32 1
  store i64 6, ptr %1277, align 4
  %1278 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1275, align 8
  %1279 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1280 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1280, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1278, ptr %1281, align 8
  %1282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1280, i32 0, i32 1
  store ptr %1279, ptr %1282, align 8
  %1283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1280, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1283, align 8
  %1284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1280, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).String", ptr %1284, align 8
  %1285 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1280, align 8
  %1286 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1286, i32 0, i32 0
  store ptr @54, ptr %1287, align 8
  %1288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1286, i32 0, i32 1
  store i64 10, ptr %1288, align 4
  %1289 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1286, align 8
  %1290 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %1292 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 18)
  store ptr %1292, ptr @"_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %1293 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %1295 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1295, i32 0, i32 0
  store ptr @21, ptr %1296, align 8
  %1297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1295, i32 0, i32 1
  store i64 4, ptr %1297, align 4
  %1298 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1295, align 8
  %1299 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1299, i32 0, i32 0
  store ptr null, ptr %1300, align 8
  %1301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1299, i32 0, i32 1
  store i64 0, ptr %1301, align 4
  %1302 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1299, align 8
  %1303 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1298, ptr %21, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1302, i1 true)
  %1304 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, i32 0, i32 0
  store ptr @33, ptr %1305, align 8
  %1306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, i32 0, i32 1
  store i64 8, ptr %1306, align 4
  %1307 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1304, align 8
  %1308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1308, i32 0, i32 0
  store ptr null, ptr %1309, align 8
  %1310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1308, i32 0, i32 1
  store i64 0, ptr %1310, align 4
  %1311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1308, align 8
  %1312 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1313 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1307, ptr %1312, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %1311, i1 false)
  %1314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1314, i32 0, i32 0
  store ptr @55, ptr %1315, align 8
  %1316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1314, i32 0, i32 1
  store i64 6, ptr %1316, align 4
  %1317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1314, align 8
  %1318 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1318, i32 0, i32 0
  store ptr null, ptr %1319, align 8
  %1320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1318, i32 0, i32 1
  store i64 0, ptr %1320, align 4
  %1321 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1318, align 8
  %1322 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 2)
  %1323 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1322)
  %1324 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1317, ptr %1323, i64 88, %"github.com/goplus/llgo/internal/runtime.String" %1321, i1 false)
  %1325 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1325, i32 0, i32 0
  store ptr @4, ptr %1326, align 8
  %1327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1325, i32 0, i32 1
  store i64 4, ptr %1327, align 4
  %1328 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1325, align 8
  %1329 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %1330 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1329, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1303, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1329, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1313, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1329, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1324, ptr %1332, align 8
  %1333 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1333, i32 0, i32 0
  store ptr %1329, ptr %1334, align 8
  %1335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1333, i32 0, i32 1
  store i64 3, ptr %1335, align 4
  %1336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1333, i32 0, i32 2
  store i64 3, ptr %1336, align 4
  %1337 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1333, align 8
  %1338 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1328, i64 112, %"github.com/goplus/llgo/internal/runtime.Slice" %1337)
  store ptr %1338, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %1339 = load ptr, ptr @"_llgo_struct$K_cvuhBwc2_5r7UW089ibWfcfsGoDb4pZ7K19IcMTk0", align 8
  br i1 %1291, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %1340 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1340, i32 0, i32 0
  store ptr @19, ptr %1341, align 8
  %1342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1340, i32 0, i32 1
  store i64 5, ptr %1342, align 4
  %1343 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1340, align 8
  %1344 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1345 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1345, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1343, ptr %1346, align 8
  %1347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1345, i32 0, i32 1
  store ptr %1344, ptr %1347, align 8
  %1348 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1345, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1348, align 8
  %1349 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1345, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Align", ptr %1349, align 8
  %1350 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1345, align 8
  %1351 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1351, i32 0, i32 0
  store ptr @20, ptr %1352, align 8
  %1353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1351, i32 0, i32 1
  store i64 9, ptr %1353, align 4
  %1354 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1351, align 8
  %1355 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %1356 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1356, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1354, ptr %1357, align 8
  %1358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1356, i32 0, i32 1
  store ptr %1355, ptr %1358, align 8
  %1359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1356, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1359, align 8
  %1360 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1356, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).ArrayType", ptr %1360, align 8
  %1361 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1356, align 8
  %1362 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1362, i32 0, i32 0
  store ptr @25, ptr %1363, align 8
  %1364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1362, i32 0, i32 1
  store i64 6, ptr %1364, align 4
  %1365 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1362, align 8
  %1366 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1367 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1368 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1367, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1365, ptr %1368, align 8
  %1369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1367, i32 0, i32 1
  store ptr %1366, ptr %1369, align 8
  %1370 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1367, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1370, align 8
  %1371 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1367, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Common", ptr %1371, align 8
  %1372 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1367, align 8
  %1373 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1373, i32 0, i32 0
  store ptr @22, ptr %1374, align 8
  %1375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1373, i32 0, i32 1
  store i64 4, ptr %1375, align 4
  %1376 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1373, align 8
  %1377 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %1378 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1378, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1376, ptr %1379, align 8
  %1380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1378, i32 0, i32 1
  store ptr %1377, ptr %1380, align 8
  %1381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1378, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1381, align 8
  %1382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1378, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Elem", ptr %1382, align 8
  %1383 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1378, align 8
  %1384 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1384, i32 0, i32 0
  store ptr @26, ptr %1385, align 8
  %1386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1384, i32 0, i32 1
  store i64 10, ptr %1386, align 4
  %1387 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1384, align 8
  %1388 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1389 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1389, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1387, ptr %1390, align 8
  %1391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1389, i32 0, i32 1
  store ptr %1388, ptr %1391, align 8
  %1392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1389, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1392, align 8
  %1393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1389, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FieldAlign", ptr %1393, align 8
  %1394 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1389, align 8
  %1395 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1395, i32 0, i32 0
  store ptr @27, ptr %1396, align 8
  %1397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1395, i32 0, i32 1
  store i64 8, ptr %1397, align 4
  %1398 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1395, align 8
  %1399 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %1400 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1400, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1398, ptr %1401, align 8
  %1402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1400, i32 0, i32 1
  store ptr %1399, ptr %1402, align 8
  %1403 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1400, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1403, align 8
  %1404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1400, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).FuncType", ptr %1404, align 8
  %1405 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1400, align 8
  %1406 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1406, i32 0, i32 0
  store ptr @30, ptr %1407, align 8
  %1408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1406, i32 0, i32 1
  store i64 7, ptr %1408, align 4
  %1409 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1406, align 8
  %1410 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1411 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1411, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1409, ptr %1412, align 8
  %1413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1411, i32 0, i32 1
  store ptr %1410, ptr %1413, align 8
  %1414 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1411, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1414, align 8
  %1415 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1411, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).HasName", ptr %1415, align 8
  %1416 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1411, align 8
  %1417 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1417, i32 0, i32 0
  store ptr @31, ptr %1418, align 8
  %1419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1417, i32 0, i32 1
  store i64 10, ptr %1419, align 4
  %1420 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1417, align 8
  %1421 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1422 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1420, ptr %1423, align 8
  %1424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 1
  store ptr %1421, ptr %1424, align 8
  %1425 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1425, align 8
  %1426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IfaceIndir", ptr %1426, align 8
  %1427 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1422, align 8
  %1428 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1428, i32 0, i32 0
  store ptr @32, ptr %1429, align 8
  %1430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1428, i32 0, i32 1
  store i64 13, ptr %1430, align 4
  %1431 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1428, align 8
  %1432 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1433 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1433, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1431, ptr %1434, align 8
  %1435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1433, i32 0, i32 1
  store ptr %1432, ptr %1435, align 8
  %1436 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1433, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1436, align 8
  %1437 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1433, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).InterfaceType", ptr %1437, align 8
  %1438 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1433, align 8
  %1439 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1439, i32 0, i32 0
  store ptr @35, ptr %1440, align 8
  %1441 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1439, i32 0, i32 1
  store i64 13, ptr %1441, align 4
  %1442 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1439, align 8
  %1443 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1444 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1445 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1444, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1442, ptr %1445, align 8
  %1446 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1444, i32 0, i32 1
  store ptr %1443, ptr %1446, align 8
  %1447 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1444, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1447, align 8
  %1448 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1444, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).IsDirectIface", ptr %1448, align 8
  %1449 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1444, align 8
  %1450 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1450, i32 0, i32 0
  store ptr @36, ptr %1451, align 8
  %1452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1450, i32 0, i32 1
  store i64 4, ptr %1452, align 4
  %1453 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1450, align 8
  %1454 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1455 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1456 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1455, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1453, ptr %1456, align 8
  %1457 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1455, i32 0, i32 1
  store ptr %1454, ptr %1457, align 8
  %1458 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1455, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1458, align 8
  %1459 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1455, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Kind", ptr %1459, align 8
  %1460 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1455, align 8
  %1461 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1461, i32 0, i32 0
  store ptr @24, ptr %1462, align 8
  %1463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1461, i32 0, i32 1
  store i64 3, ptr %1463, align 4
  %1464 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1461, align 8
  %1465 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1466 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1467 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1466, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1464, ptr %1467, align 8
  %1468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1466, i32 0, i32 1
  store ptr %1465, ptr %1468, align 8
  %1469 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1466, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1469, align 8
  %1470 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1466, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Len", ptr %1470, align 8
  %1471 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1466, align 8
  %1472 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1472, i32 0, i32 0
  store ptr @39, ptr %1473, align 8
  %1474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1472, i32 0, i32 1
  store i64 7, ptr %1474, align 4
  %1475 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1472, align 8
  %1476 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1477 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1477, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1475, ptr %1478, align 8
  %1479 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1477, i32 0, i32 1
  store ptr %1476, ptr %1479, align 8
  %1480 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1477, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1480, align 8
  %1481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1477, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).MapType", ptr %1481, align 8
  %1482 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1477, align 8
  %1483 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1483, i32 0, i32 0
  store ptr @51, ptr %1484, align 8
  %1485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1483, i32 0, i32 1
  store i64 8, ptr %1485, align 4
  %1486 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1483, align 8
  %1487 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1488 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1489 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1488, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1486, ptr %1489, align 8
  %1490 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1488, i32 0, i32 1
  store ptr %1487, ptr %1490, align 8
  %1491 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1488, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1491, align 8
  %1492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1488, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Pointers", ptr %1492, align 8
  %1493 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1488, align 8
  %1494 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1494, i32 0, i32 0
  store ptr @53, ptr %1495, align 8
  %1496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1494, i32 0, i32 1
  store i64 4, ptr %1496, align 4
  %1497 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1494, align 8
  %1498 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1499 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1500 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1499, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1497, ptr %1500, align 8
  %1501 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1499, i32 0, i32 1
  store ptr %1498, ptr %1501, align 8
  %1502 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1499, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1502, align 8
  %1503 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1499, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Size", ptr %1503, align 8
  %1504 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1499, align 8
  %1505 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1505, i32 0, i32 0
  store ptr @37, ptr %1506, align 8
  %1507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1505, i32 0, i32 1
  store i64 6, ptr %1507, align 4
  %1508 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1505, align 8
  %1509 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1510 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1511 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1510, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1508, ptr %1511, align 8
  %1512 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1510, i32 0, i32 1
  store ptr %1509, ptr %1512, align 8
  %1513 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1510, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1513, align 8
  %1514 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1510, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).String", ptr %1514, align 8
  %1515 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1510, align 8
  %1516 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1516, i32 0, i32 0
  store ptr @54, ptr %1517, align 8
  %1518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1516, i32 0, i32 1
  store i64 10, ptr %1518, align 4
  %1519 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1516, align 8
  %1520 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1521 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1522 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1519, ptr %1522, align 8
  %1523 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 1
  store ptr %1520, ptr %1523, align 8
  %1524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1524, align 8
  %1525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).StructType", ptr %1525, align 8
  %1526 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1521, align 8
  %1527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, i32 0, i32 0
  store ptr @56, ptr %1528, align 8
  %1529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, i32 0, i32 1
  store i64 8, ptr %1529, align 4
  %1530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1527, align 8
  %1531 = load ptr, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1532 = icmp eq ptr %1531, null
  br i1 %1532, label %_llgo_71, label %_llgo_72

_llgo_70:                                         ; preds = %_llgo_84, %_llgo_68
  %1533 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1534 = icmp eq ptr %1533, null
  br i1 %1534, label %_llgo_85, label %_llgo_86

_llgo_71:                                         ; preds = %_llgo_69
  %1535 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 2)
  store ptr %1535, ptr @"_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_69
  %1536 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1537 = icmp eq ptr %1536, null
  br i1 %1537, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %1538 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1538, i32 0, i32 0
  store ptr @33, ptr %1539, align 8
  %1540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1538, i32 0, i32 1
  store i64 8, ptr %1540, align 4
  %1541 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1538, align 8
  %1542 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1542, i32 0, i32 0
  store ptr null, ptr %1543, align 8
  %1544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1542, i32 0, i32 1
  store i64 0, ptr %1544, align 4
  %1545 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1542, align 8
  %1546 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %1547 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1541, ptr %1546, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %1545, i1 false)
  %1548 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1548, i32 0, i32 0
  store ptr @57, ptr %1549, align 8
  %1550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1548, i32 0, i32 1
  store i64 6, ptr %1550, align 4
  %1551 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1548, align 8
  %1552 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1552, i32 0, i32 0
  store ptr null, ptr %1553, align 8
  %1554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1552, i32 0, i32 1
  store i64 0, ptr %1554, align 4
  %1555 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1552, align 8
  %1556 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %1557 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1551, ptr %1556, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %1555, i1 false)
  %1558 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1558, i32 0, i32 0
  store ptr @58, ptr %1559, align 8
  %1560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1558, i32 0, i32 1
  store i64 6, ptr %1560, align 4
  %1561 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1558, align 8
  %1562 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1562, i32 0, i32 0
  store ptr null, ptr %1563, align 8
  %1564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1562, i32 0, i32 1
  store i64 0, ptr %1564, align 4
  %1565 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1562, align 8
  %1566 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %1567 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1561, ptr %1566, i64 18, %"github.com/goplus/llgo/internal/runtime.String" %1565, i1 false)
  %1568 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1568, i32 0, i32 0
  store ptr @59, ptr %1569, align 8
  %1570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1568, i32 0, i32 1
  store i64 4, ptr %1570, align 4
  %1571 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1568, align 8
  %1572 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1572, i32 0, i32 0
  store ptr null, ptr %1573, align 8
  %1574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1572, i32 0, i32 1
  store i64 0, ptr %1574, align 4
  %1575 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1572, align 8
  %1576 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %1577 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %1571, ptr %1576, i64 20, %"github.com/goplus/llgo/internal/runtime.String" %1575, i1 false)
  %1578 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1579 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1578, i32 0, i32 0
  store ptr @4, ptr %1579, align 8
  %1580 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1578, i32 0, i32 1
  store i64 4, ptr %1580, align 4
  %1581 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1578, align 8
  %1582 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %1583 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1582, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %1547, ptr %1583, align 8
  %1584 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1582, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %1557, ptr %1584, align 8
  %1585 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1582, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %1567, ptr %1585, align 8
  %1586 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %1582, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %1577, ptr %1586, align 8
  %1587 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1587, i32 0, i32 0
  store ptr %1582, ptr %1588, align 8
  %1589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1587, i32 0, i32 1
  store i64 4, ptr %1589, align 4
  %1590 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1587, i32 0, i32 2
  store i64 4, ptr %1590, align 4
  %1591 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1587, align 8
  %1592 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %1581, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %1591)
  store ptr %1592, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %1593 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1532, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %1594 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, i32 0, i32 0
  store ptr @60, ptr %1595, align 8
  %1596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, i32 0, i32 1
  store i64 15, ptr %1596, align 4
  %1597 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1594, align 8
  %1598 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1599 = icmp eq ptr %1598, null
  br i1 %1599, label %_llgo_77, label %_llgo_78

_llgo_76:                                         ; preds = %_llgo_80, %_llgo_74
  %1600 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1601 = icmp eq ptr %1600, null
  br i1 %1601, label %_llgo_81, label %_llgo_82

_llgo_77:                                         ; preds = %_llgo_75
  %1602 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 3)
  %1603 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %1602)
  store ptr %1603, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_75
  %1604 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/internal/abi.Method", align 8
  %1605 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1606 = icmp eq ptr %1605, null
  br i1 %1606, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %1607 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1608 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1608, i32 0, i32 0
  store ptr %1607, ptr %1609, align 8
  %1610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1608, i32 0, i32 1
  store i64 0, ptr %1610, align 4
  %1611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1608, i32 0, i32 2
  store i64 0, ptr %1611, align 4
  %1612 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1608, align 8
  %1613 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1614 = getelementptr ptr, ptr %1613, i64 0
  store ptr %1604, ptr %1614, align 8
  %1615 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1615, i32 0, i32 0
  store ptr %1613, ptr %1616, align 8
  %1617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1615, i32 0, i32 1
  store i64 1, ptr %1617, align 4
  %1618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1615, i32 0, i32 2
  store i64 1, ptr %1618, align 4
  %1619 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1615, align 8
  %1620 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1612, %"github.com/goplus/llgo/internal/runtime.Slice" %1619, i1 false)
  store ptr %1620, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %1621 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1622 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1597, ptr %1623, align 8
  %1624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 1
  store ptr %1621, ptr %1624, align 8
  %1625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1625, align 8
  %1626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).ExportedMethods", ptr %1626, align 8
  %1627 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1622, align 8
  %1628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1628, i32 0, i32 0
  store ptr @34, ptr %1629, align 8
  %1630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1628, i32 0, i32 1
  store i64 7, ptr %1630, align 4
  %1631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1628, align 8
  %1632 = load ptr, ptr @"_llgo_func$r0w3aCNVheLGqjxncuxitGhNtWJagb9gZLqOSrNI7dg", align 8
  %1633 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1634 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1631, ptr %1634, align 8
  %1635 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 1
  store ptr %1632, ptr %1635, align 8
  %1636 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1636, align 8
  %1637 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*UncommonType).Methods", ptr %1637, align 8
  %1638 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1633, align 8
  %1639 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %1640 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1639, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1627, ptr %1640, align 8
  %1641 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1639, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1638, ptr %1641, align 8
  %1642 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1642, i32 0, i32 0
  store ptr %1639, ptr %1643, align 8
  %1644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1642, i32 0, i32 1
  store i64 2, ptr %1644, align 4
  %1645 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1642, i32 0, i32 2
  store i64 2, ptr %1645, align 4
  %1646 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1642, align 8
  %1647 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1647, i32 0, i32 0
  store ptr @38, ptr %1648, align 8
  %1649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1647, i32 0, i32 1
  store i64 35, ptr %1649, align 4
  %1650 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1647, align 8
  %1651 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1651, i32 0, i32 0
  store ptr @61, ptr %1652, align 8
  %1653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1651, i32 0, i32 1
  store i64 12, ptr %1653, align 4
  %1654 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1651, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1535, %"github.com/goplus/llgo/internal/runtime.String" %1650, %"github.com/goplus/llgo/internal/runtime.String" %1654, ptr %1593, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1646)
  br label %_llgo_76

_llgo_81:                                         ; preds = %_llgo_76
  %1655 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1535)
  store ptr %1655, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_76
  %1656 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.UncommonType", align 8
  %1657 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1658 = icmp eq ptr %1657, null
  br i1 %1658, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %1659 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1660 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1660, i32 0, i32 0
  store ptr %1659, ptr %1661, align 8
  %1662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1660, i32 0, i32 1
  store i64 0, ptr %1662, align 4
  %1663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1660, i32 0, i32 2
  store i64 0, ptr %1663, align 4
  %1664 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1660, align 8
  %1665 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1666 = getelementptr ptr, ptr %1665, i64 0
  store ptr %1656, ptr %1666, align 8
  %1667 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1668 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1667, i32 0, i32 0
  store ptr %1665, ptr %1668, align 8
  %1669 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1667, i32 0, i32 1
  store i64 1, ptr %1669, align 4
  %1670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1667, i32 0, i32 2
  store i64 1, ptr %1670, align 4
  %1671 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1667, align 8
  %1672 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1664, %"github.com/goplus/llgo/internal/runtime.Slice" %1671, i1 false)
  store ptr %1672, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %1673 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1674 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1675 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1674, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1530, ptr %1675, align 8
  %1676 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1674, i32 0, i32 1
  store ptr %1673, ptr %1676, align 8
  %1677 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1674, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %1677, align 8
  %1678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1674, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*StructType).Uncommon", ptr %1678, align 8
  %1679 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1674, align 8
  %1680 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %1681 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1350, ptr %1681, align 8
  %1682 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1361, ptr %1682, align 8
  %1683 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1372, ptr %1683, align 8
  %1684 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1383, ptr %1684, align 8
  %1685 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1394, ptr %1685, align 8
  %1686 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1405, ptr %1686, align 8
  %1687 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1416, ptr %1687, align 8
  %1688 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1427, ptr %1688, align 8
  %1689 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1438, ptr %1689, align 8
  %1690 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1449, ptr %1690, align 8
  %1691 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1460, ptr %1691, align 8
  %1692 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1471, ptr %1692, align 8
  %1693 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1482, ptr %1693, align 8
  %1694 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1493, ptr %1694, align 8
  %1695 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1504, ptr %1695, align 8
  %1696 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1515, ptr %1696, align 8
  %1697 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1526, ptr %1697, align 8
  %1698 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1680, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1679, ptr %1698, align 8
  %1699 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1700 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1699, i32 0, i32 0
  store ptr %1680, ptr %1700, align 8
  %1701 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1699, i32 0, i32 1
  store i64 18, ptr %1701, align 4
  %1702 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1699, i32 0, i32 2
  store i64 18, ptr %1702, align 4
  %1703 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1699, align 8
  %1704 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, i32 0, i32 0
  store ptr @38, ptr %1705, align 8
  %1706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, i32 0, i32 1
  store i64 35, ptr %1706, align 4
  %1707 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1704, align 8
  %1708 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1708, i32 0, i32 0
  store ptr @54, ptr %1709, align 8
  %1710 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1708, i32 0, i32 1
  store i64 10, ptr %1710, align 4
  %1711 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1708, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1292, %"github.com/goplus/llgo/internal/runtime.String" %1707, %"github.com/goplus/llgo/internal/runtime.String" %1711, ptr %1339, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1703)
  br label %_llgo_70

_llgo_85:                                         ; preds = %_llgo_70
  %1712 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1292)
  store ptr %1712, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_70
  %1713 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.StructType", align 8
  %1714 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1715 = icmp eq ptr %1714, null
  br i1 %1715, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %1716 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1717 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1717, i32 0, i32 0
  store ptr %1716, ptr %1718, align 8
  %1719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1717, i32 0, i32 1
  store i64 0, ptr %1719, align 4
  %1720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1717, i32 0, i32 2
  store i64 0, ptr %1720, align 4
  %1721 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1717, align 8
  %1722 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1723 = getelementptr ptr, ptr %1722, i64 0
  store ptr %1713, ptr %1723, align 8
  %1724 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1725 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1724, i32 0, i32 0
  store ptr %1722, ptr %1725, align 8
  %1726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1724, i32 0, i32 1
  store i64 1, ptr %1726, align 4
  %1727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1724, i32 0, i32 2
  store i64 1, ptr %1727, align 4
  %1728 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1724, align 8
  %1729 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1721, %"github.com/goplus/llgo/internal/runtime.Slice" %1728, i1 false)
  store ptr %1729, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %1730 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1731 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1289, ptr %1732, align 8
  %1733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 1
  store ptr %1730, ptr %1733, align 8
  %1734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %1734, align 8
  %1735 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).StructType", ptr %1735, align 8
  %1736 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1731, align 8
  %1737 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, i32 0, i32 0
  store ptr @56, ptr %1738, align 8
  %1739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, i32 0, i32 1
  store i64 8, ptr %1739, align 4
  %1740 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1737, align 8
  %1741 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1742 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1740, ptr %1743, align 8
  %1744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 1
  store ptr %1741, ptr %1744, align 8
  %1745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %1745, align 8
  %1746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*MapType).Uncommon", ptr %1746, align 8
  %1747 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1742, align 8
  %1748 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 880)
  %1749 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %1057, ptr %1749, align 8
  %1750 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %1068, ptr %1750, align 8
  %1751 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %1079, ptr %1751, align 8
  %1752 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %1090, ptr %1752, align 8
  %1753 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %1101, ptr %1753, align 8
  %1754 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %1112, ptr %1754, align 8
  %1755 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %1123, ptr %1755, align 8
  %1756 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %1134, ptr %1756, align 8
  %1757 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1145, ptr %1757, align 8
  %1758 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1156, ptr %1758, align 8
  %1759 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1167, ptr %1759, align 8
  %1760 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1178, ptr %1760, align 8
  %1761 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1189, ptr %1761, align 8
  %1762 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1200, ptr %1762, align 8
  %1763 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1211, ptr %1763, align 8
  %1764 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1222, ptr %1764, align 8
  %1765 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1233, ptr %1765, align 8
  %1766 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1244, ptr %1766, align 8
  %1767 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %1274, ptr %1767, align 8
  %1768 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 19
  store %"github.com/goplus/llgo/internal/abi.Method" %1285, ptr %1768, align 8
  %1769 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 20
  store %"github.com/goplus/llgo/internal/abi.Method" %1736, ptr %1769, align 8
  %1770 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1748, i64 21
  store %"github.com/goplus/llgo/internal/abi.Method" %1747, ptr %1770, align 8
  %1771 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1771, i32 0, i32 0
  store ptr %1748, ptr %1772, align 8
  %1773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1771, i32 0, i32 1
  store i64 22, ptr %1773, align 4
  %1774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1771, i32 0, i32 2
  store i64 22, ptr %1774, align 4
  %1775 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1771, align 8
  %1776 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1776, i32 0, i32 0
  store ptr @38, ptr %1777, align 8
  %1778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1776, i32 0, i32 1
  store i64 35, ptr %1778, align 4
  %1779 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1776, align 8
  %1780 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1781 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1780, i32 0, i32 0
  store ptr @39, ptr %1781, align 8
  %1782 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1780, i32 0, i32 1
  store i64 7, ptr %1782, align 4
  %1783 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1780, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %876, %"github.com/goplus/llgo/internal/runtime.String" %1779, %"github.com/goplus/llgo/internal/runtime.String" %1783, ptr %1046, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1775)
  br label %_llgo_62

_llgo_89:                                         ; preds = %_llgo_62
  %1784 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %876)
  store ptr %1784, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_62
  %1785 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.MapType", align 8
  %1786 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1787 = icmp eq ptr %1786, null
  br i1 %1787, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %1788 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1789 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1790 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1789, i32 0, i32 0
  store ptr %1788, ptr %1790, align 8
  %1791 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1789, i32 0, i32 1
  store i64 0, ptr %1791, align 4
  %1792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1789, i32 0, i32 2
  store i64 0, ptr %1792, align 4
  %1793 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1789, align 8
  %1794 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1795 = getelementptr ptr, ptr %1794, i64 0
  store ptr %1785, ptr %1795, align 8
  %1796 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1796, i32 0, i32 0
  store ptr %1794, ptr %1797, align 8
  %1798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1796, i32 0, i32 1
  store i64 1, ptr %1798, align 4
  %1799 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1796, i32 0, i32 2
  store i64 1, ptr %1799, align 4
  %1800 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1796, align 8
  %1801 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1793, %"github.com/goplus/llgo/internal/runtime.Slice" %1800, i1 false)
  store ptr %1801, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %1802 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1803 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1804 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1803, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %873, ptr %1804, align 8
  %1805 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1803, i32 0, i32 1
  store ptr %1802, ptr %1805, align 8
  %1806 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1803, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %1806, align 8
  %1807 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1803, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).MapType", ptr %1807, align 8
  %1808 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1803, align 8
  %1809 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1809, i32 0, i32 0
  store ptr @51, ptr %1810, align 8
  %1811 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1809, i32 0, i32 1
  store i64 8, ptr %1811, align 4
  %1812 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1809, align 8
  %1813 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1814 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1815 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1814, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1812, ptr %1815, align 8
  %1816 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1814, i32 0, i32 1
  store ptr %1813, ptr %1816, align 8
  %1817 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1814, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %1817, align 8
  %1818 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1814, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Pointers", ptr %1818, align 8
  %1819 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1814, align 8
  %1820 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1820, i32 0, i32 0
  store ptr @53, ptr %1821, align 8
  %1822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1820, i32 0, i32 1
  store i64 4, ptr %1822, align 4
  %1823 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1820, align 8
  %1824 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1825 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1826 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1825, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1823, ptr %1826, align 8
  %1827 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1825, i32 0, i32 1
  store ptr %1824, ptr %1827, align 8
  %1828 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1825, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %1828, align 8
  %1829 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1825, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Size", ptr %1829, align 8
  %1830 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1825, align 8
  %1831 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1832 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1831, i32 0, i32 0
  store ptr @37, ptr %1832, align 8
  %1833 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1831, i32 0, i32 1
  store i64 6, ptr %1833, align 4
  %1834 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1831, align 8
  %1835 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1836 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1837 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1836, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1834, ptr %1837, align 8
  %1838 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1836, i32 0, i32 1
  store ptr %1835, ptr %1838, align 8
  %1839 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1836, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %1839, align 8
  %1840 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1836, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).String", ptr %1840, align 8
  %1841 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1836, align 8
  %1842 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1842, i32 0, i32 0
  store ptr @54, ptr %1843, align 8
  %1844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1842, i32 0, i32 1
  store i64 10, ptr %1844, align 4
  %1845 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1842, align 8
  %1846 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %1847 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1848 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1847, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1845, ptr %1848, align 8
  %1849 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1847, i32 0, i32 1
  store ptr %1846, ptr %1849, align 8
  %1850 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1847, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %1850, align 8
  %1851 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1847, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).StructType", ptr %1851, align 8
  %1852 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1847, align 8
  %1853 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1854 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1853, i32 0, i32 0
  store ptr @56, ptr %1854, align 8
  %1855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1853, i32 0, i32 1
  store i64 8, ptr %1855, align 4
  %1856 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1853, align 8
  %1857 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %1858 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1859 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1858, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1856, ptr %1859, align 8
  %1860 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1858, i32 0, i32 1
  store ptr %1857, ptr %1860, align 8
  %1861 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1858, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %1861, align 8
  %1862 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1858, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*InterfaceType).Uncommon", ptr %1862, align 8
  %1863 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1858, align 8
  %1864 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %1865 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %657, ptr %1865, align 8
  %1866 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %668, ptr %1866, align 8
  %1867 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %679, ptr %1867, align 8
  %1868 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %690, ptr %1868, align 8
  %1869 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %701, ptr %1869, align 8
  %1870 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %712, ptr %1870, align 8
  %1871 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %723, ptr %1871, align 8
  %1872 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %734, ptr %1872, align 8
  %1873 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %745, ptr %1873, align 8
  %1874 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %756, ptr %1874, align 8
  %1875 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %858, ptr %1875, align 8
  %1876 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %869, ptr %1876, align 8
  %1877 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1808, ptr %1877, align 8
  %1878 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1819, ptr %1878, align 8
  %1879 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1830, ptr %1879, align 8
  %1880 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1841, ptr %1880, align 8
  %1881 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %1852, ptr %1881, align 8
  %1882 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %1864, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %1863, ptr %1882, align 8
  %1883 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1883, i32 0, i32 0
  store ptr %1864, ptr %1884, align 8
  %1885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1883, i32 0, i32 1
  store i64 18, ptr %1885, align 4
  %1886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1883, i32 0, i32 2
  store i64 18, ptr %1886, align 4
  %1887 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1883, align 8
  %1888 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1888, i32 0, i32 0
  store ptr @38, ptr %1889, align 8
  %1890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1888, i32 0, i32 1
  store i64 35, ptr %1890, align 4
  %1891 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1888, align 8
  %1892 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1892, i32 0, i32 0
  store ptr @32, ptr %1893, align 8
  %1894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1892, i32 0, i32 1
  store i64 13, ptr %1894, align 4
  %1895 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1892, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %599, %"github.com/goplus/llgo/internal/runtime.String" %1891, %"github.com/goplus/llgo/internal/runtime.String" %1895, ptr %646, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1887)
  br label %_llgo_42

_llgo_93:                                         ; preds = %_llgo_42
  %1896 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %599)
  store ptr %1896, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_42
  %1897 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.InterfaceType", align 8
  %1898 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1899 = icmp eq ptr %1898, null
  br i1 %1899, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %1900 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %1901 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1901, i32 0, i32 0
  store ptr %1900, ptr %1902, align 8
  %1903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1901, i32 0, i32 1
  store i64 0, ptr %1903, align 4
  %1904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1901, i32 0, i32 2
  store i64 0, ptr %1904, align 4
  %1905 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1901, align 8
  %1906 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %1907 = getelementptr ptr, ptr %1906, i64 0
  store ptr %1897, ptr %1907, align 8
  %1908 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1908, i32 0, i32 0
  store ptr %1906, ptr %1909, align 8
  %1910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1908, i32 0, i32 1
  store i64 1, ptr %1910, align 4
  %1911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1908, i32 0, i32 2
  store i64 1, ptr %1911, align 4
  %1912 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1908, align 8
  %1913 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %1905, %"github.com/goplus/llgo/internal/runtime.Slice" %1912, i1 false)
  store ptr %1913, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %1914 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %1915 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1916 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1915, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %596, ptr %1916, align 8
  %1917 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1915, i32 0, i32 1
  store ptr %1914, ptr %1917, align 8
  %1918 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1915, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %1918, align 8
  %1919 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1915, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).InterfaceType", ptr %1919, align 8
  %1920 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1915, align 8
  %1921 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1921, i32 0, i32 0
  store ptr @35, ptr %1922, align 8
  %1923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1921, i32 0, i32 1
  store i64 13, ptr %1923, align 4
  %1924 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1921, align 8
  %1925 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1926 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1927 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1926, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1924, ptr %1927, align 8
  %1928 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1926, i32 0, i32 1
  store ptr %1925, ptr %1928, align 8
  %1929 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1926, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %1929, align 8
  %1930 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1926, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).IsDirectIface", ptr %1930, align 8
  %1931 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1926, align 8
  %1932 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1932, i32 0, i32 0
  store ptr @36, ptr %1933, align 8
  %1934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1932, i32 0, i32 1
  store i64 4, ptr %1934, align 4
  %1935 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1932, align 8
  %1936 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %1937 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1938 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1937, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1935, ptr %1938, align 8
  %1939 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1937, i32 0, i32 1
  store ptr %1936, ptr %1939, align 8
  %1940 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1937, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %1940, align 8
  %1941 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1937, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Kind", ptr %1941, align 8
  %1942 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1937, align 8
  %1943 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1944 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1943, i32 0, i32 0
  store ptr @24, ptr %1944, align 8
  %1945 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1943, i32 0, i32 1
  store i64 3, ptr %1945, align 4
  %1946 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1943, align 8
  %1947 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1948 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1949 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1948, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1946, ptr %1949, align 8
  %1950 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1948, i32 0, i32 1
  store ptr %1947, ptr %1950, align 8
  %1951 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1948, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %1951, align 8
  %1952 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1948, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Len", ptr %1952, align 8
  %1953 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1948, align 8
  %1954 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1955 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1954, i32 0, i32 0
  store ptr @39, ptr %1955, align 8
  %1956 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1954, i32 0, i32 1
  store i64 7, ptr %1956, align 4
  %1957 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1954, align 8
  %1958 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %1959 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1960 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1957, ptr %1960, align 8
  %1961 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, i32 0, i32 1
  store ptr %1958, ptr %1961, align 8
  %1962 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %1962, align 8
  %1963 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).MapType", ptr %1963, align 8
  %1964 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1959, align 8
  %1965 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1966 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1965, i32 0, i32 0
  store ptr @51, ptr %1966, align 8
  %1967 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1965, i32 0, i32 1
  store i64 8, ptr %1967, align 4
  %1968 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1965, align 8
  %1969 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1970 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1971 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1970, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1968, ptr %1971, align 8
  %1972 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1970, i32 0, i32 1
  store ptr %1969, ptr %1972, align 8
  %1973 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1970, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %1973, align 8
  %1974 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1970, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Pointers", ptr %1974, align 8
  %1975 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1970, align 8
  %1976 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, i32 0, i32 0
  store ptr @53, ptr %1977, align 8
  %1978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, i32 0, i32 1
  store i64 4, ptr %1978, align 4
  %1979 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1976, align 8
  %1980 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1981 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1982 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1979, ptr %1982, align 8
  %1983 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 1
  store ptr %1980, ptr %1983, align 8
  %1984 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %1984, align 8
  %1985 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Size", ptr %1985, align 8
  %1986 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1981, align 8
  %1987 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1988 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, i32 0, i32 0
  store ptr @37, ptr %1988, align 8
  %1989 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, i32 0, i32 1
  store i64 6, ptr %1989, align 4
  %1990 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1987, align 8
  %1991 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1992 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %1993 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1990, ptr %1993, align 8
  %1994 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 1
  store ptr %1991, ptr %1994, align 8
  %1995 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %1995, align 8
  %1996 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).String", ptr %1996, align 8
  %1997 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %1992, align 8
  %1998 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1999 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1998, i32 0, i32 0
  store ptr @54, ptr %1999, align 8
  %2000 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1998, i32 0, i32 1
  store i64 10, ptr %2000, align 4
  %2001 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1998, align 8
  %2002 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2003 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2004 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2001, ptr %2004, align 8
  %2005 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 1
  store ptr %2002, ptr %2005, align 8
  %2006 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2006, align 8
  %2007 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).StructType", ptr %2007, align 8
  %2008 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2003, align 8
  %2009 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2010 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2009, i32 0, i32 0
  store ptr @56, ptr %2010, align 8
  %2011 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2009, i32 0, i32 1
  store i64 8, ptr %2011, align 4
  %2012 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2009, align 8
  %2013 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2014 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2015 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2012, ptr %2015, align 8
  %2016 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 1
  store ptr %2013, ptr %2016, align 8
  %2017 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2017, align 8
  %2018 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Uncommon", ptr %2018, align 8
  %2019 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2014, align 8
  %2020 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, i32 0, i32 0
  store ptr @62, ptr %2021, align 8
  %2022 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, i32 0, i32 1
  store i64 8, ptr %2022, align 4
  %2023 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2020, align 8
  %2024 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2025 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2026 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2023, ptr %2026, align 8
  %2027 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 1
  store ptr %2024, ptr %2027, align 8
  %2028 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2028, align 8
  %2029 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*FuncType).Variadic", ptr %2029, align 8
  %2030 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2025, align 8
  %2031 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 760)
  %2032 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %496, ptr %2032, align 8
  %2033 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %507, ptr %2033, align 8
  %2034 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %518, ptr %2034, align 8
  %2035 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %529, ptr %2035, align 8
  %2036 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %540, ptr %2036, align 8
  %2037 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %551, ptr %2037, align 8
  %2038 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %581, ptr %2038, align 8
  %2039 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %592, ptr %2039, align 8
  %2040 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %1920, ptr %2040, align 8
  %2041 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %1931, ptr %2041, align 8
  %2042 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %1942, ptr %2042, align 8
  %2043 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %1953, ptr %2043, align 8
  %2044 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %1964, ptr %2044, align 8
  %2045 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %1975, ptr %2045, align 8
  %2046 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %1986, ptr %2046, align 8
  %2047 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %1997, ptr %2047, align 8
  %2048 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2008, ptr %2048, align 8
  %2049 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2019, ptr %2049, align 8
  %2050 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2031, i64 18
  store %"github.com/goplus/llgo/internal/abi.Method" %2030, ptr %2050, align 8
  %2051 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2052 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2051, i32 0, i32 0
  store ptr %2031, ptr %2052, align 8
  %2053 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2051, i32 0, i32 1
  store i64 19, ptr %2053, align 4
  %2054 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2051, i32 0, i32 2
  store i64 19, ptr %2054, align 4
  %2055 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2051, align 8
  %2056 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2057 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2056, i32 0, i32 0
  store ptr @38, ptr %2057, align 8
  %2058 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2056, i32 0, i32 1
  store i64 35, ptr %2058, align 4
  %2059 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2056, align 8
  %2060 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2061 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2060, i32 0, i32 0
  store ptr @27, ptr %2061, align 8
  %2062 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2060, i32 0, i32 1
  store i64 8, ptr %2062, align 4
  %2063 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2060, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %437, %"github.com/goplus/llgo/internal/runtime.String" %2059, %"github.com/goplus/llgo/internal/runtime.String" %2063, ptr %485, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2055)
  br label %_llgo_34

_llgo_97:                                         ; preds = %_llgo_34
  %2064 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %437)
  store ptr %2064, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_34
  %2065 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.FuncType", align 8
  %2066 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %2068 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2069 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2070 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2069, i32 0, i32 0
  store ptr %2068, ptr %2070, align 8
  %2071 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2069, i32 0, i32 1
  store i64 0, ptr %2071, align 4
  %2072 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2069, i32 0, i32 2
  store i64 0, ptr %2072, align 4
  %2073 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2069, align 8
  %2074 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2075 = getelementptr ptr, ptr %2074, i64 0
  store ptr %2065, ptr %2075, align 8
  %2076 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2077 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2076, i32 0, i32 0
  store ptr %2074, ptr %2077, align 8
  %2078 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2076, i32 0, i32 1
  store i64 1, ptr %2078, align 4
  %2079 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2076, i32 0, i32 2
  store i64 1, ptr %2079, align 4
  %2080 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2076, align 8
  %2081 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2073, %"github.com/goplus/llgo/internal/runtime.Slice" %2080, i1 false)
  store ptr %2081, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %2082 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2083 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2084 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2083, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %434, ptr %2084, align 8
  %2085 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2083, i32 0, i32 1
  store ptr %2082, ptr %2085, align 8
  %2086 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2083, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2086, align 8
  %2087 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2083, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).FuncType", ptr %2087, align 8
  %2088 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2083, align 8
  %2089 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2090 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2089, i32 0, i32 0
  store ptr @30, ptr %2090, align 8
  %2091 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2089, i32 0, i32 1
  store i64 7, ptr %2091, align 4
  %2092 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2089, align 8
  %2093 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2094 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2095 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2094, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2092, ptr %2095, align 8
  %2096 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2094, i32 0, i32 1
  store ptr %2093, ptr %2096, align 8
  %2097 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2094, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2097, align 8
  %2098 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2094, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).HasName", ptr %2098, align 8
  %2099 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2094, align 8
  %2100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2100, i32 0, i32 0
  store ptr @31, ptr %2101, align 8
  %2102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2100, i32 0, i32 1
  store i64 10, ptr %2102, align 4
  %2103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2100, align 8
  %2104 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2105 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2106 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2105, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2103, ptr %2106, align 8
  %2107 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2105, i32 0, i32 1
  store ptr %2104, ptr %2107, align 8
  %2108 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2105, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2108, align 8
  %2109 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2105, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IfaceIndir", ptr %2109, align 8
  %2110 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2105, align 8
  %2111 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2111, i32 0, i32 0
  store ptr @32, ptr %2112, align 8
  %2113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2111, i32 0, i32 1
  store i64 13, ptr %2113, align 4
  %2114 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2111, align 8
  %2115 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2116 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2117 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2116, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2114, ptr %2117, align 8
  %2118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2116, i32 0, i32 1
  store ptr %2115, ptr %2118, align 8
  %2119 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2116, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2119, align 8
  %2120 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2116, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).InterfaceType", ptr %2120, align 8
  %2121 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2116, align 8
  %2122 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2122, i32 0, i32 0
  store ptr @35, ptr %2123, align 8
  %2124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2122, i32 0, i32 1
  store i64 13, ptr %2124, align 4
  %2125 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2122, align 8
  %2126 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2127 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2127, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2125, ptr %2128, align 8
  %2129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2127, i32 0, i32 1
  store ptr %2126, ptr %2129, align 8
  %2130 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2127, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2130, align 8
  %2131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2127, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).IsDirectIface", ptr %2131, align 8
  %2132 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2127, align 8
  %2133 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2133, i32 0, i32 0
  store ptr @36, ptr %2134, align 8
  %2135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2133, i32 0, i32 1
  store i64 4, ptr %2135, align 4
  %2136 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2133, align 8
  %2137 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2138 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2138, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2136, ptr %2139, align 8
  %2140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2138, i32 0, i32 1
  store ptr %2137, ptr %2140, align 8
  %2141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2138, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2141, align 8
  %2142 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2138, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Kind", ptr %2142, align 8
  %2143 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2138, align 8
  %2144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2144, i32 0, i32 0
  store ptr @39, ptr %2145, align 8
  %2146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2144, i32 0, i32 1
  store i64 7, ptr %2146, align 4
  %2147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2144, align 8
  %2148 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2149 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2150 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2149, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2147, ptr %2150, align 8
  %2151 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2149, i32 0, i32 1
  store ptr %2148, ptr %2151, align 8
  %2152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2149, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2152, align 8
  %2153 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2149, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).MapType", ptr %2153, align 8
  %2154 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2149, align 8
  %2155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2155, i32 0, i32 0
  store ptr @51, ptr %2156, align 8
  %2157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2155, i32 0, i32 1
  store i64 8, ptr %2157, align 4
  %2158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2155, align 8
  %2159 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2160 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2160, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2158, ptr %2161, align 8
  %2162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2160, i32 0, i32 1
  store ptr %2159, ptr %2162, align 8
  %2163 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2160, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2163, align 8
  %2164 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2160, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Pointers", ptr %2164, align 8
  %2165 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2160, align 8
  %2166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2166, i32 0, i32 0
  store ptr @53, ptr %2167, align 8
  %2168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2166, i32 0, i32 1
  store i64 4, ptr %2168, align 4
  %2169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2166, align 8
  %2170 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2171 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2171, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2169, ptr %2172, align 8
  %2173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2171, i32 0, i32 1
  store ptr %2170, ptr %2173, align 8
  %2174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2171, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2174, align 8
  %2175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2171, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Size", ptr %2175, align 8
  %2176 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2171, align 8
  %2177 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2177, i32 0, i32 0
  store ptr @37, ptr %2178, align 8
  %2179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2177, i32 0, i32 1
  store i64 6, ptr %2179, align 4
  %2180 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2177, align 8
  %2181 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2182 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2183 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2182, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2180, ptr %2183, align 8
  %2184 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2182, i32 0, i32 1
  store ptr %2181, ptr %2184, align 8
  %2185 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2182, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2185, align 8
  %2186 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2182, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).String", ptr %2186, align 8
  %2187 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2182, align 8
  %2188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2188, i32 0, i32 0
  store ptr @54, ptr %2189, align 8
  %2190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2188, i32 0, i32 1
  store i64 10, ptr %2190, align 4
  %2191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2188, align 8
  %2192 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2193 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2194 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2193, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2191, ptr %2194, align 8
  %2195 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2193, i32 0, i32 1
  store ptr %2192, ptr %2195, align 8
  %2196 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2193, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2196, align 8
  %2197 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2193, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).StructType", ptr %2197, align 8
  %2198 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2193, align 8
  %2199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2199, i32 0, i32 0
  store ptr @56, ptr %2200, align 8
  %2201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2199, i32 0, i32 1
  store i64 8, ptr %2201, align 4
  %2202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2199, align 8
  %2203 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2204 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2205 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2204, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2202, ptr %2205, align 8
  %2206 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2204, i32 0, i32 1
  store ptr %2203, ptr %2206, align 8
  %2207 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2204, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2207, align 8
  %2208 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2204, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*ArrayType).Uncommon", ptr %2208, align 8
  %2209 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2204, align 8
  %2210 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 640)
  %2211 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %375, ptr %2211, align 8
  %2212 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %386, ptr %2212, align 8
  %2213 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %419, ptr %2213, align 8
  %2214 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %430, ptr %2214, align 8
  %2215 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2088, ptr %2215, align 8
  %2216 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2099, ptr %2216, align 8
  %2217 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2110, ptr %2217, align 8
  %2218 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2121, ptr %2218, align 8
  %2219 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2132, ptr %2219, align 8
  %2220 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2143, ptr %2220, align 8
  %2221 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2154, ptr %2221, align 8
  %2222 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2165, ptr %2222, align 8
  %2223 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2176, ptr %2223, align 8
  %2224 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2187, ptr %2224, align 8
  %2225 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2198, ptr %2225, align 8
  %2226 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2210, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2209, ptr %2226, align 8
  %2227 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2227, i32 0, i32 0
  store ptr %2210, ptr %2228, align 8
  %2229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2227, i32 0, i32 1
  store i64 16, ptr %2229, align 4
  %2230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2227, i32 0, i32 2
  store i64 16, ptr %2230, align 4
  %2231 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2227, align 8
  %2232 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2232, i32 0, i32 0
  store ptr @38, ptr %2233, align 8
  %2234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2232, i32 0, i32 1
  store i64 35, ptr %2234, align 4
  %2235 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2232, align 8
  %2236 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2236, i32 0, i32 0
  store ptr @20, ptr %2237, align 8
  %2238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2236, i32 0, i32 1
  store i64 9, ptr %2238, align 4
  %2239 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2236, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %307, %"github.com/goplus/llgo/internal/runtime.String" %2235, %"github.com/goplus/llgo/internal/runtime.String" %2239, ptr %364, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2231)
  br label %_llgo_24

_llgo_101:                                        ; preds = %_llgo_24
  %2240 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %307)
  store ptr %2240, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_24
  %2241 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/internal/abi.ArrayType", align 8
  %2242 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2243 = icmp eq ptr %2242, null
  br i1 %2243, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %2244 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %2245 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2245, i32 0, i32 0
  store ptr %2244, ptr %2246, align 8
  %2247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2245, i32 0, i32 1
  store i64 0, ptr %2247, align 4
  %2248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2245, i32 0, i32 2
  store i64 0, ptr %2248, align 4
  %2249 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2245, align 8
  %2250 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %2251 = getelementptr ptr, ptr %2250, i64 0
  store ptr %2241, ptr %2251, align 8
  %2252 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2252, i32 0, i32 0
  store ptr %2250, ptr %2253, align 8
  %2254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2252, i32 0, i32 1
  store i64 1, ptr %2254, align 4
  %2255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2252, i32 0, i32 2
  store i64 1, ptr %2255, align 4
  %2256 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2252, align 8
  %2257 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %2249, %"github.com/goplus/llgo/internal/runtime.Slice" %2256, i1 false)
  store ptr %2257, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %2258 = load ptr, ptr @"_llgo_func$CsVqlCxhoEcIvPD5BSBukfSiD9C7Ic5_Gf32MLbCWB4", align 8
  %2259 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2259, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %304, ptr %2260, align 8
  %2261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2259, i32 0, i32 1
  store ptr %2258, ptr %2261, align 8
  %2262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2259, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2262, align 8
  %2263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2259, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).ArrayType", ptr %2263, align 8
  %2264 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2259, align 8
  %2265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2265, i32 0, i32 0
  store ptr @25, ptr %2266, align 8
  %2267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2265, i32 0, i32 1
  store i64 6, ptr %2267, align 4
  %2268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2265, align 8
  %2269 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2270 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2270, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2268, ptr %2271, align 8
  %2272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2270, i32 0, i32 1
  store ptr %2269, ptr %2272, align 8
  %2273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2270, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2273, align 8
  %2274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2270, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Common", ptr %2274, align 8
  %2275 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2270, align 8
  %2276 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, i32 0, i32 0
  store ptr @22, ptr %2277, align 8
  %2278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, i32 0, i32 1
  store i64 4, ptr %2278, align 4
  %2279 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2276, align 8
  %2280 = load ptr, ptr @"_llgo_func$4-mqItKfDlL0CgVKnUxoresYgh6zW1WSlZYZSsVzLRo", align 8
  %2281 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2281, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2279, ptr %2282, align 8
  %2283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2281, i32 0, i32 1
  store ptr %2280, ptr %2283, align 8
  %2284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2281, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2284, align 8
  %2285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2281, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem", ptr %2285, align 8
  %2286 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2281, align 8
  %2287 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2287, i32 0, i32 0
  store ptr @26, ptr %2288, align 8
  %2289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2287, i32 0, i32 1
  store i64 10, ptr %2289, align 4
  %2290 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2287, align 8
  %2291 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2292 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2290, ptr %2293, align 8
  %2294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 1
  store ptr %2291, ptr %2294, align 8
  %2295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2295, align 8
  %2296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FieldAlign", ptr %2296, align 8
  %2297 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2292, align 8
  %2298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, i32 0, i32 0
  store ptr @27, ptr %2299, align 8
  %2300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, i32 0, i32 1
  store i64 8, ptr %2300, align 4
  %2301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2298, align 8
  %2302 = load ptr, ptr @"_llgo_func$DsoxgOnxqV7tLvokF3AA14v1gtHsHaThoC8Q_XGcQww", align 8
  %2303 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2303, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2301, ptr %2304, align 8
  %2305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2303, i32 0, i32 1
  store ptr %2302, ptr %2305, align 8
  %2306 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2303, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2306, align 8
  %2307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2303, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).FuncType", ptr %2307, align 8
  %2308 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2303, align 8
  %2309 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2309, i32 0, i32 0
  store ptr @30, ptr %2310, align 8
  %2311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2309, i32 0, i32 1
  store i64 7, ptr %2311, align 4
  %2312 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2309, align 8
  %2313 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2314 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2314, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2312, ptr %2315, align 8
  %2316 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2314, i32 0, i32 1
  store ptr %2313, ptr %2316, align 8
  %2317 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2314, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2317, align 8
  %2318 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2314, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).HasName", ptr %2318, align 8
  %2319 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2314, align 8
  %2320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2320, i32 0, i32 0
  store ptr @31, ptr %2321, align 8
  %2322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2320, i32 0, i32 1
  store i64 10, ptr %2322, align 4
  %2323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2320, align 8
  %2324 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2325 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2326 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2325, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2323, ptr %2326, align 8
  %2327 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2325, i32 0, i32 1
  store ptr %2324, ptr %2327, align 8
  %2328 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2325, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2328, align 8
  %2329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2325, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IfaceIndir", ptr %2329, align 8
  %2330 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2325, align 8
  %2331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2331, i32 0, i32 0
  store ptr @32, ptr %2332, align 8
  %2333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2331, i32 0, i32 1
  store i64 13, ptr %2333, align 4
  %2334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2331, align 8
  %2335 = load ptr, ptr @"_llgo_func$1QmforOaCy2fBAssC2y1FWCCT6fpq9RKwP2j2HIASY8", align 8
  %2336 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2337 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2336, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2334, ptr %2337, align 8
  %2338 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2336, i32 0, i32 1
  store ptr %2335, ptr %2338, align 8
  %2339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2336, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2339, align 8
  %2340 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2336, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).InterfaceType", ptr %2340, align 8
  %2341 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2336, align 8
  %2342 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2342, i32 0, i32 0
  store ptr @35, ptr %2343, align 8
  %2344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2342, i32 0, i32 1
  store i64 13, ptr %2344, align 4
  %2345 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2342, align 8
  %2346 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2347 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2348 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2347, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2345, ptr %2348, align 8
  %2349 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2347, i32 0, i32 1
  store ptr %2346, ptr %2349, align 8
  %2350 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2347, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2350, align 8
  %2351 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2347, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).IsDirectIface", ptr %2351, align 8
  %2352 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2347, align 8
  %2353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2353, i32 0, i32 0
  store ptr @36, ptr %2354, align 8
  %2355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2353, i32 0, i32 1
  store i64 4, ptr %2355, align 4
  %2356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2353, align 8
  %2357 = load ptr, ptr @"_llgo_func$ntUE0UmVAWPS2O7GpCCGszSn-XnjHJntZZ2jYtwbFXI", align 8
  %2358 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2358, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2356, ptr %2359, align 8
  %2360 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2358, i32 0, i32 1
  store ptr %2357, ptr %2360, align 8
  %2361 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2358, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2361, align 8
  %2362 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2358, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Kind", ptr %2362, align 8
  %2363 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2358, align 8
  %2364 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2364, i32 0, i32 0
  store ptr @24, ptr %2365, align 8
  %2366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2364, i32 0, i32 1
  store i64 3, ptr %2366, align 4
  %2367 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2364, align 8
  %2368 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %2369 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2370 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2369, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2367, ptr %2370, align 8
  %2371 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2369, i32 0, i32 1
  store ptr %2368, ptr %2371, align 8
  %2372 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2369, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2372, align 8
  %2373 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2369, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Len", ptr %2373, align 8
  %2374 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2369, align 8
  %2375 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2375, i32 0, i32 0
  store ptr @39, ptr %2376, align 8
  %2377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2375, i32 0, i32 1
  store i64 7, ptr %2377, align 4
  %2378 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2375, align 8
  %2379 = load ptr, ptr @"_llgo_func$d-NlqnjcQnaMjsBQY7qh2SWQmHb0XIigoceXdiJ8YT4", align 8
  %2380 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2380, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2378, ptr %2381, align 8
  %2382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2380, i32 0, i32 1
  store ptr %2379, ptr %2382, align 8
  %2383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2380, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2383, align 8
  %2384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2380, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).MapType", ptr %2384, align 8
  %2385 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2380, align 8
  %2386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2386, i32 0, i32 0
  store ptr @51, ptr %2387, align 8
  %2388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2386, i32 0, i32 1
  store i64 8, ptr %2388, align 4
  %2389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2386, align 8
  %2390 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %2391 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2391, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2389, ptr %2392, align 8
  %2393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2391, i32 0, i32 1
  store ptr %2390, ptr %2393, align 8
  %2394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2391, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2394, align 8
  %2395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2391, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Pointers", ptr %2395, align 8
  %2396 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2391, align 8
  %2397 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2397, i32 0, i32 0
  store ptr @53, ptr %2398, align 8
  %2399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2397, i32 0, i32 1
  store i64 4, ptr %2399, align 4
  %2400 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2397, align 8
  %2401 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %2402 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2403 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2402, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2400, ptr %2403, align 8
  %2404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2402, i32 0, i32 1
  store ptr %2401, ptr %2404, align 8
  %2405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2402, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2405, align 8
  %2406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2402, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Size", ptr %2406, align 8
  %2407 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2402, align 8
  %2408 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2408, i32 0, i32 0
  store ptr @37, ptr %2409, align 8
  %2410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2408, i32 0, i32 1
  store i64 6, ptr %2410, align 4
  %2411 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2408, align 8
  %2412 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %2413 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2414 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2413, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2411, ptr %2414, align 8
  %2415 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2413, i32 0, i32 1
  store ptr %2412, ptr %2415, align 8
  %2416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2413, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2416, align 8
  %2417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2413, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).String", ptr %2417, align 8
  %2418 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2413, align 8
  %2419 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2419, i32 0, i32 0
  store ptr @54, ptr %2420, align 8
  %2421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2419, i32 0, i32 1
  store i64 10, ptr %2421, align 4
  %2422 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2419, align 8
  %2423 = load ptr, ptr @"_llgo_func$qiNnn6Cbm3GtDp4gDI4U_DRV3h8zlz91s9jrfOXC--U", align 8
  %2424 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2425 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2424, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2422, ptr %2425, align 8
  %2426 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2424, i32 0, i32 1
  store ptr %2423, ptr %2426, align 8
  %2427 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2424, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2427, align 8
  %2428 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2424, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).StructType", ptr %2428, align 8
  %2429 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2424, align 8
  %2430 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2430, i32 0, i32 0
  store ptr @56, ptr %2431, align 8
  %2432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2430, i32 0, i32 1
  store i64 8, ptr %2432, align 4
  %2433 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2430, align 8
  %2434 = load ptr, ptr @"_llgo_func$DbD4nZv_bjE4tH8hh-VfAjMXMpNfIsMlLJJJPKupp34", align 8
  %2435 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %2436 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2435, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %2433, ptr %2436, align 8
  %2437 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2435, i32 0, i32 1
  store ptr %2434, ptr %2437, align 8
  %2438 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2435, i32 0, i32 2
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2438, align 8
  %2439 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %2435, i32 0, i32 3
  store ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon", ptr %2439, align 8
  %2440 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %2435, align 8
  %2441 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 720)
  %2442 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %300, ptr %2442, align 8
  %2443 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %2264, ptr %2443, align 8
  %2444 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %2275, ptr %2444, align 8
  %2445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %2286, ptr %2445, align 8
  %2446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %2297, ptr %2446, align 8
  %2447 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %2308, ptr %2447, align 8
  %2448 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %2319, ptr %2448, align 8
  %2449 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %2330, ptr %2449, align 8
  %2450 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %2341, ptr %2450, align 8
  %2451 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %2352, ptr %2451, align 8
  %2452 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 10
  store %"github.com/goplus/llgo/internal/abi.Method" %2363, ptr %2452, align 8
  %2453 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 11
  store %"github.com/goplus/llgo/internal/abi.Method" %2374, ptr %2453, align 8
  %2454 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 12
  store %"github.com/goplus/llgo/internal/abi.Method" %2385, ptr %2454, align 8
  %2455 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 13
  store %"github.com/goplus/llgo/internal/abi.Method" %2396, ptr %2455, align 8
  %2456 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 14
  store %"github.com/goplus/llgo/internal/abi.Method" %2407, ptr %2456, align 8
  %2457 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 15
  store %"github.com/goplus/llgo/internal/abi.Method" %2418, ptr %2457, align 8
  %2458 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 16
  store %"github.com/goplus/llgo/internal/abi.Method" %2429, ptr %2458, align 8
  %2459 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %2441, i64 17
  store %"github.com/goplus/llgo/internal/abi.Method" %2440, ptr %2459, align 8
  %2460 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %2461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2460, i32 0, i32 0
  store ptr %2441, ptr %2461, align 8
  %2462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2460, i32 0, i32 1
  store i64 18, ptr %2462, align 4
  %2463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2460, i32 0, i32 2
  store i64 18, ptr %2463, align 4
  %2464 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %2460, align 8
  %2465 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2465, i32 0, i32 0
  store ptr @38, ptr %2466, align 8
  %2467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2465, i32 0, i32 1
  store i64 35, ptr %2467, align 4
  %2468 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2465, align 8
  %2469 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2469, i32 0, i32 0
  store ptr @21, ptr %2470, align 8
  %2471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2469, i32 0, i32 1
  store i64 4, ptr %2471, align 4
  %2472 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2469, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %21, %"github.com/goplus/llgo/internal/runtime.String" %2468, %"github.com/goplus/llgo/internal/runtime.String" %2472, ptr %266, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %2464)
  br label %_llgo_14
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

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
