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
  %0 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/abinamed.T" zeroinitializer, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  %5 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 72)
  store %"github.com/goplus/llgo/runtime/abi.Type" zeroinitializer, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %9, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %9, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %22, i8 0, i64 56, i1 false)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %24)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %25, i32 0, i32 2
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %26, align 8
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, 0
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, 1
  %30 = icmp sge i64 0, %29
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %30)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %28, i64 0
  %32 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %31, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %32, ptr %22, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %34, %38
  br i1 %39, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %40 = call ptr @__llgo_load__llgo_string()
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 13 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %44 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %45)
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = icmp ne ptr %46, %48
  br i1 %49, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %50 = call ptr @__llgo_load__llgo_string()
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 18 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %54 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %54, i8 0, i64 56, i1 false)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %56)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %57, i32 0, i32 2
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %58, align 8
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, 0
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, 1
  %62 = icmp sge i64 1, %61
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %62)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %60, i64 1
  %64 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %63, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %64, ptr %54, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %9, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = icmp ne ptr %66, %70
  br i1 %71, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %72 = call ptr @__llgo_load__llgo_string()
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 13 }, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %72, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %73, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %77)
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %9, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = icmp ne ptr %78, %80
  br i1 %81, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %82 = call ptr @__llgo_load__llgo_string()
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 18 }, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %83, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %85)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %86 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %86, i8 0, i64 56, i1 false)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %88)
  %90 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %89, i32 0, i32 2
  %91 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %90, align 8
  %92 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, 0
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, 1
  %94 = icmp sge i64 2, %93
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %94)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %92, i64 2
  %96 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %95, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %96, ptr %86, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %86, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %9, i32 0, i32 0
  %100 = load ptr, ptr %99, align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %100)
  %102 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %101, i32 0, i32 2
  %103 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %102, align 8
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, 0
  %105 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, 1
  %106 = icmp sge i64 0, %105
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %106)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %104, i64 0
  %108 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8
  %110 = icmp ne ptr %98, %109
  br i1 %110, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %111 = call ptr @__llgo_load__llgo_string()
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 13 }, ptr %112, align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %111, 0
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %113, ptr %112, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %114)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %115 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %115, i8 0, i64 56, i1 false)
  %116 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %117 = load ptr, ptr %116, align 8
  %118 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %117)
  %119 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %118, i32 0, i32 2
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %119, align 8
  %121 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, 0
  %122 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, 1
  %123 = icmp sge i64 3, %122
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %123)
  %124 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %121, i64 3
  %125 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %124, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %125, ptr %115, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %115, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %127)
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %4, i32 0, i32 0
  %130 = load ptr, ptr %129, align 8
  %131 = icmp ne ptr %128, %130
  br i1 %131, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %132 = call ptr @__llgo_load__llgo_string()
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 13 }, ptr %133, align 8
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %132, 0
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, ptr %133, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %135)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/runtime/abi.init"()

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  %5 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %6 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %7 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  %8 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %8, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  ret ptr %9
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.init$after"() {
_llgo_0:
  %0 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  %1 = call ptr @__llgo_load__llgo_uintptr()
  %2 = call ptr @__llgo_load__llgo_uint32()
  %3 = call ptr @__llgo_load__llgo_uint8()
  %4 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.TFlag"()
  %5 = call ptr @__llgo_load__llgo_Pointer()
  %6 = call ptr @__llgo_load__llgo_bool()
  %7 = call ptr @"__llgo_load__llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E"()
  %8 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU"()
  %9 = call ptr @"__llgo_load_*_llgo_uint8"()
  %10 = call ptr @__llgo_load__llgo_string()
  %11 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %12 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0"()
  %13 = call ptr @__llgo_load__llgo_int()
  %14 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %15 = call ptr @"__llgo_load__llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io"()
  %16 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %17 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %18 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.ChanDir"()
  %19 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %20 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %21 = call ptr @"__llgo_load_[]*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %22 = call ptr @"__llgo_load__llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA"()
  %23 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %24 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %25 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %26 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %27 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %28 = call ptr @"__llgo_load__llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw"()
  %29 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %30 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Imethod"()
  %31 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod"()
  %32 = call ptr @"__llgo_load__llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io"()
  %33 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %34 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %35 = call ptr @__llgo_load__llgo_uint()
  %36 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Kind"()
  %37 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %38 = call ptr @"__llgo_load__llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20"()
  %39 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc"()
  %40 = call ptr @__llgo_load__llgo_uint16()
  %41 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8"()
  %42 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %43 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %44 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %45 = call ptr @"__llgo_load__llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU"()
  %46 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.StructField"()
  %47 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.StructField"()
  %48 = call ptr @"__llgo_load__llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0"()
  %49 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %50 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %51 = call ptr @"__llgo_load__llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI"()
  %52 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.UncommonType"()
  %53 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType"()
  %54 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %55 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %56 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %57 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %58 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %59 = call ptr @"__llgo_load__llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE"()
  %60 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %61 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %62 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %63 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  %64 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE"()
  %65 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"()
  ret void
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Type"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %3 = call ptr @__llgo_load__llgo_uintptr()
  %4 = call ptr @__llgo_load__llgo_uint32()
  %5 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.TFlag"()
  %6 = call ptr @__llgo_load__llgo_Pointer()
  %7 = call ptr @__llgo_load__llgo_bool()
  %8 = call ptr @"__llgo_load__llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E"()
  %9 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU"()
  %10 = call ptr @__llgo_load__llgo_uint8()
  %11 = call ptr @"__llgo_load_*_llgo_uint8"()
  %12 = call ptr @__llgo_load__llgo_string()
  %13 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %14 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %15 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0"()
  %16 = call ptr @__llgo_load__llgo_int()
  %17 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %17, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 2
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %19, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 3
  %21 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %22 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %23 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %24 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %23, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %24, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 2
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 3
  %27 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 3
  %31 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %32 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %32, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 2
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 3
  %36 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %37 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %37, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 2
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 3
  %41 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %42 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %42, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 2
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 3
  %46 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %46, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %47, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 2
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 3
  %50 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %51 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %51, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 2
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 3
  %55 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 2
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 3
  %59 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 2
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 3
  %63 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %64 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %64, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 2
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 3
  %68 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %68, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %69, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 2
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %70, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 3
  %72 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 2
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 3
  %76 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %77 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %77, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 2
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 3
  %81 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %81, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 2
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 3
  %85 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %85, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 2
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 3
  %89 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %90 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %91 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %90, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %91, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 2
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %92, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 3
  %94 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %94, 1
  %96 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 2
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %96, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 3
  %98 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %98, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 2
  %101 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %100, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 3
  %102 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %103 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %102, 1
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %103, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 2
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %104, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 3
  %106 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %106, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 2
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %108, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 3
  %110 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %111 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %111, 1
  %113 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %112, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 2
  %114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %113, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 3
  %115 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %115, 1
  %117 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %116, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 2
  %118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %117, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 3
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %20, ptr %120, align 8
  %121 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr %121, align 8
  %122 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %122, align 8
  %123 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr %124, align 8
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr %125, align 8
  %126 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr %126, align 8
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr %128, align 8
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %71, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr %132, align 8
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr %134, align 8
  %135 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr %136, align 8
  %137 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr %137, align 8
  %138 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %101, ptr %138, align 8
  %139 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %105, ptr %139, align 8
  %140 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr %140, align 8
  %141 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %114, ptr %141, align 8
  %142 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %119, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %118, ptr %142, align 8
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %119, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 23, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %15, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %145)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %146 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  ret ptr %146
}

define linkonce ptr @__llgo_load__llgo_uintptr() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uintptr, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %2, ptr @_llgo_uintptr, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uintptr, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @__llgo_load__llgo_uint32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %2, ptr @_llgo_uint32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint32, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.TFlag"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  %3 = call ptr @__llgo_load__llgo_uint8()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  ret ptr %4
}

define linkonce ptr @__llgo_load__llgo_uint8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %2, ptr @_llgo_uint8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint8, align 8
  ret ptr %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @__llgo_load__llgo_Pointer() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_bool() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %2, ptr @_llgo_bool, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_bool, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr ptr, ptr %4, i64 1
  store ptr %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %16)
  store ptr %16, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  ret ptr %17
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr ptr, ptr %4, i64 1
  store ptr %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  %17 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %16, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %19 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %18, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %21 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %17, ptr %21, align 8
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %19, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 2, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 2, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25)
  store ptr %26, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %27 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  ret ptr %27
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

define linkonce ptr @"__llgo_load_*_llgo_uint8"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_uint8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_uint8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_uint8", align 8
  ret ptr %4
}

define linkonce ptr @__llgo_load__llgo_string() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %4, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %6, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %8, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %2, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr %11, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 11 }, ptr %13, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %16 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %15, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %20 = getelementptr ptr, ptr %19, i64 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr ptr, ptr %19, i64 1
  store ptr %18, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 2, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 2, 2
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %27 = getelementptr ptr, ptr %26, i64 0
  store ptr %25, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i1 false)
  %32 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %31, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %34 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %33, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %36 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %35, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %32, ptr %36, align 8
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %35, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %34, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 2, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 2
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  %42 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %41, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %43)
  %45 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr %44, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %47 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr %46, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %3)
  %49 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 10 }, ptr %48, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 616)
  %51 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %51, align 8
  %52 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %53, align 8
  %54 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %55, align 8
  %56 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %56, align 8
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %16, ptr %57, align 8
  %58 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %42, ptr %58, align 8
  %59 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %45, ptr %59, align 8
  %60 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 9
  store %"github.com/goplus/llgo/runtime/abi.StructField" %47, ptr %60, align 8
  %61 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %50, i64 10
  store %"github.com/goplus/llgo/runtime/abi.StructField" %49, ptr %61, align 8
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %50, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 11, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 11, 2
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64)
  store ptr %65, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %66 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  ret ptr %66
}

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  ret ptr %13
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Align"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.ArrayType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %5 = call ptr @"__llgo_load__llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io"()
  %6 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 3
  %10 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %11 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %11, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 3
  %15 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.ChanDir"()
  %16 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %16, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 2
  %19 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 3
  %20 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %21 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %22 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %21, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 2
  %24 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %23, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 3
  %25 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %26 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %27 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 3
  %31 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %31, 1
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 2
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 3
  %35 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %36 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 2
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 3
  %40 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %40, 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 2
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 3
  %44 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %44, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 2
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 3
  %48 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %49 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %49, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 2
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 3
  %53 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %53, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 2
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 3
  %57 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %57, 1
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 2
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 3
  %61 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %62 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %62, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 2
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %64, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 3
  %66 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %66, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 2
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %68, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 3
  %70 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %71 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %71, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %72, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 2
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 3
  %75 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %75, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 2
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 3
  %79 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %79, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 2
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 3
  %83 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %83, 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 2
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 3
  %87 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %87, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 2
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %89, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 3
  %91 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %92 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %92, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 2
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 3
  %96 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %96, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 3
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 840)
  %101 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %101, align 8
  %102 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr %102, align 8
  %103 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %19, ptr %103, align 8
  %104 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %24, ptr %104, align 8
  %105 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %105, align 8
  %106 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr %106, align 8
  %107 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr %107, align 8
  %108 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr %108, align 8
  %109 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %47, ptr %109, align 8
  %110 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr %110, align 8
  %111 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr %111, align 8
  %112 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr %112, align 8
  %113 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr %113, align 8
  %114 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %69, ptr %114, align 8
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr %119, align 8
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr %120, align 8
  %121 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %100, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 21, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %5, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %125 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  ret ptr %125
}

define linkonce ptr @"__llgo_load__llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %3)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %6, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %4)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %8, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %11 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr %10, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %13 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %13, align 8
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %11, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 4, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 4, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  store ptr %20, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  ret ptr %21
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.ChanDir"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %3 = call ptr @__llgo_load__llgo_int()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %2, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  ret ptr %13
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Method"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %5 = call ptr @__llgo_load__llgo_Pointer()
  %6 = call ptr @"__llgo_load__llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE"()
  %7 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %7, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 3
  %11 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %11, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 3
  %15 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %15, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 3
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %20 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %19, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %20, align 8
  %21 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %19, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr %21, align 8
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %19, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 3, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %6, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %26 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  ret ptr %26
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.FuncType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %4 = call ptr @"__llgo_load_[]*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %5 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %6 = call ptr @"__llgo_load_[]*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %7 = call ptr @"__llgo_load__llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA"()
  %8 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %8, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 2
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 3
  %12 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %13 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %13, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 2
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 3
  %17 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %17, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 2
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %19, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 3
  %21 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %22 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %23 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %22, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %23, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 2
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %24, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 3
  %26 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %27 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 3
  %31 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %32 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %32, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 2
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 3
  %36 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 2
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 3
  %40 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %41 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %41, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 2
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 3
  %45 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %45, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 2
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %47, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 3
  %49 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %49, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 2
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 3
  %53 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %54 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %55 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 2
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 3
  %59 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 2
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 3
  %63 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %63, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %64, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 2
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 3
  %67 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %68 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %68, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %69, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 2
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %70, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 3
  %72 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 2
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 3
  %76 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %76, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 2
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 3
  %80 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %81 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %81, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 2
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 3
  %85 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %85, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 2
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 3
  %89 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %89, 1
  %91 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 2
  %92 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %91, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 3
  %93 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %93, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 2
  %96 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 3
  %97 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %97, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 2
  %100 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 3
  %101 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %102 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %103 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %102, 1
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %103, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 2
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %104, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 3
  %106 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %106, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 2
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %108, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 3
  %110 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %110, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %111, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 2
  %113 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %112, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 3
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 960)
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %20, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %119, align 8
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr %120, align 8
  %121 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr %121, align 8
  %122 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr %122, align 8
  %123 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr %124, align 8
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr %125, align 8
  %126 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr %126, align 8
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %71, ptr %128, align 8
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr %132, align 8
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %92, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %96, ptr %134, align 8
  %135 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %100, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %105, ptr %136, align 8
  %137 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr %137, align 8
  %138 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %114, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %113, ptr %138, align 8
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %114, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, i64 24, 1
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, i64 24, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %7, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %142 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  ret ptr %142
}

define linkonce ptr @"__llgo_load_[]*_llgo_github.com/goplus/llgo/runtime/abi.Type"() {
_llgo_0:
  %0 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %3)
  store ptr %4, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  ret ptr %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

define linkonce ptr @"__llgo_load__llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %3)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %6)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr %7, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %4)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %9)
  %11 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr %10, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %13 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %13, align 8
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %11, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 3, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 3, 2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  store ptr %19, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %20 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  ret ptr %20
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem"(ptr)

define linkonce ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  ret ptr %14
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  ret ptr %13
}

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Imethod"()
  %4 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod"()
  %5 = call ptr @"__llgo_load__llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io"()
  %6 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 3
  %10 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %11 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %11, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 3
  %15 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %15, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 3
  %19 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %20 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %21 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %20, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %21, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 2
  %23 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 3
  %24 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %25 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %25, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 2
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %27, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 3
  %29 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %30 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %31 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %30, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %31, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 2
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 3
  %34 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %34, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 2
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 3
  %38 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %39 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %39, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 2
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 3
  %43 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 2
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 3
  %47 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 2
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 3
  %51 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %52 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %52, 1
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 2
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 3
  %56 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %56, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 2
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 3
  %60 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %60, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 2
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 3
  %64 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %65 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %65, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 2
  %68 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 3
  %69 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Kind"()
  %70 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %70, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %71, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 2
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %72, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 3
  %74 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %74, 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 2
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 3
  %78 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %79 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %80 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %80, 1
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 2
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 3
  %84 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %84, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 2
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 3
  %88 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %89 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %88, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %89, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 2
  %91 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 3
  %92 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %92, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 2
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 3
  %96 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %96, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 3
  %100 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %101 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %102 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %101, 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %102, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 2
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %103, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 3
  %105 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %105, 1
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %106, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 2
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 3
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %110 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %110, align 8
  %111 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr %111, align 8
  %112 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr %112, align 8
  %113 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %23, ptr %113, align 8
  %114 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr %114, align 8
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr %119, align 8
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr %120, align 8
  %121 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr %121, align 8
  %122 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr %122, align 8
  %123 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %68, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr %124, align 8
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr %125, align 8
  %126 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr %126, align 8
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %91, ptr %128, align 8
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %104, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %108, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %109, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 23, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %5, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %136 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  ret ptr %136
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Imethod"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %4 = call ptr @"__llgo_load__llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw"()
  %5 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 3
  %9 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %9, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 2
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 3
  %13 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %13, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 2
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 3
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %17, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %17, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr %19, align 8
  %20 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %17, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 3, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %24 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  ret ptr %24
}

define linkonce ptr @"__llgo_load__llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr %5, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %8, align 8
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 2, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  store ptr %13, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  ret ptr %14
}

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  ret ptr %13
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath"(ptr)

define linkonce ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %5, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %3)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr %7, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %11, align 8
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 3, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15)
  store ptr %16, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  ret ptr %17
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.Kind"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %3 = call ptr @__llgo_load__llgo_uint()
  %4 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 3
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/runtime/abi.Kind.String", 3
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  ret ptr %21
}

define linkonce ptr @__llgo_load__llgo_uint() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %2, ptr @_llgo_uint, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint, align 8
  ret ptr %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Kind).String"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.Kind.String"(i64)

define linkonce ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %2, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  ret ptr %13
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.MapType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %5 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %6 = call ptr @"__llgo_load__llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20"()
  %7 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc"()
  %8 = call ptr @__llgo_load__llgo_uint16()
  %9 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8"()
  %10 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %10, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 2
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 3
  %14 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %15 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %15, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 3
  %19 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %19, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %20, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 2
  %22 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %21, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 3
  %23 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %24 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 2
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 3
  %28 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %29 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %29, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 2
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %31, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 3
  %33 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %33, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 2
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 3
  %37 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %38 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %38, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 2
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 3
  %42 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %42, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 2
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 3
  %46 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %46, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %47, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 2
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 3
  %50 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %50, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 2
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 3
  %54 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %54, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 2
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 3
  %58 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %58, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 2
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 3
  %62 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %63 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %63, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %64, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 2
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 3
  %67 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %68 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %67, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %68, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 2
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %69, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 3
  %71 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %71, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %72, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 2
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 3
  %75 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %75, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 2
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 3
  %79 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %79, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 2
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 3
  %83 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %84 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %84, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 2
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 3
  %88 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %89 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %88, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %89, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 2
  %91 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 3
  %92 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %92, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 2
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 3
  %96 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %96, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 3
  %100 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %101 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %100, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %101, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 2
  %103 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %102, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 3
  %104 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %104, 1
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %105, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 2
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %106, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 3
  %108 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %108, 1
  %110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 2
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %110, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 3
  %112 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %113 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %114 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %114, 1
  %116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %115, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 2
  %117 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %116, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 3
  %118 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %119 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %118, 1
  %120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %119, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 2
  %121 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %120, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 3
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1040)
  %123 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr %124, align 8
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr %125, align 8
  %126 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %27, ptr %126, align 8
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr %128, align 8
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr %132, align 8
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr %134, align 8
  %135 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %70, ptr %136, align 8
  %137 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr %137, align 8
  %138 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr %138, align 8
  %139 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr %139, align 8
  %140 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr %140, align 8
  %141 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %91, ptr %141, align 8
  %142 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr %142, align 8
  %143 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr %143, align 8
  %144 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %103, ptr %144, align 8
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr %145, align 8
  %146 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %111, ptr %146, align 8
  %147 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 24
  store %"github.com/goplus/llgo/runtime/abi.Method" %117, ptr %147, align 8
  %148 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %122, i64 25
  store %"github.com/goplus/llgo/runtime/abi.Method" %121, ptr %148, align 8
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %122, 0
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, i64 26, 1
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %150, i64 26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %9, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %152 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  ret ptr %152
}

define linkonce ptr @"__llgo_load__llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr ptr, ptr %4, i64 1
  store ptr %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %16)
  store ptr %16, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  ret ptr %17
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr ptr, ptr %4, i64 1
  store ptr %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  %17 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %16, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %19 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %18, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %21 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %17, ptr %21, align 8
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %19, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 2, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 2, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25)
  store ptr %26, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %27 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  ret ptr %27
}

define linkonce ptr @__llgo_load__llgo_uint16() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint16, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %2, ptr @_llgo_uint16, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint16, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %3)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr %7, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %4)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %9, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %5)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr %11, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %16 = getelementptr ptr, ptr %15, i64 0
  store ptr %13, ptr %16, align 8
  %17 = getelementptr ptr, ptr %15, i64 1
  store ptr %14, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 2
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %23 = getelementptr ptr, ptr %22, i64 0
  store ptr %21, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 2
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i1 false)
  %28 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %27, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %30 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %29, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %32 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %31, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %28, ptr %32, align 8
  %33 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %31, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %30, ptr %33, align 8
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 2, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 2, 2
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36)
  %38 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr %37, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %40 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr %39, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %42 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr %41, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %44 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 10 }, ptr %43, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %46 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr %45, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 504)
  %48 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %48, align 8
  %49 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %49, align 8
  %50 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %50, align 8
  %51 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %51, align 8
  %52 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %38, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %40, ptr %53, align 8
  %54 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %42, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %44, ptr %55, align 8
  %56 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %47, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %46, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 9, 1
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 9, 2
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59)
  store ptr %60, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %61 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  ret ptr %61
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods"(ptr)

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

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  ret ptr %13
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*MapType).String"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.StructType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.StructField"()
  %4 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.StructField"()
  %5 = call ptr @"__llgo_load__llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0"()
  %6 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 3
  %10 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"()
  %11 = call ptr @"__llgo_load__llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk"()
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %11, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 3
  %15 = call ptr @"__llgo_load__llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc"()
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %15, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 3
  %19 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %20 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %21 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %20, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %21, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 2
  %23 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 3
  %24 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %25 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %25, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 2
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %27, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 3
  %29 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %30 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %31 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %30, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %31, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 2
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 3
  %34 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %34, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 2
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 3
  %38 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"()
  %39 = call ptr @"__llgo_load__llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88"()
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %39, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 2
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 3
  %43 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 2
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 3
  %47 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 2
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 3
  %51 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"()
  %52 = call ptr @"__llgo_load__llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM"()
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %52, 1
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 2
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 3
  %56 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %56, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 2
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 3
  %60 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %60, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 2
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 3
  %64 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %65 = call ptr @"__llgo_load__llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"()
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %65, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 2
  %68 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 3
  %69 = call ptr @"__llgo_load__llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc"()
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %69, 1
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %70, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 2
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %71, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 3
  %73 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %73, 1
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 2
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 3
  %77 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.MapType"()
  %78 = call ptr @"__llgo_load__llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY"()
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %78, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 2
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 3
  %82 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %82, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 2
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 3
  %86 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %86, 1
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 2
  %89 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 3
  %90 = call ptr @"__llgo_load__llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"()
  %91 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %90, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %91, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 2
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %92, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 3
  %94 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %94, 1
  %96 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 2
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %96, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 3
  %98 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"()
  %99 = call ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"()
  %100 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %99, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %100, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 2
  %102 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %101, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 3
  %103 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.UncommonType"()
  %104 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType"()
  %105 = call ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"()
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %105, 1
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %106, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 2
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 3
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %110 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %110, align 8
  %111 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr %111, align 8
  %112 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr %112, align 8
  %113 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %23, ptr %113, align 8
  %114 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr %114, align 8
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr %119, align 8
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr %120, align 8
  %121 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr %121, align 8
  %122 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr %122, align 8
  %123 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %68, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %72, ptr %124, align 8
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr %125, align 8
  %126 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr %126, align 8
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %89, ptr %128, align 8
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %102, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %109, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %108, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %109, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 23, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %5, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %136 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  ret ptr %136
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.StructField"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.Type"()
  %4 = call ptr @"__llgo_load__llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU"()
  %5 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 3
  %9 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %9, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 2
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 3
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %13, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 2, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %19 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  ret ptr %19
}

define linkonce ptr @"__llgo_load__llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 3 }, ptr %5, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr %7, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr %9, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr %11, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 5, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 5, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  store ptr %22, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %23 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  ret ptr %23
}

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported"(ptr)

define linkonce ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.StructField"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %5, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %3)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr %7, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %11, align 8
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 3, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15)
  store ptr %16, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  ret ptr %17
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods"(ptr)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*StructType).String"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.StructType"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/runtime/abi.UncommonType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %3 = call ptr @"__llgo_load__llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI"()
  %4 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %5 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 3
  %9 = call ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/runtime/abi.Method"()
  %10 = call ptr @"__llgo_load__llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM"()
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %10, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 2
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 3
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %14, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %14, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 2, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %20 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  ret ptr %20
}

define linkonce ptr @"__llgo_load__llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 6 }, ptr %4, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr %6, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr %8, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %10, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %11, align 8
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %10, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %12, align 8
  %13 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %10, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %13, align 8
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %10, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 4, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 4, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17)
  store ptr %18, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %19 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  ret ptr %19
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String"(ptr)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*FuncType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic"(ptr)

define linkonce ptr @"__llgo_load__llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr %5, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr %7, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr %9, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %12, align 8
  %13 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %11, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %13, align 8
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %11, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %11, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 4, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 4, 2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  store ptr %19, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %20 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  ret ptr %20
}

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Method).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Method).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods"(ptr)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods"(ptr)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

define linkonce ptr @"__llgo_load_[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 1 }, ptr %5, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %3)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 1 }, ptr %7, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 1 }, ptr %9, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %4)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 1 }, ptr %11, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 4, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 4, 2
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  store ptr %21, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %22 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  ret ptr %22
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
