; ModuleID = 'github.com/goplus/llgo/cl/_testrt/abinamed'
source_filename = "github.com/goplus/llgo/cl/_testrt/abinamed"

%"github.com/goplus/llgo/cl/_testrt/abinamed.T" = type { ptr, ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/abinamed.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/abinamed.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/abinamed", align 1
@1 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Type" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [34 x i8] c"github.com/goplus/llgo/runtime/abi", align 1
@3 = private unnamed_addr constant [4 x i8] c"Type", align 1
@_llgo_uintptr = linkonce global ptr null, align 8
@_llgo_uint32 = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.TFlag" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [2 x i8] c"$f", align 1
@6 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"*_llgo_uint8" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Type" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0" = linkonce global ptr null, align 8
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
@"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" = linkonce global ptr null, align 8
@"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@20 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@21 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" = linkonce global ptr null, align 8
@"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" = linkonce global ptr null, align 8
@"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.Method" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [6 x i8] c"Method", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.FuncType" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [2 x i8] c"In", align 1
@28 = private unnamed_addr constant [3 x i8] c"Out", align 1
@"[]_llgo_github.com/goplus/llgo/runtime/abi.Method" = linkonce global ptr null, align 8
@"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType" = linkonce global ptr null, align 8
@"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@32 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = linkonce global ptr null, align 8
@33 = private unnamed_addr constant [7 x i8] c"Imethod", align 1
@"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw" = linkonce global ptr null, align 8
@34 = private unnamed_addr constant [5 x i8] c"Name_", align 1
@35 = private unnamed_addr constant [4 x i8] c"Typ_", align 1
@36 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@37 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [7 x i8] c"PkgPath", align 1
@"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = linkonce global ptr null, align 8
@"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io" = linkonce global ptr null, align 8
@39 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@40 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" = linkonce global ptr null, align 8
@"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" = linkonce global ptr null, align 8
@41 = private unnamed_addr constant [9 x i8] c"IsClosure", align 1
@42 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@43 = private unnamed_addr constant [3 x i8] c"Key", align 1
@44 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.Kind" = linkonce global ptr null, align 8
@_llgo_uint = linkonce global ptr null, align 8
@45 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" = linkonce global ptr null, align 8
@46 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8" = linkonce global ptr null, align 8
@47 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@48 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@49 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@50 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@51 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@52 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@53 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@54 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@55 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.MapType" = linkonce global ptr null, align 8
@"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" = linkonce global ptr null, align 8
@56 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@57 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@58 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@59 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@60 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = linkonce global ptr null, align 8
@61 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.StructField" = linkonce global ptr null, align 8
@62 = private unnamed_addr constant [11 x i8] c"StructField", align 1
@"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU" = linkonce global ptr null, align 8
@63 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@64 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@65 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@66 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@67 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" = linkonce global ptr null, align 8
@"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0" = linkonce global ptr null, align 8
@68 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.StructType" = linkonce global ptr null, align 8
@"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" = linkonce global ptr null, align 8
@69 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [12 x i8] c"UncommonType", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI" = linkonce global ptr null, align 8
@71 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@72 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@73 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" = linkonce global ptr null, align 8
@"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" = linkonce global ptr null, align 8
@74 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE" = linkonce global ptr null, align 8
@75 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@76 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@77 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE" = linkonce global ptr null, align 8
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

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  call void @"github.com/goplus/llgo/cl/_testrt/abinamed.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.main"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/abinamed.T" zeroinitializer, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(ptr %4)
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 72)
  store %"github.com/goplus/llgo/runtime/abi.Type" zeroinitializer, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %10, align 8
  %11 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(ptr %10)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %11, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %11, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %24, i8 0, i64 56, i1 false)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %26)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %27, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %28, align 8
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, 0
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, 1
  %32 = icmp sge i64 0, %31
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %30, i64 0
  %34 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %33, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %34, ptr %24, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %24, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %38, i32 0, i32 10
  %40 = load ptr, ptr %39, align 8
  %41 = icmp ne ptr %36, %40
  br i1 %41, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %42 = load ptr, ptr @_llgo_string, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 13 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  %46 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %46, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %46)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %47 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %24, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %48)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8
  %52 = icmp ne ptr %49, %51
  br i1 %52, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %53 = load ptr, ptr @_llgo_string, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 18 }, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr %54, 1
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %57, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %57)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %58 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %58, i8 0, i64 56, i1 false)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %60)
  %62 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %61, i32 0, i32 2
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %62, align 8
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, 0
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, 1
  %66 = icmp sge i64 1, %65
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %64, i64 1
  %68 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %68, ptr %58, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %58, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %11, i32 0, i32 0
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %72, i32 0, i32 10
  %74 = load ptr, ptr %73, align 8
  %75 = icmp ne ptr %70, %74
  br i1 %75, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %76 = load ptr, ptr @_llgo_string, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 13 }, ptr %77, align 8
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %76, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, ptr %77, 1
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %79, ptr %80, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %80)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %58, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %82)
  %84 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %11, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8
  %86 = icmp ne ptr %83, %85
  br i1 %86, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %87 = load ptr, ptr @_llgo_string, align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 18 }, ptr %88, align 8
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %87, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %88, 1
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %91, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %91)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %92 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %92, i8 0, i64 56, i1 false)
  %93 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %94 = load ptr, ptr %93, align 8
  %95 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %94)
  %96 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %95, i32 0, i32 2
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %96, align 8
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 0
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 1
  %100 = icmp sge i64 2, %99
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %100)
  %101 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %98, i64 2
  %102 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %101, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %102, ptr %92, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %92, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %11, i32 0, i32 0
  %106 = load ptr, ptr %105, align 8
  %107 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %106)
  %108 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %107, i32 0, i32 2
  %109 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %108, align 8
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 0
  %111 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, 1
  %112 = icmp sge i64 0, %111
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %112)
  %113 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %110, i64 0
  %114 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 8
  %116 = icmp ne ptr %104, %115
  br i1 %116, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %117 = load ptr, ptr @_llgo_string, align 8
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 13 }, ptr %118, align 8
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %117, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %119, ptr %118, 1
  %121 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %120, ptr %121, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %121)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %122 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %122, i8 0, i64 56, i1 false)
  %123 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %124 = load ptr, ptr %123, align 8
  %125 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %124)
  %126 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %125, i32 0, i32 2
  %127 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %126, align 8
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 0
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, 1
  %130 = icmp sge i64 3, %129
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %130)
  %131 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 3
  %132 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %131, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %132, ptr %122, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %122, i32 0, i32 1
  %134 = load ptr, ptr %133, align 8
  %135 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %134)
  %136 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
  %137 = load ptr, ptr %136, align 8
  %138 = icmp ne ptr %135, %137
  br i1 %138, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %139 = load ptr, ptr @_llgo_string, align 8
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 13 }, ptr %140, align 8
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %139, 0
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %141, ptr %140, 1
  %143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %142, ptr %143, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %143)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/runtime/abi.init"()

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 48, i64 0, i64 0)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %6, ptr %7, i64 25, i64 48, i64 0, i64 0)
  %9 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %11)
  store ptr %11, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %12 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %13, ptr %14, i64 25, i64 80, i64 0, i64 23)
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %15, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %18 = load ptr, ptr @_llgo_uintptr, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %20, ptr @_llgo_uintptr, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %21 = load ptr, ptr @_llgo_uintptr, align 8
  %22 = load ptr, ptr @_llgo_uint32, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %24, ptr @_llgo_uint32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %25 = load ptr, ptr @_llgo_uint32, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %26, ptr %27, i64 8, i64 1, i64 0, i64 0)
  %29 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %28, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %31 = load ptr, ptr @_llgo_uint8, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %33, ptr @_llgo_uint8, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %34 = load ptr, ptr @_llgo_uint8, align 8
  br i1 %30, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %36, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %28, ptr %34, ptr %35, ptr %36)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %37 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  %38 = load ptr, ptr @_llgo_Pointer, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %40)
  store ptr %40, ptr @_llgo_Pointer, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %41 = load ptr, ptr @_llgo_Pointer, align 8
  %42 = load ptr, ptr @_llgo_bool, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %44, ptr @_llgo_bool, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %45 = load ptr, ptr @_llgo_bool, align 8
  %46 = load ptr, ptr @_llgo_Pointer, align 8
  %47 = load ptr, ptr @_llgo_Pointer, align 8
  %48 = load ptr, ptr @_llgo_bool, align 8
  %49 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %52 = getelementptr ptr, ptr %51, i64 0
  store ptr %46, ptr %52, align 8
  %53 = getelementptr ptr, ptr %51, i64 1
  store ptr %47, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %51, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 2, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 2, 2
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %58 = getelementptr ptr, ptr %57, i64 0
  store ptr %48, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 1, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 1, 2
  %62 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, ptr %62, align 8
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, ptr %63, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %62, ptr %63, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %64)
  store ptr %64, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %65 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %66 = load ptr, ptr @_llgo_Pointer, align 8
  %67 = load ptr, ptr @_llgo_Pointer, align 8
  %68 = load ptr, ptr @_llgo_bool, align 8
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %70 = getelementptr ptr, ptr %69, i64 0
  store ptr %66, ptr %70, align 8
  %71 = getelementptr ptr, ptr %69, i64 1
  store ptr %67, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 2, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 2, 2
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %76 = getelementptr ptr, ptr %75, i64 0
  store ptr %68, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %75, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 1, 2
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, ptr %80, align 8
  %81 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, ptr %81, align 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %80, ptr %81, i1 false)
  %83 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %84 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %84, align 8
  %85 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %85, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %83, ptr %84, ptr %82, i64 0, ptr %85, i1 false)
  %86 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %83, align 8
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %88 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %89, align 8
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %90, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %88, ptr %89, ptr %87, i64 8, ptr %90, i1 false)
  %91 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %88, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %93 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %92, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %86, ptr %93, align 8
  %94 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %92, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %91, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %92, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 2, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 2, 2
  %98 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, ptr %99, align 8
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %98, i64 16, ptr %99)
  store ptr %100, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %101 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %102 = load ptr, ptr @_llgo_uint8, align 8
  %103 = load ptr, ptr @"*_llgo_uint8", align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %106)
  store ptr %106, ptr @"*_llgo_uint8", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %107 = load ptr, ptr @"*_llgo_uint8", align 8
  %108 = load ptr, ptr @_llgo_string, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %110, ptr @_llgo_string, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %111 = load ptr, ptr @_llgo_string, align 8
  %112 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %113 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %113, align 8
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %114, align 8
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %113, ptr %114, i64 25, i64 72, i64 0, i64 23)
  %116 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %118)
  store ptr %118, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %119 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %120, align 8
  %121 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %121, align 8
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %120, ptr %121, i64 8, i64 1, i64 0, i64 0)
  %123 = load ptr, ptr @_llgo_Pointer, align 8
  %124 = load ptr, ptr @_llgo_Pointer, align 8
  %125 = load ptr, ptr @_llgo_bool, align 8
  %126 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %126, align 8
  %127 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %127, align 8
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %126, ptr %127, i64 25, i64 72, i64 0, i64 23)
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %130 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %131 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %132, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %130, ptr %131, ptr %129, i64 0, ptr %132, i1 false)
  %133 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %130, align 8
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %135 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %136 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %136, align 8
  %137 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %137, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %135, ptr %136, ptr %134, i64 8, ptr %137, i1 false)
  %138 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %135, align 8
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %140 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %141 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %141, align 8
  %142 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %142, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %140, ptr %141, ptr %139, i64 16, ptr %142, i1 false)
  %143 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %145 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %145, align 8
  %146 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %146, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %144, ptr %145, ptr %122, i64 20, ptr %146, i1 false)
  %147 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, align 8
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %149 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr %150, align 8
  %151 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %151, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %149, ptr %150, ptr %148, i64 21, ptr %151, i1 false)
  %152 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %149, align 8
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %154 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %155 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 11 }, ptr %155, align 8
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %156, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %154, ptr %155, ptr %153, i64 22, ptr %156, i1 false)
  %157 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %159 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %160 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %160, align 8
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %161, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %159, ptr %160, ptr %158, i64 23, ptr %161, i1 false)
  %162 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %159, align 8
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %164 = getelementptr ptr, ptr %163, i64 0
  store ptr %123, ptr %164, align 8
  %165 = getelementptr ptr, ptr %163, i64 1
  store ptr %124, ptr %165, align 8
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %163, 0
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %166, i64 2, 1
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167, i64 2, 2
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %170 = getelementptr ptr, ptr %169, i64 0
  store ptr %125, ptr %170, align 8
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %169, 0
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %171, i64 1, 1
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172, i64 1, 2
  %174 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %168, ptr %174, align 8
  %175 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, ptr %175, align 8
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %174, ptr %175, i1 false)
  %177 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %178 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %178, align 8
  %179 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %179, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %177, ptr %178, ptr %176, i64 0, ptr %179, i1 false)
  %180 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %177, align 8
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %182 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %183 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %183, align 8
  %184 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %184, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %182, ptr %183, ptr %181, i64 8, ptr %184, i1 false)
  %185 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %182, align 8
  %186 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %187 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %186, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %180, ptr %187, align 8
  %188 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %186, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %185, ptr %188, align 8
  %189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %186, 0
  %190 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %189, i64 2, 1
  %191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %190, i64 2, 2
  %192 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %192, align 8
  %193 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %191, ptr %193, align 8
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %192, i64 16, ptr %193)
  %195 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %196 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %196, align 8
  %197 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %197, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %195, ptr %196, ptr %194, i64 24, ptr %197, i1 false)
  %198 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %195, align 8
  %199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %199)
  %201 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %202 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr %202, align 8
  %203 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %203, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %201, ptr %202, ptr %200, i64 40, ptr %203, i1 false)
  %204 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %201, align 8
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %206 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %207 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr %207, align 8
  %208 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %208, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %206, ptr %207, ptr %205, i64 48, ptr %208, i1 false)
  %209 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %206, align 8
  %210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %128)
  %211 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %212 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 10 }, ptr %212, align 8
  %213 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %213, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %211, ptr %212, ptr %210, i64 64, ptr %213, i1 false)
  %214 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %211, align 8
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 616)
  %216 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %133, ptr %216, align 8
  %217 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %138, ptr %217, align 8
  %218 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %143, ptr %218, align 8
  %219 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %147, ptr %219, align 8
  %220 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %152, ptr %220, align 8
  %221 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %157, ptr %221, align 8
  %222 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %162, ptr %222, align 8
  %223 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %198, ptr %223, align 8
  %224 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %204, ptr %224, align 8
  %225 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 9
  store %"github.com/goplus/llgo/runtime/abi.StructField" %209, ptr %225, align 8
  %226 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %215, i64 10
  store %"github.com/goplus/llgo/runtime/abi.StructField" %214, ptr %226, align 8
  %227 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %215, 0
  %228 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %227, i64 11, 1
  %229 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, i64 11, 2
  %230 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %230, align 8
  %231 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %229, ptr %231, align 8
  %232 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %230, i64 72, ptr %231)
  store ptr %232, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  %233 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  br i1 %17, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %234 = load ptr, ptr @_llgo_int, align 8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %_llgo_31, label %_llgo_32

_llgo_30:                                         ; preds = %_llgo_38, %_llgo_28
  %236 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %237 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %238 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %238, align 8
  %239 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %239, align 8
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %238, ptr %239, i64 25, i64 48, i64 0, i64 0)
  %241 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %_llgo_131, label %_llgo_132

_llgo_31:                                         ; preds = %_llgo_29
  %243 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %243, ptr @_llgo_int, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_29
  %244 = load ptr, ptr @_llgo_int, align 8
  %245 = load ptr, ptr @_llgo_int, align 8
  %246 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %248, 0
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %249, i64 0, 1
  %251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %250, i64 0, 2
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %253 = getelementptr ptr, ptr %252, i64 0
  store ptr %245, ptr %253, align 8
  %254 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %252, 0
  %255 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %254, i64 1, 1
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %255, i64 1, 2
  %257 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %251, ptr %257, align 8
  %258 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, ptr %258, align 8
  %259 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %257, ptr %258, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %259)
  store ptr %259, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %260 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %260, 1
  %262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %261, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 2
  %263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %262, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 3
  %264 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %264, align 8
  %265 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr %265, align 8
  %266 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %264, ptr %265, i64 25, i64 104, i64 0, i64 21)
  %267 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  store ptr %266, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %269 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %270 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %271 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %271, align 8
  %272 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %272, align 8
  %273 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %271, ptr %272, i64 25, i64 80, i64 0, i64 23)
  %274 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %274, align 8
  %275 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %275, align 8
  %276 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %274, ptr %275, i64 25, i64 80, i64 0, i64 23)
  %277 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %277, align 8
  %278 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %278, align 8
  %279 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %277, ptr %278, i64 25, i64 80, i64 0, i64 23)
  %280 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %281 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %281, align 8
  %282 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %282, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %280, ptr %281, ptr %273, i64 0, ptr %282, i1 true)
  %283 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %280, align 8
  %284 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %276)
  %285 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %286 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %286, align 8
  %287 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %287, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %285, ptr %286, ptr %284, i64 72, ptr %287, i1 false)
  %288 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %285, align 8
  %289 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %279)
  %290 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %291 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %291, align 8
  %292 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %292, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %290, ptr %291, ptr %289, i64 80, ptr %292, i1 false)
  %293 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %290, align 8
  %294 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %295 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %296 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr %296, align 8
  %297 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %297, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %295, ptr %296, ptr %294, i64 88, ptr %297, i1 false)
  %298 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %295, align 8
  %299 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %300 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %299, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %283, ptr %300, align 8
  %301 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %299, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %288, ptr %301, align 8
  %302 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %299, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %293, ptr %302, align 8
  %303 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %299, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %298, ptr %303, align 8
  %304 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %299, 0
  %305 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %304, i64 4, 1
  %306 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %305, i64 4, 2
  %307 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %307, align 8
  %308 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %306, ptr %308, align 8
  %309 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %307, i64 96, ptr %308)
  store ptr %309, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  %310 = load ptr, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  br i1 %268, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %311 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %311, 1
  %313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %312, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 2
  %314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %313, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 3
  %315 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %315, align 8
  %316 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr %316, align 8
  %317 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %315, ptr %316, i64 25, i64 104, i64 0, i64 21)
  %318 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %_llgo_39, label %_llgo_40

_llgo_38:                                         ; preds = %_llgo_130, %_llgo_36
  %320 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %321 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %322 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %323 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %322, 1
  %324 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %323, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 2
  %325 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %324, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 3
  %326 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %327 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %326, 1
  %328 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %327, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 2
  %329 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %328, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 3
  %330 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %331 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %332 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %331, 1
  %333 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %332, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 2
  %334 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %333, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 3
  %335 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %336 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %337 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %336, 1
  %338 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %337, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 2
  %339 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %338, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 3
  %340 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %341 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %342 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %341, 1
  %343 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %342, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 2
  %344 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %343, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 3
  %345 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %346 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %345, 1
  %347 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %346, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 2
  %348 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %347, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 3
  %349 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %350 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %351 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %350, 1
  %352 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %351, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 2
  %353 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %352, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 3
  %354 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %355 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %354, 1
  %356 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %355, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 2
  %357 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %356, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 3
  %358 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %359 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %358, 1
  %360 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %359, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 2
  %361 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %360, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 3
  %362 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %363 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %364 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %363, 1
  %365 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %364, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 2
  %366 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %365, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 3
  %367 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %368 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %367, 1
  %369 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %368, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 2
  %370 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %369, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 3
  %371 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %372 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %371, 1
  %373 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %372, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 2
  %374 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %373, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 3
  %375 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %376 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %377 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %376, 1
  %378 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %377, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 2
  %379 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %378, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 3
  %380 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %381 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %380, 1
  %382 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %381, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 2
  %383 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %382, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 3
  %384 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %385 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %384, 1
  %386 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %385, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 2
  %387 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %386, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 3
  %388 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %389 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %390 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %389, 1
  %391 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %390, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 2
  %392 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %391, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 3
  %393 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %394 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %393, 1
  %395 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %394, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 2
  %396 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %395, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 3
  %397 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %398 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %397, 1
  %399 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %398, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 2
  %400 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %399, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 3
  %401 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %402 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %401, 1
  %403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %402, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 2
  %404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %403, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 3
  %405 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %406 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %405, 1
  %407 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %406, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 2
  %408 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %407, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 3
  %409 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %410 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %411 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %410, 1
  %412 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %411, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 2
  %413 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %412, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 3
  %414 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %415 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %414, 1
  %416 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %415, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 2
  %417 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %416, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 3
  %418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %419 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %263, ptr %419, align 8
  %420 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %325, ptr %420, align 8
  %421 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %329, ptr %421, align 8
  %422 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %334, ptr %422, align 8
  %423 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %339, ptr %423, align 8
  %424 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %344, ptr %424, align 8
  %425 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %348, ptr %425, align 8
  %426 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %353, ptr %426, align 8
  %427 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %357, ptr %427, align 8
  %428 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %361, ptr %428, align 8
  %429 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %366, ptr %429, align 8
  %430 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %370, ptr %430, align 8
  %431 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %374, ptr %431, align 8
  %432 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %379, ptr %432, align 8
  %433 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %383, ptr %433, align 8
  %434 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %387, ptr %434, align 8
  %435 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %392, ptr %435, align 8
  %436 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %396, ptr %436, align 8
  %437 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %400, ptr %437, align 8
  %438 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %404, ptr %438, align 8
  %439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %408, ptr %439, align 8
  %440 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %413, ptr %440, align 8
  %441 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %417, ptr %441, align 8
  %442 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %418, 0
  %443 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %442, i64 23, 1
  %444 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %443, i64 23, 2
  %445 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %445, align 8
  %446 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %444, ptr %446, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %15, ptr %233, ptr %445, ptr %446)
  br label %_llgo_30

_llgo_39:                                         ; preds = %_llgo_37
  %447 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %317)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %447)
  store ptr %447, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_37
  %448 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %449 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %450 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %451 = icmp eq ptr %450, null
  br i1 %451, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %452 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %453 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %452, 0
  %454 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %453, i64 0, 1
  %455 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, i64 0, 2
  %456 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %457 = getelementptr ptr, ptr %456, i64 0
  store ptr %449, ptr %457, align 8
  %458 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %456, 0
  %459 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %458, i64 1, 1
  %460 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %459, i64 1, 2
  %461 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %455, ptr %461, align 8
  %462 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %460, ptr %462, align 8
  %463 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %461, ptr %462, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %463)
  store ptr %463, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %464 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %465 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %464, 1
  %466 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %465, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 2
  %467 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %466, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 3
  %468 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %468, align 8
  %469 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr %469, align 8
  %470 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %468, ptr %469, i64 2, i64 8, i64 0, i64 0)
  %471 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %472 = icmp eq ptr %471, null
  br i1 %472, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  store ptr %470, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %473 = load ptr, ptr @_llgo_int, align 8
  br i1 %472, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %474 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %474, align 8
  %475 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %475, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %470, ptr %473, ptr %474, ptr %475)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %476 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %477 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %478 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %479 = icmp eq ptr %478, null
  br i1 %479, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %480 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %481 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %480, 0
  %482 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %481, i64 0, 1
  %483 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %482, i64 0, 2
  %484 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %485 = getelementptr ptr, ptr %484, i64 0
  store ptr %477, ptr %485, align 8
  %486 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %484, 0
  %487 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %486, i64 1, 1
  %488 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %487, i64 1, 2
  %489 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, ptr %489, align 8
  %490 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %488, ptr %490, align 8
  %491 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %489, ptr %490, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %491)
  store ptr %491, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %492 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %493 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %492, 1
  %494 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %493, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 2
  %495 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %494, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 3
  %496 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %497 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %498 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %499 = icmp eq ptr %498, null
  br i1 %499, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %500 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %501 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %500, 0
  %502 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %501, i64 0, 1
  %503 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %502, i64 0, 2
  %504 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %505 = getelementptr ptr, ptr %504, i64 0
  store ptr %497, ptr %505, align 8
  %506 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %504, 0
  %507 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %506, i64 1, 1
  %508 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %507, i64 1, 2
  %509 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %503, ptr %509, align 8
  %510 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %508, ptr %510, align 8
  %511 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %509, ptr %510, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %511)
  store ptr %511, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %512 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %513 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %512, 1
  %514 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %513, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 2
  %515 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %514, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 3
  %516 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %516, align 8
  %517 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, ptr %517, align 8
  %518 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %516, ptr %517, i64 25, i64 40, i64 0, i64 3)
  %519 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %520 = icmp eq ptr %519, null
  br i1 %520, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %518, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %521 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %521, align 8
  %522 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr %522, align 8
  %523 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %521, ptr %522, i64 25, i64 128, i64 0, i64 24)
  %524 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %525 = icmp eq ptr %524, null
  br i1 %525, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %523, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %526 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %527 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %527, align 8
  %528 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %528, align 8
  %529 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %527, ptr %528, i64 25, i64 80, i64 0, i64 23)
  %530 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %531 = icmp eq ptr %530, null
  br i1 %531, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %532 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %529)
  %533 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %532)
  store ptr %533, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %534 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %535 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %536 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %537 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %537, align 8
  %538 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %538, align 8
  %539 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %537, ptr %538, i64 25, i64 80, i64 0, i64 23)
  %540 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %540, align 8
  %541 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %541, align 8
  %542 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %540, ptr %541, i64 25, i64 80, i64 0, i64 23)
  %543 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %543, align 8
  %544 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %544, align 8
  %545 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %543, ptr %544, i64 25, i64 80, i64 0, i64 23)
  %546 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %547 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %547, align 8
  %548 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %548, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %546, ptr %547, ptr %539, i64 0, ptr %548, i1 true)
  %549 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %546, align 8
  %550 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %542)
  %551 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %550)
  %552 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %553 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr %553, align 8
  %554 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %554, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %552, ptr %553, ptr %551, i64 72, ptr %554, i1 false)
  %555 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %552, align 8
  %556 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %545)
  %557 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %556)
  %558 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %559 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr %559, align 8
  %560 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %560, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %558, ptr %559, ptr %557, i64 96, ptr %560, i1 false)
  %561 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %558, align 8
  %562 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %563 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %562, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %549, ptr %563, align 8
  %564 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %562, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %555, ptr %564, align 8
  %565 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %562, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %561, ptr %565, align 8
  %566 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %562, 0
  %567 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %566, i64 3, 1
  %568 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %567, i64 3, 2
  %569 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %569, align 8
  %570 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %568, ptr %570, align 8
  %571 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %569, i64 120, ptr %570)
  store ptr %571, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  %572 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  br i1 %525, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %573 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %574 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %573, 1
  %575 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %574, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 2
  %576 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %575, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 3
  %577 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %578 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %579 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %578, 1
  %580 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %579, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 2
  %581 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %580, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 3
  %582 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %583 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %582, 1
  %584 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %583, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 2
  %585 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %584, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 3
  %586 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %587 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %588 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %587, 1
  %589 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %588, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 2
  %590 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %589, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 3
  %591 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %592 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %593 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %592, 1
  %594 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %593, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 2
  %595 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %594, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 3
  %596 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %596, align 8
  %597 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, ptr %597, align 8
  %598 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %596, ptr %597, i64 25, i64 40, i64 0, i64 3)
  %599 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %600 = icmp eq ptr %599, null
  br i1 %600, label %_llgo_59, label %_llgo_60

_llgo_58:                                         ; preds = %_llgo_80, %_llgo_56
  %601 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %602 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %603 = load ptr, ptr @_llgo_Pointer, align 8
  %604 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %604, align 8
  %605 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr %605, align 8
  %606 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %604, ptr %605, i64 25, i64 128, i64 0, i64 24)
  %607 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %608 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %609 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %609, align 8
  %610 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %610, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %608, ptr %609, ptr %607, i64 0, ptr %610, i1 false)
  %611 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %608, align 8
  %612 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %606)
  %613 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %614 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr %614, align 8
  %615 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %615, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %613, ptr %614, ptr %612, i64 16, ptr %615, i1 false)
  %616 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %613, align 8
  %617 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %618 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %619 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr %619, align 8
  %620 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %620, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %618, ptr %619, ptr %617, i64 24, ptr %620, i1 false)
  %621 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %618, align 8
  %622 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %623 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %624 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr %624, align 8
  %625 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %625, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %623, ptr %624, ptr %622, i64 32, ptr %625, i1 false)
  %626 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %623, align 8
  %627 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %628 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %627, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %611, ptr %628, align 8
  %629 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %627, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %616, ptr %629, align 8
  %630 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %627, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %621, ptr %630, align 8
  %631 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %627, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %626, ptr %631, align 8
  %632 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %627, 0
  %633 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %632, i64 4, 1
  %634 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %633, i64 4, 2
  %635 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %635, align 8
  %636 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %634, ptr %636, align 8
  %637 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %635, i64 40, ptr %636)
  store ptr %637, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  %638 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  br i1 %520, label %_llgo_129, label %_llgo_130

_llgo_59:                                         ; preds = %_llgo_57
  %639 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %598)
  store ptr %639, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_57
  %640 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %641 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %642 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %643 = icmp eq ptr %642, null
  br i1 %643, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %644 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %645 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %644, 0
  %646 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %645, i64 0, 1
  %647 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %646, i64 0, 2
  %648 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %649 = getelementptr ptr, ptr %648, i64 0
  store ptr %641, ptr %649, align 8
  %650 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %648, 0
  %651 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %650, i64 1, 1
  %652 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %651, i64 1, 2
  %653 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %647, ptr %653, align 8
  %654 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %652, ptr %654, align 8
  %655 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %653, ptr %654, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %655)
  store ptr %655, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %656 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %657 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %656, 1
  %658 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %657, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 2
  %659 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %658, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 3
  %660 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %661 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %660, 1
  %662 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %661, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 2
  %663 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %662, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 3
  %664 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %664, align 8
  %665 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr %665, align 8
  %666 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %664, ptr %665, i64 25, i64 128, i64 0, i64 24)
  %667 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %668 = icmp eq ptr %667, null
  br i1 %668, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %669 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %666)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %669)
  store ptr %669, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %670 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %671 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %672 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %673 = icmp eq ptr %672, null
  br i1 %673, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %674 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %675 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %674, 0
  %676 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %675, i64 0, 1
  %677 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %676, i64 0, 2
  %678 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %679 = getelementptr ptr, ptr %678, i64 0
  store ptr %671, ptr %679, align 8
  %680 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %678, 0
  %681 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %680, i64 1, 1
  %682 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %681, i64 1, 2
  %683 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %677, ptr %683, align 8
  %684 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %682, ptr %684, align 8
  %685 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %683, ptr %684, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %685)
  store ptr %685, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %686 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %687 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %686, 1
  %688 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %687, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 2
  %689 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %688, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 3
  %690 = load ptr, ptr @_llgo_bool, align 8
  %691 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %693 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %694 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %693, 0
  %695 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %694, i64 0, 1
  %696 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %695, i64 0, 2
  %697 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %698 = getelementptr ptr, ptr %697, i64 0
  store ptr %690, ptr %698, align 8
  %699 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %697, 0
  %700 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %699, i64 1, 1
  %701 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %700, i64 1, 2
  %702 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %696, ptr %702, align 8
  %703 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %701, ptr %703, align 8
  %704 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %702, ptr %703, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %704)
  store ptr %704, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %705 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %706 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %705, 1
  %707 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %706, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 2
  %708 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %707, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 3
  %709 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %710 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %709, 1
  %711 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %710, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 2
  %712 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %711, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 3
  %713 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %713, align 8
  %714 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr %714, align 8
  %715 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %713, ptr %714, i64 25, i64 120, i64 0, i64 23)
  %716 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %717 = icmp eq ptr %716, null
  br i1 %717, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  store ptr %715, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %718 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %718, align 8
  %719 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, ptr %719, align 8
  %720 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %718, ptr %719, i64 25, i64 24, i64 0, i64 3)
  %721 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %722 = icmp eq ptr %721, null
  br i1 %722, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %720, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %723 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %724 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %724, align 8
  %725 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr %725, align 8
  %726 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %724, ptr %725, i64 25, i64 128, i64 0, i64 24)
  %727 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %728 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %729 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %729, align 8
  %730 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %730, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %728, ptr %729, ptr %727, i64 0, ptr %730, i1 false)
  %731 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %728, align 8
  %732 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %726)
  %733 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %734 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr %734, align 8
  %735 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %735, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %733, ptr %734, ptr %732, i64 16, ptr %735, i1 false)
  %736 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %733, align 8
  %737 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %738 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %737, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %731, ptr %738, align 8
  %739 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %737, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %736, ptr %739, align 8
  %740 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %737, 0
  %741 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %740, i64 2, 1
  %742 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %741, i64 2, 2
  %743 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %743, align 8
  %744 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %742, ptr %744, align 8
  %745 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %743, i64 24, ptr %744)
  store ptr %745, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  %746 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  br i1 %722, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %747 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %748 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %747, 1
  %749 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %748, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 2
  %750 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %749, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 3
  %751 = load ptr, ptr @_llgo_string, align 8
  %752 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %753 = icmp eq ptr %752, null
  br i1 %753, label %_llgo_75, label %_llgo_76

_llgo_74:                                         ; preds = %_llgo_76, %_llgo_72
  %754 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %755 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %755, align 8
  %756 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, ptr %756, align 8
  %757 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %755, ptr %756, i64 25, i64 24, i64 0, i64 3)
  %758 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %759 = icmp eq ptr %758, null
  br i1 %759, label %_llgo_77, label %_llgo_78

_llgo_75:                                         ; preds = %_llgo_73
  %760 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %761 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %760, 0
  %762 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %761, i64 0, 1
  %763 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %762, i64 0, 2
  %764 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %765 = getelementptr ptr, ptr %764, i64 0
  store ptr %751, ptr %765, align 8
  %766 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %764, 0
  %767 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %766, i64 1, 1
  %768 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %767, i64 1, 2
  %769 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %763, ptr %769, align 8
  %770 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %768, ptr %770, align 8
  %771 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %769, ptr %770, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %771)
  store ptr %771, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_73
  %772 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %773 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %772, 1
  %774 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %773, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 2
  %775 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %774, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 3
  %776 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %777 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %776, 1
  %778 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %777, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 2
  %779 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %778, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 3
  %780 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %781 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %780, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %750, ptr %781, align 8
  %782 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %780, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %775, ptr %782, align 8
  %783 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %780, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %779, ptr %783, align 8
  %784 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %780, 0
  %785 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %784, i64 3, 1
  %786 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %785, i64 3, 2
  %787 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %787, align 8
  %788 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %786, ptr %788, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %720, ptr %746, ptr %787, ptr %788)
  br label %_llgo_74

_llgo_77:                                         ; preds = %_llgo_74
  %789 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %757)
  store ptr %789, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_74
  %790 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %791 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %791, align 8
  %792 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %792, align 8
  %793 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %791, ptr %792, i64 25, i64 80, i64 0, i64 23)
  %794 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %794, align 8
  %795 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, ptr %795, align 8
  %796 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %794, ptr %795, i64 25, i64 24, i64 0, i64 3)
  %797 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %798 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %798, align 8
  %799 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %799, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %797, ptr %798, ptr %793, i64 0, ptr %799, i1 true)
  %800 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %797, align 8
  %801 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %802 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %803 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %803, align 8
  %804 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %804, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %802, ptr %803, ptr %801, i64 72, ptr %804, i1 false)
  %805 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %802, align 8
  %806 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %796)
  %807 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %808 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr %808, align 8
  %809 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %809, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %807, ptr %808, ptr %806, i64 88, ptr %809, i1 false)
  %810 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %807, align 8
  %811 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %812 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %811, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %800, ptr %812, align 8
  %813 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %811, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %805, ptr %813, align 8
  %814 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %811, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %810, ptr %814, align 8
  %815 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %811, 0
  %816 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %815, i64 3, 1
  %817 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %816, i64 3, 2
  %818 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %818, align 8
  %819 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %817, ptr %819, align 8
  %820 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %818, i64 112, ptr %819)
  store ptr %820, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  %821 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  br i1 %717, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %822 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %823 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %822, 1
  %824 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %823, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 2
  %825 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %824, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 3
  %826 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %827 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %828 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %827, 1
  %829 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %828, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 2
  %830 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %829, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 3
  %831 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %832 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %831, 1
  %833 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %832, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 2
  %834 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %833, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 3
  %835 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %836 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %837 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %836, 1
  %838 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %837, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 2
  %839 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %838, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 3
  %840 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %841 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %842 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %841, 1
  %843 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %842, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 2
  %844 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %843, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 3
  %845 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %846 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %847 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %846, 1
  %848 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %847, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 2
  %849 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %848, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 3
  %850 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %851 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %850, 1
  %852 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %851, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 2
  %853 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %852, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 3
  %854 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %855 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %856 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %855, 1
  %857 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %856, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 2
  %858 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %857, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 3
  %859 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %860 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %859, 1
  %861 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %860, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 2
  %862 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %861, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 3
  %863 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %864 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %863, 1
  %865 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %864, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 2
  %866 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %865, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 3
  %867 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %867, align 8
  %868 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr %868, align 8
  %869 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %867, ptr %868, i64 25, i64 120, i64 0, i64 23)
  %870 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %871 = icmp eq ptr %870, null
  br i1 %871, label %_llgo_81, label %_llgo_82

_llgo_80:                                         ; preds = %_llgo_100, %_llgo_78
  %872 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %873 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %874 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %875 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %874, 1
  %876 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %875, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 2
  %877 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %876, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 3
  %878 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %879 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %878, 1
  %880 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %879, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 2
  %881 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %880, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 3
  %882 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %883 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %882, 1
  %884 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %883, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 2
  %885 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %884, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 3
  %886 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %887 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %888 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %887, 1
  %889 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %888, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 2
  %890 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %889, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 3
  %891 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %892 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %891, 1
  %893 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %892, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 2
  %894 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %893, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 3
  %895 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %896 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %895, 1
  %897 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %896, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 2
  %898 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %897, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 3
  %899 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %900 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %901 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %900, 1
  %902 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %901, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 2
  %903 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %902, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 3
  %904 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %905 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %904, 1
  %906 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %905, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 2
  %907 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %906, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 3
  %908 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %909 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %908, 1
  %910 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %909, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 2
  %911 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %910, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 3
  %912 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %913 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %912, 1
  %914 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %913, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 2
  %915 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %914, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 3
  %916 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %917 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %916, 1
  %918 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %917, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 2
  %919 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %918, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 3
  %920 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %921 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %922 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %921, 1
  %923 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %922, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 2
  %924 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %923, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 3
  %925 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %926 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %925, 1
  %927 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %926, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 2
  %928 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %927, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 3
  %929 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %930 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %929, 1
  %931 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %930, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 2
  %932 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %931, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 3
  %933 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 960)
  %934 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %576, ptr %934, align 8
  %935 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %581, ptr %935, align 8
  %936 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %585, ptr %936, align 8
  %937 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %590, ptr %937, align 8
  %938 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %595, ptr %938, align 8
  %939 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %659, ptr %939, align 8
  %940 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %663, ptr %940, align 8
  %941 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %689, ptr %941, align 8
  %942 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %708, ptr %942, align 8
  %943 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %712, ptr %943, align 8
  %944 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %877, ptr %944, align 8
  %945 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %881, ptr %945, align 8
  %946 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %885, ptr %946, align 8
  %947 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %890, ptr %947, align 8
  %948 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %894, ptr %948, align 8
  %949 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %898, ptr %949, align 8
  %950 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %903, ptr %950, align 8
  %951 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %907, ptr %951, align 8
  %952 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %911, ptr %952, align 8
  %953 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %915, ptr %953, align 8
  %954 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %919, ptr %954, align 8
  %955 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %924, ptr %955, align 8
  %956 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %928, ptr %956, align 8
  %957 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %933, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %932, ptr %957, align 8
  %958 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %933, 0
  %959 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %958, i64 24, 1
  %960 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %959, i64 24, 2
  %961 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %961, align 8
  %962 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %960, ptr %962, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %523, ptr %572, ptr %961, ptr %962)
  br label %_llgo_58

_llgo_81:                                         ; preds = %_llgo_79
  %963 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %869)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %963)
  store ptr %963, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_79
  %964 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %965 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %966 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %967 = icmp eq ptr %966, null
  br i1 %967, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %968 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %969 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %968, 0
  %970 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %969, i64 0, 1
  %971 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %970, i64 0, 2
  %972 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %973 = getelementptr ptr, ptr %972, i64 0
  store ptr %965, ptr %973, align 8
  %974 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %972, 0
  %975 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %974, i64 1, 1
  %976 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %975, i64 1, 2
  %977 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %971, ptr %977, align 8
  %978 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %976, ptr %978, align 8
  %979 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %977, ptr %978, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %979)
  store ptr %979, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %980 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %981 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %980, 1
  %982 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %981, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 2
  %983 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %982, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 3
  %984 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %985 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %984, 1
  %986 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %985, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 2
  %987 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %986, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 3
  %988 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %989 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %988, 1
  %990 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %989, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 2
  %991 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %990, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 3
  %992 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %993 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %994 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %993, 1
  %995 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %994, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 2
  %996 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %995, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 3
  %997 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %997, align 8
  %998 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr %998, align 8
  %999 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %997, ptr %998, i64 7, i64 8, i64 1, i64 1)
  %1000 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  store ptr %999, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %1002 = load ptr, ptr @_llgo_uint, align 8
  %1003 = icmp eq ptr %1002, null
  br i1 %1003, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %1004 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %1004, ptr @_llgo_uint, align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %1005 = load ptr, ptr @_llgo_uint, align 8
  br i1 %1001, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %1006 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1007 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1006, 1
  %1008 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1007, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %1009 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1008, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 3
  %1010 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1006, 1
  %1011 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1010, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %1012 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1011, ptr @"github.com/goplus/llgo/runtime/abi.Kind.String", 3
  %1013 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %1014 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1013, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1012, ptr %1014, align 8
  %1015 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1013, 0
  %1016 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1015, i64 1, 1
  %1017 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1016, i64 1, 2
  %1018 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %1019 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1018, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1009, ptr %1019, align 8
  %1020 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1018, 0
  %1021 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1020, i64 1, 1
  %1022 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1021, i64 1, 2
  %1023 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1017, ptr %1023, align 8
  %1024 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1022, ptr %1024, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %999, ptr %1005, ptr %1023, ptr %1024)
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %1025 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %1026 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %1027 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %1029 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1030 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1029, 0
  %1031 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1030, i64 0, 1
  %1032 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1031, i64 0, 2
  %1033 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1034 = getelementptr ptr, ptr %1033, i64 0
  store ptr %1026, ptr %1034, align 8
  %1035 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1033, 0
  %1036 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1035, i64 1, 1
  %1037 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1036, i64 1, 2
  %1038 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1032, ptr %1038, align 8
  %1039 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1037, ptr %1039, align 8
  %1040 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1038, ptr %1039, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1040)
  store ptr %1040, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %1041 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1042 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1041, 1
  %1043 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1042, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 2
  %1044 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1043, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 3
  %1045 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1046 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1045, 1
  %1047 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1046, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 2
  %1048 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1047, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 3
  %1049 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1049, align 8
  %1050 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr %1050, align 8
  %1051 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1049, ptr %1050, i64 25, i64 136, i64 0, i64 26)
  %1052 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  store ptr %1051, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %1054 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1055 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1056 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1057 = load ptr, ptr @_llgo_Pointer, align 8
  %1058 = load ptr, ptr @_llgo_uintptr, align 8
  %1059 = load ptr, ptr @_llgo_uintptr, align 8
  %1060 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %1062 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1063 = getelementptr ptr, ptr %1062, i64 0
  store ptr %1057, ptr %1063, align 8
  %1064 = getelementptr ptr, ptr %1062, i64 1
  store ptr %1058, ptr %1064, align 8
  %1065 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1062, 0
  %1066 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1065, i64 2, 1
  %1067 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1066, i64 2, 2
  %1068 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1069 = getelementptr ptr, ptr %1068, i64 0
  store ptr %1059, ptr %1069, align 8
  %1070 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1068, 0
  %1071 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1070, i64 1, 1
  %1072 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1071, i64 1, 2
  %1073 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1067, ptr %1073, align 8
  %1074 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1072, ptr %1074, align 8
  %1075 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1073, ptr %1074, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1075)
  store ptr %1075, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %1076 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %1077 = load ptr, ptr @_llgo_Pointer, align 8
  %1078 = load ptr, ptr @_llgo_uintptr, align 8
  %1079 = load ptr, ptr @_llgo_uintptr, align 8
  %1080 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1081 = getelementptr ptr, ptr %1080, i64 0
  store ptr %1077, ptr %1081, align 8
  %1082 = getelementptr ptr, ptr %1080, i64 1
  store ptr %1078, ptr %1082, align 8
  %1083 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1080, 0
  %1084 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1083, i64 2, 1
  %1085 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1084, i64 2, 2
  %1086 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1087 = getelementptr ptr, ptr %1086, i64 0
  store ptr %1079, ptr %1087, align 8
  %1088 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1086, 0
  %1089 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1088, i64 1, 1
  %1090 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1089, i64 1, 2
  %1091 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1085, ptr %1091, align 8
  %1092 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1090, ptr %1092, align 8
  %1093 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1091, ptr %1092, i1 false)
  %1094 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1095 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %1095, align 8
  %1096 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1096, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1094, ptr %1095, ptr %1093, i64 0, ptr %1096, i1 false)
  %1097 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1094, align 8
  %1098 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %1099 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %1100, align 8
  %1101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1101, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1099, ptr %1100, ptr %1098, i64 8, ptr %1101, i1 false)
  %1102 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1099, align 8
  %1103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %1104 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1103, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1097, ptr %1104, align 8
  %1105 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1103, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1102, ptr %1105, align 8
  %1106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1103, 0
  %1107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1106, i64 2, 1
  %1108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1107, i64 2, 2
  %1109 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1109, align 8
  %1110 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1108, ptr %1110, align 8
  %1111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1109, i64 16, ptr %1110)
  store ptr %1111, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %1112 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %1113 = load ptr, ptr @_llgo_uint16, align 8
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %1115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %1115, ptr @_llgo_uint16, align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %1116 = load ptr, ptr @_llgo_uint16, align 8
  %1117 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1117, align 8
  %1118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1118, align 8
  %1119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1117, ptr %1118, i64 25, i64 80, i64 0, i64 23)
  %1120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1120, align 8
  %1121 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1121, align 8
  %1122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1120, ptr %1121, i64 25, i64 80, i64 0, i64 23)
  %1123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1123, align 8
  %1124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1124, align 8
  %1125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1123, ptr %1124, i64 25, i64 80, i64 0, i64 23)
  %1126 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1126, align 8
  %1127 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1127, align 8
  %1128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1126, ptr %1127, i64 25, i64 80, i64 0, i64 23)
  %1129 = load ptr, ptr @_llgo_Pointer, align 8
  %1130 = load ptr, ptr @_llgo_uintptr, align 8
  %1131 = load ptr, ptr @_llgo_uintptr, align 8
  %1132 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1133 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1133, align 8
  %1134 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1134, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1132, ptr %1133, ptr %1119, i64 0, ptr %1134, i1 true)
  %1135 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1132, align 8
  %1136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1122)
  %1137 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr %1138, align 8
  %1139 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1139, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1137, ptr %1138, ptr %1136, i64 72, ptr %1139, i1 false)
  %1140 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1137, align 8
  %1141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1125)
  %1142 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %1143, align 8
  %1144 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1144, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1142, ptr %1143, ptr %1141, i64 80, ptr %1144, i1 false)
  %1145 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1142, align 8
  %1146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1128)
  %1147 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1148 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr %1148, align 8
  %1149 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1149, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1147, ptr %1148, ptr %1146, i64 88, ptr %1149, i1 false)
  %1150 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1147, align 8
  %1151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1152 = getelementptr ptr, ptr %1151, i64 0
  store ptr %1129, ptr %1152, align 8
  %1153 = getelementptr ptr, ptr %1151, i64 1
  store ptr %1130, ptr %1153, align 8
  %1154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1151, 0
  %1155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1154, i64 2, 1
  %1156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1155, i64 2, 2
  %1157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1158 = getelementptr ptr, ptr %1157, i64 0
  store ptr %1131, ptr %1158, align 8
  %1159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1157, 0
  %1160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1159, i64 1, 1
  %1161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1160, i64 1, 2
  %1162 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1156, ptr %1162, align 8
  %1163 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1161, ptr %1163, align 8
  %1164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1162, ptr %1163, i1 false)
  %1165 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1166 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %1166, align 8
  %1167 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1167, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1165, ptr %1166, ptr %1164, i64 0, ptr %1167, i1 false)
  %1168 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1165, align 8
  %1169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %1170 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1171 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %1171, align 8
  %1172 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1172, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1170, ptr %1171, ptr %1169, i64 8, ptr %1172, i1 false)
  %1173 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1170, align 8
  %1174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %1175 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1174, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1168, ptr %1175, align 8
  %1176 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1174, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1173, ptr %1176, align 8
  %1177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1174, 0
  %1178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1177, i64 2, 1
  %1179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1178, i64 2, 2
  %1180 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1180, align 8
  %1181 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1179, ptr %1181, align 8
  %1182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1180, i64 16, ptr %1181)
  %1183 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1184 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr %1184, align 8
  %1185 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1185, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1183, ptr %1184, ptr %1182, i64 96, ptr %1185, i1 false)
  %1186 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1183, align 8
  %1187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %1188 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1189 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr %1189, align 8
  %1190 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1190, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1188, ptr %1189, ptr %1187, i64 112, ptr %1190, i1 false)
  %1191 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1188, align 8
  %1192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %1193 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1194 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr %1194, align 8
  %1195 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1195, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1193, ptr %1194, ptr %1192, i64 113, ptr %1195, i1 false)
  %1196 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1193, align 8
  %1197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1198 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1199 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 10 }, ptr %1199, align 8
  %1200 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1200, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1198, ptr %1199, ptr %1197, i64 114, ptr %1200, i1 false)
  %1201 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1198, align 8
  %1202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %1203 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1204 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr %1204, align 8
  %1205 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1205, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1203, ptr %1204, ptr %1202, i64 116, ptr %1205, i1 false)
  %1206 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1203, align 8
  %1207 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 504)
  %1208 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1135, ptr %1208, align 8
  %1209 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1140, ptr %1209, align 8
  %1210 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1145, ptr %1210, align 8
  %1211 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1150, ptr %1211, align 8
  %1212 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1186, ptr %1212, align 8
  %1213 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1191, ptr %1213, align 8
  %1214 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1196, ptr %1214, align 8
  %1215 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1201, ptr %1215, align 8
  %1216 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1207, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1206, ptr %1216, align 8
  %1217 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1207, 0
  %1218 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1217, i64 9, 1
  %1219 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1218, i64 9, 2
  %1220 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1220, align 8
  %1221 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1219, ptr %1221, align 8
  %1222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1220, i64 120, ptr %1221)
  store ptr %1222, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  %1223 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  br i1 %1053, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %1224 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1225 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1224, 1
  %1226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1225, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 2
  %1227 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1226, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 3
  %1228 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1229 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1230 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1229, 1
  %1231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1230, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 2
  %1232 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1231, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 3
  %1233 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1234 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1233, 1
  %1235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1234, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 2
  %1236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1235, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 3
  %1237 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1238 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1239 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1238, 1
  %1240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1239, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 2
  %1241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1240, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 3
  %1242 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1243 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1243, 1
  %1245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1244, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 2
  %1246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1245, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 3
  %1247 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1247, 1
  %1249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1248, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 2
  %1250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1249, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 3
  %1251 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1252 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1252, 1
  %1254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1253, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 2
  %1255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1254, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 3
  %1256 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1256, 1
  %1258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1257, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 2
  %1259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1258, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 3
  %1260 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %1260, 1
  %1262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1261, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 2
  %1263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1262, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 3
  %1264 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1265 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1264, 1
  %1266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1265, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 2
  %1267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1266, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 3
  %1268 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1269 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1268, 1
  %1270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1269, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 2
  %1271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1270, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 3
  %1272 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1273 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1272, 1
  %1274 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1273, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 2
  %1275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1274, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 3
  %1276 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1277 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1278 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1277, 1
  %1279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1278, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 2
  %1280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1279, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 3
  %1281 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1282 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1281, 1
  %1283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1282, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 2
  %1284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1283, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 3
  %1285 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1286 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1285, 1
  %1287 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1286, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 2
  %1288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1287, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 3
  %1289 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1290 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1289, 1
  %1291 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1290, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 2
  %1292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1291, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 3
  %1293 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1293, 1
  %1295 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1294, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 2
  %1296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1295, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 3
  %1297 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1297, align 8
  %1298 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr %1298, align 8
  %1299 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1297, ptr %1298, i64 25, i64 136, i64 0, i64 26)
  %1300 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %_llgo_101, label %_llgo_102

_llgo_100:                                        ; preds = %_llgo_116, %_llgo_98
  %1302 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1303 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1304 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1304, 1
  %1306 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1305, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 2
  %1307 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1306, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 3
  %1308 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1308, 1
  %1310 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1309, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 2
  %1311 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1310, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 3
  %1312 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1312, 1
  %1314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1313, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 2
  %1315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1314, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 3
  %1316 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1317 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1316, 1
  %1318 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1317, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 2
  %1319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1318, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 3
  %1320 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1321 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1320, 1
  %1322 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1321, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 2
  %1323 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1322, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 3
  %1324 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1325 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1326 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1325, 1
  %1327 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1326, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 2
  %1328 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1327, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 3
  %1329 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1330 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1329, 1
  %1331 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1330, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 2
  %1332 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1331, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 3
  %1333 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %825, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %830, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %834, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %839, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %844, ptr %1338, align 8
  %1339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %849, ptr %1339, align 8
  %1340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %853, ptr %1340, align 8
  %1341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %858, ptr %1341, align 8
  %1342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %862, ptr %1342, align 8
  %1343 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %866, ptr %1343, align 8
  %1344 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %983, ptr %1344, align 8
  %1345 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %987, ptr %1345, align 8
  %1346 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %991, ptr %1346, align 8
  %1347 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %996, ptr %1347, align 8
  %1348 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1044, ptr %1348, align 8
  %1349 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1048, ptr %1349, align 8
  %1350 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1307, ptr %1350, align 8
  %1351 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1311, ptr %1351, align 8
  %1352 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1315, ptr %1352, align 8
  %1353 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1319, ptr %1353, align 8
  %1354 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1323, ptr %1354, align 8
  %1355 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1328, ptr %1355, align 8
  %1356 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1333, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1332, ptr %1356, align 8
  %1357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1333, 0
  %1358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1357, i64 23, 1
  %1359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1358, i64 23, 2
  %1360 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1360, align 8
  %1361 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1359, ptr %1361, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %715, ptr %821, ptr %1360, ptr %1361)
  br label %_llgo_80

_llgo_101:                                        ; preds = %_llgo_99
  %1362 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1299)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1362)
  store ptr %1362, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_99
  %1363 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1364 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1365 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1366 = icmp eq ptr %1365, null
  br i1 %1366, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %1367 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1368 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1367, 0
  %1369 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1368, i64 0, 1
  %1370 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1369, i64 0, 2
  %1371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1372 = getelementptr ptr, ptr %1371, i64 0
  store ptr %1364, ptr %1372, align 8
  %1373 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1371, 0
  %1374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1373, i64 1, 1
  %1375 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1374, i64 1, 2
  %1376 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1370, ptr %1376, align 8
  %1377 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1375, ptr %1377, align 8
  %1378 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1376, ptr %1377, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1378)
  store ptr %1378, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %1379 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1380 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1379, 1
  %1381 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1380, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 2
  %1382 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1381, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 3
  %1383 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1384 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1383, 1
  %1385 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1384, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 2
  %1386 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1385, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 3
  %1387 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1388 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1387, 1
  %1389 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1388, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 2
  %1390 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1389, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 3
  %1391 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1392 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1391, 1
  %1393 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1392, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 2
  %1394 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1393, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 3
  %1395 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1396 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1395, 1
  %1397 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1396, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 2
  %1398 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1397, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 3
  %1399 = load ptr, ptr @_llgo_uintptr, align 8
  %1400 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1401 = icmp eq ptr %1400, null
  br i1 %1401, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %1402 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1403 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1402, 0
  %1404 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1403, i64 0, 1
  %1405 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1404, i64 0, 2
  %1406 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1407 = getelementptr ptr, ptr %1406, i64 0
  store ptr %1399, ptr %1407, align 8
  %1408 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1406, 0
  %1409 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1408, i64 1, 1
  %1410 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1409, i64 1, 2
  %1411 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1405, ptr %1411, align 8
  %1412 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1410, ptr %1412, align 8
  %1413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1411, ptr %1412, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1413)
  store ptr %1413, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %1414 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1415 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1414, 1
  %1416 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1415, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 2
  %1417 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1416, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 3
  %1418 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1419 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1418, 1
  %1420 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1419, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 2
  %1421 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1420, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 3
  %1422 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1422, align 8
  %1423 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr %1423, align 8
  %1424 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1422, ptr %1423, i64 25, i64 120, i64 0, i64 23)
  %1425 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  store ptr %1424, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1427 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1427, align 8
  %1428 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, ptr %1428, align 8
  %1429 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1427, ptr %1428, i64 25, i64 56, i64 0, i64 2)
  %1430 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1431 = icmp eq ptr %1430, null
  br i1 %1431, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  store ptr %1429, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %1432 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1433 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1433, align 8
  %1434 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1434, align 8
  %1435 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1433, ptr %1434, i64 25, i64 80, i64 0, i64 23)
  %1436 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1437 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1438 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %1438, align 8
  %1439 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1439, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1437, ptr %1438, ptr %1436, i64 0, ptr %1439, i1 false)
  %1440 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1437, align 8
  %1441 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1435)
  %1442 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1443 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 3 }, ptr %1443, align 8
  %1444 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1444, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1442, ptr %1443, ptr %1441, i64 16, ptr %1444, i1 false)
  %1445 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1442, align 8
  %1446 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1447 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1448 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr %1448, align 8
  %1449 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1449, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1447, ptr %1448, ptr %1446, i64 24, ptr %1449, i1 false)
  %1450 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1447, align 8
  %1451 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1452 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1453 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr %1453, align 8
  %1454 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1454, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1452, ptr %1453, ptr %1451, i64 32, ptr %1454, i1 false)
  %1455 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1452, align 8
  %1456 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1457 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1458 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr %1458, align 8
  %1459 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1459, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1457, ptr %1458, ptr %1456, i64 48, ptr %1459, i1 false)
  %1460 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1457, align 8
  %1461 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %1462 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1461, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1440, ptr %1462, align 8
  %1463 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1461, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1445, ptr %1463, align 8
  %1464 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1461, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1450, ptr %1464, align 8
  %1465 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1461, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1455, ptr %1465, align 8
  %1466 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1461, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1460, ptr %1466, align 8
  %1467 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1461, 0
  %1468 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1467, i64 5, 1
  %1469 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1468, i64 5, 2
  %1470 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1470, align 8
  %1471 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1469, ptr %1471, align 8
  %1472 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1470, i64 56, ptr %1471)
  store ptr %1472, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  %1473 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  br i1 %1431, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  %1474 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1475 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1474, 1
  %1476 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1475, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 2
  %1477 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1476, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 3
  %1478 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1479 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1478, 1
  %1480 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1479, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 2
  %1481 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1480, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 3
  %1482 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1483 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1482, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1477, ptr %1483, align 8
  %1484 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1482, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1481, ptr %1484, align 8
  %1485 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1482, 0
  %1486 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1485, i64 2, 1
  %1487 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1486, i64 2, 2
  %1488 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1488, align 8
  %1489 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1487, ptr %1489, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1429, ptr %1473, ptr %1488, ptr %1489)
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %1490 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1491 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1491, align 8
  %1492 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, ptr %1492, align 8
  %1493 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1491, ptr %1492, i64 25, i64 56, i64 0, i64 2)
  %1494 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1495 = icmp eq ptr %1494, null
  br i1 %1495, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %1496 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1493)
  store ptr %1496, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1497 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1498 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1498, align 8
  %1499 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1499, align 8
  %1500 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1498, ptr %1499, i64 25, i64 80, i64 0, i64 23)
  %1501 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1501, align 8
  %1502 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, ptr %1502, align 8
  %1503 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1501, ptr %1502, i64 25, i64 56, i64 0, i64 2)
  %1504 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1505 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1505, align 8
  %1506 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1506, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1504, ptr %1505, ptr %1500, i64 0, ptr %1506, i1 true)
  %1507 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1504, align 8
  %1508 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1509 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1510 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1510, align 8
  %1511 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1511, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1509, ptr %1510, ptr %1508, i64 72, ptr %1511, i1 false)
  %1512 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1509, align 8
  %1513 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1503)
  %1514 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1515 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr %1515, align 8
  %1516 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1516, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1514, ptr %1515, ptr %1513, i64 88, ptr %1516, i1 false)
  %1517 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1514, align 8
  %1518 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %1519 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1518, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1507, ptr %1519, align 8
  %1520 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1518, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1512, ptr %1520, align 8
  %1521 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1518, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1517, ptr %1521, align 8
  %1522 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1518, 0
  %1523 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1522, i64 3, 1
  %1524 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1523, i64 3, 2
  %1525 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1525, align 8
  %1526 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1524, ptr %1526, align 8
  %1527 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1525, i64 112, ptr %1526)
  store ptr %1527, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  %1528 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  br i1 %1426, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1529 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1529, 1
  %1531 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1530, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 2
  %1532 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1531, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 3
  %1533 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1534 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1535 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1534, 1
  %1536 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1535, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 2
  %1537 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1536, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 3
  %1538 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1539 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1538, 1
  %1540 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1539, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 2
  %1541 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1540, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 3
  %1542 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1543 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1544 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1543, 1
  %1545 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1544, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 2
  %1546 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1545, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 3
  %1547 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1548 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1549 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1548, 1
  %1550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1549, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 2
  %1551 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1550, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 3
  %1552 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1553 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1554 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1553, 1
  %1555 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1554, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 2
  %1556 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1555, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 3
  %1557 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1558 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1557, 1
  %1559 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1558, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 2
  %1560 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1559, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 3
  %1561 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1562 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1563 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1562, 1
  %1564 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1563, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 2
  %1565 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1564, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 3
  %1566 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1567 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1566, 1
  %1568 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1567, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 2
  %1569 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1568, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 3
  %1570 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1571 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1570, 1
  %1572 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1571, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 2
  %1573 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1572, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 3
  %1574 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1575 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1576 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1575, 1
  %1577 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1576, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 2
  %1578 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1577, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 3
  %1579 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1580 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1579, 1
  %1581 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1580, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 2
  %1582 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1581, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 3
  %1583 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1584 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1583, 1
  %1585 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1584, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 2
  %1586 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1585, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 3
  %1587 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1588 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1589 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1588, 1
  %1590 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1589, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 2
  %1591 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1590, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 3
  %1592 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1593 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1592, 1
  %1594 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1593, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 2
  %1595 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1594, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 3
  %1596 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1597 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1596, 1
  %1598 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1597, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 2
  %1599 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1598, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 3
  %1600 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1601 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1602 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1601, 1
  %1603 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1602, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 2
  %1604 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1603, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 3
  %1605 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1606 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1605, 1
  %1607 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1606, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 2
  %1608 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1607, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 3
  %1609 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1610 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1609, 1
  %1611 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1610, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 2
  %1612 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1611, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 3
  %1613 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1614 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1613, 1
  %1615 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1614, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 2
  %1616 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1615, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 3
  %1617 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1618 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1617, 1
  %1619 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1618, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 2
  %1620 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1619, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 3
  %1621 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1621, align 8
  %1622 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr %1622, align 8
  %1623 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1621, ptr %1622, i64 25, i64 120, i64 0, i64 23)
  %1624 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1625 = icmp eq ptr %1624, null
  br i1 %1625, label %_llgo_117, label %_llgo_118

_llgo_116:                                        ; preds = %_llgo_128, %_llgo_114
  %1626 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1627 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1628 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1629 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1628, 1
  %1630 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1629, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 2
  %1631 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1630, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 3
  %1632 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1633 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1632, 1
  %1634 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1633, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 2
  %1635 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1634, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 3
  %1636 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1040)
  %1637 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1227, ptr %1637, align 8
  %1638 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1232, ptr %1638, align 8
  %1639 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1236, ptr %1639, align 8
  %1640 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1241, ptr %1640, align 8
  %1641 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1246, ptr %1641, align 8
  %1642 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1250, ptr %1642, align 8
  %1643 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1255, ptr %1643, align 8
  %1644 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1259, ptr %1644, align 8
  %1645 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1263, ptr %1645, align 8
  %1646 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1267, ptr %1646, align 8
  %1647 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1271, ptr %1647, align 8
  %1648 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1275, ptr %1648, align 8
  %1649 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1280, ptr %1649, align 8
  %1650 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1284, ptr %1650, align 8
  %1651 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1288, ptr %1651, align 8
  %1652 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1292, ptr %1652, align 8
  %1653 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1296, ptr %1653, align 8
  %1654 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1382, ptr %1654, align 8
  %1655 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1386, ptr %1655, align 8
  %1656 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1390, ptr %1656, align 8
  %1657 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1394, ptr %1657, align 8
  %1658 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1398, ptr %1658, align 8
  %1659 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1417, ptr %1659, align 8
  %1660 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %1421, ptr %1660, align 8
  %1661 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 24
  store %"github.com/goplus/llgo/runtime/abi.Method" %1631, ptr %1661, align 8
  %1662 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1636, i64 25
  store %"github.com/goplus/llgo/runtime/abi.Method" %1635, ptr %1662, align 8
  %1663 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1636, 0
  %1664 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1663, i64 26, 1
  %1665 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1664, i64 26, 2
  %1666 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1666, align 8
  %1667 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1665, ptr %1667, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1051, ptr %1223, ptr %1666, ptr %1667)
  br label %_llgo_100

_llgo_117:                                        ; preds = %_llgo_115
  %1668 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1623)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1668)
  store ptr %1668, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_115
  %1669 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1670 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1671 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1672 = icmp eq ptr %1671, null
  br i1 %1672, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %1673 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1674 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1673, 0
  %1675 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1674, i64 0, 1
  %1676 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1675, i64 0, 2
  %1677 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1678 = getelementptr ptr, ptr %1677, i64 0
  store ptr %1670, ptr %1678, align 8
  %1679 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1677, 0
  %1680 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1679, i64 1, 1
  %1681 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1680, i64 1, 2
  %1682 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1676, ptr %1682, align 8
  %1683 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1681, ptr %1683, align 8
  %1684 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1682, ptr %1683, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1684)
  store ptr %1684, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %1685 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1686 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1685, 1
  %1687 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1686, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 2
  %1688 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1687, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 3
  %1689 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1689, align 8
  %1690 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, ptr %1690, align 8
  %1691 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1689, ptr %1690, i64 25, i64 24, i64 0, i64 2)
  %1692 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1693 = icmp eq ptr %1692, null
  br i1 %1693, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  store ptr %1691, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1694 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1695 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1696 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1696, align 8
  %1697 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1697, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1695, ptr %1696, ptr %1694, i64 0, ptr %1697, i1 false)
  %1698 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1695, align 8
  %1699 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1700 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1701 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 6 }, ptr %1701, align 8
  %1702 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1702, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1700, ptr %1701, ptr %1699, i64 16, ptr %1702, i1 false)
  %1703 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1700, align 8
  %1704 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1705 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1706 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr %1706, align 8
  %1707 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1707, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1705, ptr %1706, ptr %1704, i64 18, ptr %1707, i1 false)
  %1708 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1705, align 8
  %1709 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %1710 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1711 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr %1711, align 8
  %1712 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1712, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1710, ptr %1711, ptr %1709, i64 20, ptr %1712, i1 false)
  %1713 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1710, align 8
  %1714 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1715 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1714, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1698, ptr %1715, align 8
  %1716 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1714, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1703, ptr %1716, align 8
  %1717 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1714, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1708, ptr %1717, align 8
  %1718 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1714, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1713, ptr %1718, align 8
  %1719 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1714, 0
  %1720 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1719, i64 4, 1
  %1721 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1720, i64 4, 2
  %1722 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1722, align 8
  %1723 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1721, ptr %1723, align 8
  %1724 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1722, i64 24, ptr %1723)
  store ptr %1724, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1725 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1693, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1726 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1727 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1728 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1727, 1
  %1729 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1728, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 2
  %1730 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1729, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 3
  %1731 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1732 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1733 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1732, 1
  %1734 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1733, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 2
  %1735 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1734, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 3
  %1736 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1737 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1736, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1730, ptr %1737, align 8
  %1738 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1736, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1735, ptr %1738, align 8
  %1739 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1736, 0
  %1740 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1739, i64 2, 1
  %1741 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1740, i64 2, 2
  %1742 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1742, align 8
  %1743 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1741, ptr %1743, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1691, ptr %1725, ptr %1742, ptr %1743)
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1744 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1745 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1745, align 8
  %1746 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, ptr %1746, align 8
  %1747 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1745, ptr %1746, i64 25, i64 24, i64 0, i64 2)
  %1748 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1749 = icmp eq ptr %1748, null
  br i1 %1749, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1750 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1747)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1750)
  store ptr %1750, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1751 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1752 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1753 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1754 = icmp eq ptr %1753, null
  br i1 %1754, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1755 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1756 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1755, 0
  %1757 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1756, i64 0, 1
  %1758 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1757, i64 0, 2
  %1759 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1760 = getelementptr ptr, ptr %1759, i64 0
  store ptr %1752, ptr %1760, align 8
  %1761 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1759, 0
  %1762 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1761, i64 1, 1
  %1763 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1762, i64 1, 2
  %1764 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1758, ptr %1764, align 8
  %1765 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1763, ptr %1765, align 8
  %1766 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %1764, ptr %1765, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1766)
  store ptr %1766, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1767 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1768 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1767, 1
  %1769 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1768, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 2
  %1770 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1769, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 3
  %1771 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1772 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1532, ptr %1772, align 8
  %1773 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1537, ptr %1773, align 8
  %1774 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1541, ptr %1774, align 8
  %1775 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1546, ptr %1775, align 8
  %1776 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1551, ptr %1776, align 8
  %1777 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1556, ptr %1777, align 8
  %1778 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1560, ptr %1778, align 8
  %1779 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1565, ptr %1779, align 8
  %1780 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1569, ptr %1780, align 8
  %1781 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1573, ptr %1781, align 8
  %1782 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1578, ptr %1782, align 8
  %1783 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1582, ptr %1783, align 8
  %1784 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1586, ptr %1784, align 8
  %1785 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1591, ptr %1785, align 8
  %1786 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1595, ptr %1786, align 8
  %1787 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1599, ptr %1787, align 8
  %1788 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1604, ptr %1788, align 8
  %1789 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1608, ptr %1789, align 8
  %1790 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1612, ptr %1790, align 8
  %1791 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1616, ptr %1791, align 8
  %1792 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1620, ptr %1792, align 8
  %1793 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1688, ptr %1793, align 8
  %1794 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1771, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1770, ptr %1794, align 8
  %1795 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1771, 0
  %1796 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1795, i64 23, 1
  %1797 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1796, i64 23, 2
  %1798 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1798, align 8
  %1799 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1797, ptr %1799, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1424, ptr %1528, ptr %1798, ptr %1799)
  br label %_llgo_116

_llgo_129:                                        ; preds = %_llgo_58
  %1800 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1801 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1800, 1
  %1802 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1801, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 2
  %1803 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1802, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 3
  %1804 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1805 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1804, 1
  %1806 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1805, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 2
  %1807 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1806, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 3
  %1808 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1809 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1808, 1
  %1810 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1809, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 2
  %1811 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1810, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 3
  %1812 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %1813 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1812, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1803, ptr %1813, align 8
  %1814 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1812, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1807, ptr %1814, align 8
  %1815 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1812, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1811, ptr %1815, align 8
  %1816 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1812, 0
  %1817 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1816, i64 3, 1
  %1818 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1817, i64 3, 2
  %1819 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1819, align 8
  %1820 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1818, ptr %1820, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %518, ptr %638, ptr %1819, ptr %1820)
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_58
  %1821 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1822 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1823 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1824 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1823, 1
  %1825 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1824, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 2
  %1826 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1825, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 3
  %1827 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1828 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1827, 1
  %1829 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1828, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 2
  %1830 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1829, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 3
  %1831 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1832 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1833 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1832, 1
  %1834 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1833, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 2
  %1835 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1834, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 3
  %1836 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1837 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1836, 1
  %1838 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1837, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 2
  %1839 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1838, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 3
  %1840 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1841 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1840, 1
  %1842 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1841, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 2
  %1843 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1842, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 3
  %1844 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1845 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1846 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1845, 1
  %1847 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1846, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 2
  %1848 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1847, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 3
  %1849 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1850 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1849, 1
  %1851 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1850, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 2
  %1852 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1851, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 3
  %1853 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1854 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1853, 1
  %1855 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1854, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 2
  %1856 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1855, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 3
  %1857 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1858 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1859 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1858, 1
  %1860 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1859, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 2
  %1861 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1860, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 3
  %1862 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1863 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1862, 1
  %1864 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1863, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 2
  %1865 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1864, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 3
  %1866 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1867 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1868 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1867, 1
  %1869 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1868, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 2
  %1870 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1869, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 3
  %1871 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1872 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1871, 1
  %1873 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1872, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 2
  %1874 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1873, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 3
  %1875 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1876 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1875, 1
  %1877 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1876, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 2
  %1878 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1877, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 3
  %1879 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1880 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1879, 1
  %1881 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1880, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 2
  %1882 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1881, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 3
  %1883 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1884 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1883, 1
  %1885 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1884, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 2
  %1886 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1885, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 3
  %1887 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1888 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1889 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1888, 1
  %1890 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1889, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 2
  %1891 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1890, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 3
  %1892 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1893 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1892, 1
  %1894 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1893, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 2
  %1895 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1894, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 3
  %1896 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 840)
  %1897 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %314, ptr %1897, align 8
  %1898 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %467, ptr %1898, align 8
  %1899 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %495, ptr %1899, align 8
  %1900 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %515, ptr %1900, align 8
  %1901 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1826, ptr %1901, align 8
  %1902 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1830, ptr %1902, align 8
  %1903 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1835, ptr %1903, align 8
  %1904 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1839, ptr %1904, align 8
  %1905 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1843, ptr %1905, align 8
  %1906 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1848, ptr %1906, align 8
  %1907 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1852, ptr %1907, align 8
  %1908 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1856, ptr %1908, align 8
  %1909 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1861, ptr %1909, align 8
  %1910 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1865, ptr %1910, align 8
  %1911 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1870, ptr %1911, align 8
  %1912 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1874, ptr %1912, align 8
  %1913 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1878, ptr %1913, align 8
  %1914 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1882, ptr %1914, align 8
  %1915 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1886, ptr %1915, align 8
  %1916 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1891, ptr %1916, align 8
  %1917 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1896, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1895, ptr %1917, align 8
  %1918 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1896, 0
  %1919 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1918, i64 21, 1
  %1920 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1919, i64 21, 2
  %1921 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1921, align 8
  %1922 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1920, ptr %1922, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %266, ptr %310, ptr %1921, ptr %1922)
  br label %_llgo_38

_llgo_131:                                        ; preds = %_llgo_30
  %1923 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %240)
  store ptr %1923, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_30
  %1924 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1925 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1925, align 8
  %1926 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %1926, align 8
  %1927 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1925, ptr %1926, i64 25, i64 48, i64 0, i64 0)
  %1928 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, ptr %1928, align 8
  %1929 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1929, align 8
  %1930 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1928, ptr %1929, i64 25, i64 80, i64 0, i64 23)
  %1931 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1931, align 8
  %1932 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, ptr %1932, align 8
  %1933 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %1931, ptr %1932, i64 25, i64 48, i64 0, i64 0)
  %1934 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1927)
  %1935 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1936 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 1 }, ptr %1936, align 8
  %1937 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1937, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1935, ptr %1936, ptr %1934, i64 0, ptr %1937, i1 false)
  %1938 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1935, align 8
  %1939 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1930)
  %1940 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1941 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 1 }, ptr %1941, align 8
  %1942 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1942, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1940, ptr %1941, ptr %1939, i64 8, ptr %1942, i1 false)
  %1943 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1940, align 8
  %1944 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1945 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1946 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 1 }, ptr %1946, align 8
  %1947 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1947, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1945, ptr %1946, ptr %1944, i64 16, ptr %1947, i1 false)
  %1948 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1945, align 8
  %1949 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1933)
  %1950 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1951 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 1 }, ptr %1951, align 8
  %1952 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1952, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %1950, ptr %1951, ptr %1949, i64 24, ptr %1952, i1 false)
  %1953 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1950, align 8
  %1954 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1955 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1954, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1938, ptr %1955, align 8
  %1956 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1954, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1943, ptr %1956, align 8
  %1957 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1954, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1948, ptr %1957, align 8
  %1958 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1954, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1953, ptr %1958, align 8
  %1959 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1954, 0
  %1960 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1959, i64 4, 1
  %1961 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1960, i64 4, 2
  %1962 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr %1962, align 8
  %1963 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1961, ptr %1963, align 8
  %1964 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %1962, i64 48, ptr %1963)
  store ptr %1964, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  %1965 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  br i1 %4, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  %1966 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1966, align 8
  %1967 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %1967, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %1965, ptr %1966, ptr %1967)
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_132
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Align"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Kind).String"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.Kind.String"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Size"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*MapType).String"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Size"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*StructType).String"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*FuncType).String"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Method).Exported"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Method).Name"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Size"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
