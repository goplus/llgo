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
  %4 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
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
  %40 = load ptr, ptr @_llgo_string, align 8
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
  %50 = load ptr, ptr @_llgo_string, align 8
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
  %72 = load ptr, ptr @_llgo_string, align 8
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
  %82 = load ptr, ptr @_llgo_string, align 8
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
  %111 = load ptr, ptr @_llgo_string, align 8
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
  %132 = load ptr, ptr @_llgo_string, align 8
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

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %5 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %7)
  store ptr %7, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %10 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %9, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %12 = load ptr, ptr @_llgo_uintptr, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %14, ptr @_llgo_uintptr, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %15 = load ptr, ptr @_llgo_uintptr, align 8
  %16 = load ptr, ptr @_llgo_uint32, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %18, ptr @_llgo_uint32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %19 = load ptr, ptr @_llgo_uint32, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %20, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %23 = load ptr, ptr @_llgo_uint8, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %25, ptr @_llgo_uint8, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %26 = load ptr, ptr @_llgo_uint8, align 8
  br i1 %22, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %20, ptr %26, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %27 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", align 8
  %28 = load ptr, ptr @_llgo_Pointer, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @_llgo_Pointer, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %31 = load ptr, ptr @_llgo_Pointer, align 8
  %32 = load ptr, ptr @_llgo_bool, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %34, ptr @_llgo_bool, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %35 = load ptr, ptr @_llgo_bool, align 8
  %36 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %41 = getelementptr ptr, ptr %40, i64 0
  store ptr %38, ptr %41, align 8
  %42 = getelementptr ptr, ptr %40, i64 1
  store ptr %39, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %40, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 2, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 2, 2
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %48 = getelementptr ptr, ptr %47, i64 0
  store ptr %46, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 1, 2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %52)
  store ptr %52, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %53 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %57 = getelementptr ptr, ptr %56, i64 0
  store ptr %54, ptr %57, align 8
  %58 = getelementptr ptr, ptr %56, i64 1
  store ptr %55, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %56, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 2
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %64 = getelementptr ptr, ptr %63, i64 0
  store ptr %62, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 2
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i1 false)
  %69 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %68, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %71 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %70, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %73 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %69, ptr %73, align 8
  %74 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %71, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %72, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 2, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 2, 2
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77)
  store ptr %78, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %79 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %80 = load ptr, ptr @_llgo_uint8, align 8
  %81 = load ptr, ptr @"*_llgo_uint8", align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %83)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %84)
  store ptr %84, ptr @"*_llgo_uint8", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %85 = load ptr, ptr @"*_llgo_uint8", align 8
  %86 = load ptr, ptr @_llgo_string, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %88, ptr @_llgo_string, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %89 = load ptr, ptr @_llgo_string, align 8
  %90 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %92 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %91)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %94)
  store ptr %94, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %95 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %99 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %98, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %101 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %100, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %103 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %102, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %104 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %96, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %106 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr %105, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %108 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 11 }, ptr %107, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %110 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %109, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %114 = getelementptr ptr, ptr %113, i64 0
  store ptr %111, ptr %114, align 8
  %115 = getelementptr ptr, ptr %113, i64 1
  store ptr %112, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %113, 0
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, i64 2, 1
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 2, 2
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %121 = getelementptr ptr, ptr %120, i64 0
  store ptr %119, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %120, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 1, 2
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, i1 false)
  %126 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %125, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %128 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %127, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %129, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %126, ptr %130, align 8
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %129, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %128, ptr %131, align 8
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %129, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %132, i64 2, 1
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 2, 2
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134)
  %136 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %135, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %137)
  %139 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr %138, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %141 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr %140, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %97)
  %143 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 10 }, ptr %142, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 616)
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %99, ptr %145, align 8
  %146 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %101, ptr %146, align 8
  %147 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %103, ptr %147, align 8
  %148 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %104, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %106, ptr %149, align 8
  %150 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %108, ptr %150, align 8
  %151 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %110, ptr %151, align 8
  %152 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %136, ptr %152, align 8
  %153 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %139, ptr %153, align 8
  %154 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 9
  store %"github.com/goplus/llgo/runtime/abi.StructField" %141, ptr %154, align 8
  %155 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 10
  store %"github.com/goplus/llgo/runtime/abi.StructField" %143, ptr %155, align 8
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %144, 0
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, i64 11, 1
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %157, i64 11, 2
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158)
  store ptr %159, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  %160 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$iAWWtd1HF1364SMNytTeRmY9CBfeiKAC3aNazIAZMd0", align 8
  br i1 %11, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %161 = load ptr, ptr @_llgo_int, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %_llgo_31, label %_llgo_32

_llgo_30:                                         ; preds = %_llgo_38, %_llgo_28
  %163 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %164 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %165 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %166 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %_llgo_131, label %_llgo_132

_llgo_31:                                         ; preds = %_llgo_29
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %168, ptr @_llgo_int, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_29
  %169 = load ptr, ptr @_llgo_int, align 8
  %170 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %172 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %172, 0
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, i64 0, 1
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %174, i64 0, 2
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %178 = getelementptr ptr, ptr %177, i64 0
  store ptr %176, ptr %178, align 8
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %177, 0
  %180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, i64 1, 1
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %180, i64 1, 2
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %181, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %182)
  store ptr %182, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %183 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %184 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %183, 1
  %185 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %184, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 2
  %186 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %185, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 3
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %188 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  store ptr %187, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %190 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %191 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %195 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %192, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %193)
  %197 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %196, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %194)
  %199 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %198, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %201 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr %200, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %203 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %202, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %195, ptr %203, align 8
  %204 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %202, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %197, ptr %204, align 8
  %205 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %202, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %199, ptr %205, align 8
  %206 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %202, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %201, ptr %206, align 8
  %207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %202, 0
  %208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %207, i64 4, 1
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %208, i64 4, 2
  %210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209)
  store ptr %210, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  %211 = load ptr, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  br i1 %189, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %212 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %213 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %212, 1
  %214 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %213, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 2
  %215 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %214, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 3
  %216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %217 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %_llgo_39, label %_llgo_40

_llgo_38:                                         ; preds = %_llgo_130, %_llgo_36
  %219 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %220 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %221 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %222 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %221, 1
  %223 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %222, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 2
  %224 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %223, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 3
  %225 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %225, 1
  %227 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %226, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 2
  %228 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %227, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 3
  %229 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %230 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %230, 1
  %232 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %231, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 2
  %233 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %232, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 3
  %234 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %235 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %235, 1
  %237 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %236, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 2
  %238 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %237, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 3
  %239 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %240 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %240, 1
  %242 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %241, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 2
  %243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %242, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 3
  %244 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %244, 1
  %246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %245, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 2
  %247 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %246, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 3
  %248 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %249 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %249, 1
  %251 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %250, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 2
  %252 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %251, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 3
  %253 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %253, 1
  %255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %254, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 2
  %256 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %255, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 3
  %257 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %257, 1
  %259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %258, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 2
  %260 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %259, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 3
  %261 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %262 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %262, 1
  %264 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %263, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 2
  %265 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %264, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 3
  %266 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %266, 1
  %268 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %267, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 2
  %269 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %268, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 3
  %270 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %270, 1
  %272 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %271, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 2
  %273 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %272, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 3
  %274 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %275 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %276 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %275, 1
  %277 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %276, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 2
  %278 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %277, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 3
  %279 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %279, 1
  %281 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %280, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 2
  %282 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %281, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 3
  %283 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %283, 1
  %285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %284, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 2
  %286 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %285, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 3
  %287 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %288 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %289 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %288, 1
  %290 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %289, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 2
  %291 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %290, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 3
  %292 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %293 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %292, 1
  %294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %293, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 2
  %295 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %294, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 3
  %296 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %297 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %296, 1
  %298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %297, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 2
  %299 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %298, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 3
  %300 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %300, 1
  %302 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %301, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 2
  %303 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %302, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 3
  %304 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %304, 1
  %306 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %305, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 2
  %307 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %306, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 3
  %308 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %309 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %310 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %309, 1
  %311 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %310, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 2
  %312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %311, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 3
  %313 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %313, 1
  %315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %314, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 2
  %316 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %315, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 3
  %317 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %318 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %186, ptr %318, align 8
  %319 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %224, ptr %319, align 8
  %320 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %228, ptr %320, align 8
  %321 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %233, ptr %321, align 8
  %322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %238, ptr %322, align 8
  %323 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %243, ptr %323, align 8
  %324 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %247, ptr %324, align 8
  %325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %252, ptr %325, align 8
  %326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %256, ptr %326, align 8
  %327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %260, ptr %327, align 8
  %328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %265, ptr %328, align 8
  %329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %269, ptr %329, align 8
  %330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %273, ptr %330, align 8
  %331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %278, ptr %331, align 8
  %332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %282, ptr %332, align 8
  %333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %286, ptr %333, align 8
  %334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %291, ptr %334, align 8
  %335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %295, ptr %335, align 8
  %336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %299, ptr %336, align 8
  %337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %303, ptr %337, align 8
  %338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %307, ptr %338, align 8
  %339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %312, ptr %339, align 8
  %340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %317, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %316, ptr %340, align 8
  %341 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %317, 0
  %342 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, i64 23, 1
  %343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %342, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %9, ptr %160, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %343)
  br label %_llgo_30

_llgo_39:                                         ; preds = %_llgo_37
  %344 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %216)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %344)
  store ptr %344, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_37
  %345 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %346 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %347 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %349 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %350 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %349, 0
  %351 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %350, i64 0, 1
  %352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %351, i64 0, 2
  %353 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %346)
  %354 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %355 = getelementptr ptr, ptr %354, i64 0
  store ptr %353, ptr %355, align 8
  %356 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %354, 0
  %357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %356, i64 1, 1
  %358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %357, i64 1, 2
  %359 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %352, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %358, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %359)
  store ptr %359, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %360 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %361 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %360, 1
  %362 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %361, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 2
  %363 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %362, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 3
  %364 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %365 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  store ptr %364, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %367 = load ptr, ptr @_llgo_int, align 8
  br i1 %366, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %364, ptr %367, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %368 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %369 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %370 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %372 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %373 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %372, 0
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %373, i64 0, 1
  %375 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, i64 0, 2
  %376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %377 = getelementptr ptr, ptr %376, i64 0
  store ptr %369, ptr %377, align 8
  %378 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %376, 0
  %379 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %378, i64 1, 1
  %380 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %379, i64 1, 2
  %381 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %375, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %380, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %381)
  store ptr %381, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %382 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %383 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %382, 1
  %384 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %383, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 2
  %385 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %384, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 3
  %386 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %387 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %388 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %389 = icmp eq ptr %388, null
  br i1 %389, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %390 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %391 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %390, 0
  %392 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %391, i64 0, 1
  %393 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %392, i64 0, 2
  %394 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %387)
  %395 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %396 = getelementptr ptr, ptr %395, i64 0
  store ptr %394, ptr %396, align 8
  %397 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %395, 0
  %398 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %397, i64 1, 1
  %399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %398, i64 1, 2
  %400 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %393, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %399, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %400)
  store ptr %400, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %401 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %402 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %401, 1
  %403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %402, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 2
  %404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %403, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 3
  %405 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %406 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %407 = icmp eq ptr %406, null
  br i1 %407, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %405, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %408 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %409 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %410 = icmp eq ptr %409, null
  br i1 %410, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %408, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %411 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %412 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %413 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %414 = icmp eq ptr %413, null
  br i1 %414, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %415 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %412)
  %416 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %415)
  store ptr %416, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %417 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %418 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %419 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %420 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %421 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %422 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %423 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %420, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %424 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %421)
  %425 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %424)
  %426 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr %425, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %427 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %422)
  %428 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %427)
  %429 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr %428, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %430 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %431 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %430, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %423, ptr %431, align 8
  %432 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %430, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %426, ptr %432, align 8
  %433 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %430, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %429, ptr %433, align 8
  %434 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %430, 0
  %435 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %434, i64 3, 1
  %436 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %435, i64 3, 2
  %437 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %436)
  store ptr %437, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  %438 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  br i1 %410, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %439 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %440 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %439, 1
  %441 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %440, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 2
  %442 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %441, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 3
  %443 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %444 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %445 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %444, 1
  %446 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %445, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 2
  %447 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %446, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 3
  %448 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %449 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %448, 1
  %450 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %449, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 2
  %451 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %450, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 3
  %452 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %453 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %454 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %453, 1
  %455 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %454, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 2
  %456 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %455, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 3
  %457 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %458 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %459 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %458, 1
  %460 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %459, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 2
  %461 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %460, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 3
  %462 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %463 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %464 = icmp eq ptr %463, null
  br i1 %464, label %_llgo_59, label %_llgo_60

_llgo_58:                                         ; preds = %_llgo_80, %_llgo_56
  %465 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %466 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %467 = load ptr, ptr @_llgo_Pointer, align 8
  %468 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %469 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %470 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %469, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %471 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %468)
  %472 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr %471, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %473 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %474 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr %473, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %475 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %476 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr %475, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %477 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %478 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %477, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %470, ptr %478, align 8
  %479 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %477, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %472, ptr %479, align 8
  %480 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %477, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %474, ptr %480, align 8
  %481 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %477, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %476, ptr %481, align 8
  %482 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %477, 0
  %483 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %482, i64 4, 1
  %484 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, i64 4, 2
  %485 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %484)
  store ptr %485, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  %486 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  br i1 %407, label %_llgo_129, label %_llgo_130

_llgo_59:                                         ; preds = %_llgo_57
  %487 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %462)
  store ptr %487, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_57
  %488 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %489 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %490 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %491 = icmp eq ptr %490, null
  br i1 %491, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %492 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %493 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %492, 0
  %494 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %493, i64 0, 1
  %495 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %494, i64 0, 2
  %496 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %489)
  %497 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %498 = getelementptr ptr, ptr %497, i64 0
  store ptr %496, ptr %498, align 8
  %499 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %497, 0
  %500 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %499, i64 1, 1
  %501 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %500, i64 1, 2
  %502 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %495, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %501, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %502)
  store ptr %502, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %503 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %504 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %503, 1
  %505 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %504, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 2
  %506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %505, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 3
  %507 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %508 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %507, 1
  %509 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %508, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 2
  %510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %509, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 3
  %511 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %512 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %513 = icmp eq ptr %512, null
  br i1 %513, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %514 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %511)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %514)
  store ptr %514, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %515 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %516 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %517 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %518 = icmp eq ptr %517, null
  br i1 %518, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %519 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %520 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %519, 0
  %521 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %520, i64 0, 1
  %522 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %521, i64 0, 2
  %523 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %516)
  %524 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %525 = getelementptr ptr, ptr %524, i64 0
  store ptr %523, ptr %525, align 8
  %526 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %524, 0
  %527 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %526, i64 1, 1
  %528 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %527, i64 1, 2
  %529 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %522, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %528, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %529)
  store ptr %529, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %530 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %531 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %530, 1
  %532 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %531, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 2
  %533 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %532, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 3
  %534 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %536 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %537 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %536, 0
  %538 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %537, i64 0, 1
  %539 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %538, i64 0, 2
  %540 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %541 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %542 = getelementptr ptr, ptr %541, i64 0
  store ptr %540, ptr %542, align 8
  %543 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %541, 0
  %544 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %543, i64 1, 1
  %545 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %544, i64 1, 2
  %546 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %545, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %546)
  store ptr %546, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %547 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %548 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %547, 1
  %549 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %548, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 2
  %550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %549, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 3
  %551 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %552 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %551, 1
  %553 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %552, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 2
  %554 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %553, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 3
  %555 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %556 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %557 = icmp eq ptr %556, null
  br i1 %557, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  store ptr %555, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %558 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %559 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %560 = icmp eq ptr %559, null
  br i1 %560, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %558, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %561 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %562 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %563 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %564 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %563, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %565 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %562)
  %566 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr %565, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %567 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %568 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %567, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %564, ptr %568, align 8
  %569 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %567, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %566, ptr %569, align 8
  %570 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %567, 0
  %571 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %570, i64 2, 1
  %572 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %571, i64 2, 2
  %573 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %572)
  store ptr %573, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  %574 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  br i1 %560, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %575 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %576 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %575, 1
  %577 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %576, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 2
  %578 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %577, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 3
  %579 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %580 = icmp eq ptr %579, null
  br i1 %580, label %_llgo_75, label %_llgo_76

_llgo_74:                                         ; preds = %_llgo_76, %_llgo_72
  %581 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %582 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %583 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %584 = icmp eq ptr %583, null
  br i1 %584, label %_llgo_77, label %_llgo_78

_llgo_75:                                         ; preds = %_llgo_73
  %585 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %586 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %585, 0
  %587 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %586, i64 0, 1
  %588 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %587, i64 0, 2
  %589 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %590 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %591 = getelementptr ptr, ptr %590, i64 0
  store ptr %589, ptr %591, align 8
  %592 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %590, 0
  %593 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %592, i64 1, 1
  %594 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %593, i64 1, 2
  %595 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %588, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %594, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %595)
  store ptr %595, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_73
  %596 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %597 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %596, 1
  %598 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %597, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 2
  %599 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %598, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 3
  %600 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %601 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %600, 1
  %602 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %601, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 2
  %603 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %602, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 3
  %604 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %605 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %604, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %578, ptr %605, align 8
  %606 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %604, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %599, ptr %606, align 8
  %607 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %604, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %603, ptr %607, align 8
  %608 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %604, 0
  %609 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %608, i64 3, 1
  %610 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %609, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %558, ptr %574, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %610)
  br label %_llgo_74

_llgo_77:                                         ; preds = %_llgo_74
  %611 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %582)
  store ptr %611, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_74
  %612 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %613 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %614 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %615 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %613, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %616 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %617 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %616, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %618 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %614)
  %619 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr %618, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %620 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %621 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %620, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %615, ptr %621, align 8
  %622 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %620, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %617, ptr %622, align 8
  %623 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %620, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %619, ptr %623, align 8
  %624 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %620, 0
  %625 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %624, i64 3, 1
  %626 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %625, i64 3, 2
  %627 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %626)
  store ptr %627, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  %628 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  br i1 %557, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %629 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %630 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %629, 1
  %631 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %630, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 2
  %632 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %631, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 3
  %633 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %634 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %635 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %634, 1
  %636 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %635, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 2
  %637 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %636, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 3
  %638 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %639 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %638, 1
  %640 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %639, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 2
  %641 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %640, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 3
  %642 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %643 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %644 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %643, 1
  %645 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %644, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 2
  %646 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %645, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 3
  %647 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %648 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %649 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %648, 1
  %650 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %649, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 2
  %651 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %650, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 3
  %652 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %653 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %654 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %653, 1
  %655 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %654, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 2
  %656 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %655, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 3
  %657 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %658 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %657, 1
  %659 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %658, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 2
  %660 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %659, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 3
  %661 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %662 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %663 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %662, 1
  %664 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %663, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 2
  %665 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %664, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 3
  %666 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %667 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %666, 1
  %668 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %667, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 2
  %669 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %668, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 3
  %670 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %671 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %670, 1
  %672 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %671, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 2
  %673 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %672, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 3
  %674 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %675 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %676 = icmp eq ptr %675, null
  br i1 %676, label %_llgo_81, label %_llgo_82

_llgo_80:                                         ; preds = %_llgo_100, %_llgo_78
  %677 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %678 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %679 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %680 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %679, 1
  %681 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %680, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 2
  %682 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %681, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 3
  %683 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %684 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %683, 1
  %685 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %684, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 2
  %686 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %685, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 3
  %687 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %688 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %687, 1
  %689 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %688, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 2
  %690 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %689, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 3
  %691 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %692 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %693 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %692, 1
  %694 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %693, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 2
  %695 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %694, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 3
  %696 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %697 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %696, 1
  %698 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %697, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 2
  %699 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %698, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 3
  %700 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %701 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %700, 1
  %702 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %701, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 2
  %703 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %702, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 3
  %704 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %705 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %706 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %705, 1
  %707 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %706, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 2
  %708 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %707, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 3
  %709 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %710 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %709, 1
  %711 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %710, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 2
  %712 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %711, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 3
  %713 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %714 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %713, 1
  %715 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %714, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 2
  %716 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %715, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 3
  %717 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %718 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %717, 1
  %719 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %718, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 2
  %720 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %719, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 3
  %721 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %722 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %721, 1
  %723 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %722, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 2
  %724 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %723, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 3
  %725 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %726 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %727 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %726, 1
  %728 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %727, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 2
  %729 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %728, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 3
  %730 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %731 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %730, 1
  %732 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %731, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 2
  %733 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %732, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 3
  %734 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %735 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %734, 1
  %736 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %735, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 2
  %737 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %736, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 3
  %738 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 960)
  %739 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %442, ptr %739, align 8
  %740 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %447, ptr %740, align 8
  %741 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %451, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %456, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %461, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %506, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %510, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %533, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %550, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %554, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %682, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %686, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %690, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %695, ptr %752, align 8
  %753 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %699, ptr %753, align 8
  %754 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %703, ptr %754, align 8
  %755 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %708, ptr %755, align 8
  %756 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %712, ptr %756, align 8
  %757 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %716, ptr %757, align 8
  %758 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %720, ptr %758, align 8
  %759 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %724, ptr %759, align 8
  %760 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %729, ptr %760, align 8
  %761 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %733, ptr %761, align 8
  %762 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %738, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %737, ptr %762, align 8
  %763 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %738, 0
  %764 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %763, i64 24, 1
  %765 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %764, i64 24, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %408, ptr %438, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %765)
  br label %_llgo_58

_llgo_81:                                         ; preds = %_llgo_79
  %766 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %674)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %766)
  store ptr %766, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_79
  %767 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %768 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %769 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %770 = icmp eq ptr %769, null
  br i1 %770, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %771 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %772 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %771, 0
  %773 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %772, i64 0, 1
  %774 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %773, i64 0, 2
  %775 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %768)
  %776 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %777 = getelementptr ptr, ptr %776, i64 0
  store ptr %775, ptr %777, align 8
  %778 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %776, 0
  %779 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %778, i64 1, 1
  %780 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %779, i64 1, 2
  %781 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %774, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %780, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %781)
  store ptr %781, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %782 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %783 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %782, 1
  %784 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %783, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 2
  %785 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %784, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 3
  %786 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %787 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %786, 1
  %788 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %787, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 2
  %789 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %788, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 3
  %790 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %791 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %790, 1
  %792 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %791, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 2
  %793 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %792, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 3
  %794 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %795 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %796 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %795, 1
  %797 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %796, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 2
  %798 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %797, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 3
  %799 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %800 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %801 = icmp eq ptr %800, null
  br i1 %801, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  store ptr %799, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %802 = load ptr, ptr @_llgo_uint, align 8
  %803 = icmp eq ptr %802, null
  br i1 %803, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %804 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %804, ptr @_llgo_uint, align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %805 = load ptr, ptr @_llgo_uint, align 8
  br i1 %801, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %806 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %807 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %806, 1
  %808 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %807, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %809 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %808, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 3
  %810 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %806, 1
  %811 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %810, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %812 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %811, ptr @"github.com/goplus/llgo/runtime/abi.Kind.String", 3
  %813 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %814 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %813, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %812, ptr %814, align 8
  %815 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %813, 0
  %816 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %815, i64 1, 1
  %817 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %816, i64 1, 2
  %818 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %819 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %818, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %809, ptr %819, align 8
  %820 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %818, 0
  %821 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %820, i64 1, 1
  %822 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %821, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %799, ptr %805, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %817, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %822)
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %823 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %824 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %825 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %826 = icmp eq ptr %825, null
  br i1 %826, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %827 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %828 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %827, 0
  %829 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %828, i64 0, 1
  %830 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %829, i64 0, 2
  %831 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %832 = getelementptr ptr, ptr %831, i64 0
  store ptr %824, ptr %832, align 8
  %833 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %831, 0
  %834 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %833, i64 1, 1
  %835 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %834, i64 1, 2
  %836 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %830, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %835, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %836)
  store ptr %836, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %837 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %838 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %837, 1
  %839 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %838, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 2
  %840 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %839, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 3
  %841 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %842 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %841, 1
  %843 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %842, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 2
  %844 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %843, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 3
  %845 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %846 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %847 = icmp eq ptr %846, null
  br i1 %847, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  store ptr %845, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %848 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %849 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %850 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %851 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %852 = icmp eq ptr %851, null
  br i1 %852, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %853 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %854 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %855 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %856 = getelementptr ptr, ptr %855, i64 0
  store ptr %853, ptr %856, align 8
  %857 = getelementptr ptr, ptr %855, i64 1
  store ptr %854, ptr %857, align 8
  %858 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %855, 0
  %859 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %858, i64 2, 1
  %860 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %859, i64 2, 2
  %861 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %862 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %863 = getelementptr ptr, ptr %862, i64 0
  store ptr %861, ptr %863, align 8
  %864 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %862, 0
  %865 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %864, i64 1, 1
  %866 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %865, i64 1, 2
  %867 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %860, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %866, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %867)
  store ptr %867, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %868 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %869 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %870 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %871 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %872 = getelementptr ptr, ptr %871, i64 0
  store ptr %869, ptr %872, align 8
  %873 = getelementptr ptr, ptr %871, i64 1
  store ptr %870, ptr %873, align 8
  %874 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %871, 0
  %875 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %874, i64 2, 1
  %876 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %875, i64 2, 2
  %877 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %878 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %879 = getelementptr ptr, ptr %878, i64 0
  store ptr %877, ptr %879, align 8
  %880 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %878, 0
  %881 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %880, i64 1, 1
  %882 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %881, i64 1, 2
  %883 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %876, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %882, i1 false)
  %884 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %883, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %885 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %886 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %885, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %887 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %888 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %887, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %884, ptr %888, align 8
  %889 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %887, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %886, ptr %889, align 8
  %890 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %887, 0
  %891 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %890, i64 2, 1
  %892 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %891, i64 2, 2
  %893 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %892)
  store ptr %893, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %894 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %895 = load ptr, ptr @_llgo_uint16, align 8
  %896 = icmp eq ptr %895, null
  br i1 %896, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %897 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %897, ptr @_llgo_uint16, align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %898 = load ptr, ptr @_llgo_uint16, align 8
  %899 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %900 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %901 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %902 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %903 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %899, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %904 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %900)
  %905 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr %904, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %906 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %901)
  %907 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %906, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %908 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %902)
  %909 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr %908, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %910 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %911 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %912 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %913 = getelementptr ptr, ptr %912, i64 0
  store ptr %910, ptr %913, align 8
  %914 = getelementptr ptr, ptr %912, i64 1
  store ptr %911, ptr %914, align 8
  %915 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %912, 0
  %916 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %915, i64 2, 1
  %917 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %916, i64 2, 2
  %918 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %919 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %920 = getelementptr ptr, ptr %919, i64 0
  store ptr %918, ptr %920, align 8
  %921 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %919, 0
  %922 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %921, i64 1, 1
  %923 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %922, i64 1, 2
  %924 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %917, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %923, i1 false)
  %925 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %924, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %926 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %927 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %926, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %928 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %929 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %928, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %925, ptr %929, align 8
  %930 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %928, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %927, ptr %930, align 8
  %931 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %928, 0
  %932 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %931, i64 2, 1
  %933 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %932, i64 2, 2
  %934 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %933)
  %935 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr %934, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %936 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %937 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr %936, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %938 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %939 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr %938, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %940 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %941 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 10 }, ptr %940, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %942 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %943 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr %942, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %944 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 504)
  %945 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %903, ptr %945, align 8
  %946 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %905, ptr %946, align 8
  %947 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %907, ptr %947, align 8
  %948 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %909, ptr %948, align 8
  %949 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %935, ptr %949, align 8
  %950 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %937, ptr %950, align 8
  %951 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %939, ptr %951, align 8
  %952 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %941, ptr %952, align 8
  %953 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %944, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %943, ptr %953, align 8
  %954 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %944, 0
  %955 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %954, i64 9, 1
  %956 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %955, i64 9, 2
  %957 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %956)
  store ptr %957, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  %958 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  br i1 %847, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %959 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %960 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %959, 1
  %961 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %960, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 2
  %962 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %961, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 3
  %963 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %964 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %965 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %964, 1
  %966 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %965, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 2
  %967 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %966, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 3
  %968 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %969 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %968, 1
  %970 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %969, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 2
  %971 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %970, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 3
  %972 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %973 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %974 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %973, 1
  %975 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %974, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 2
  %976 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %975, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 3
  %977 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %978 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %979 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %978, 1
  %980 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %979, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 2
  %981 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %980, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 3
  %982 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %983 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %982, 1
  %984 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %983, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 2
  %985 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %984, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 3
  %986 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %987 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %988 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %987, 1
  %989 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %988, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 2
  %990 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %989, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 3
  %991 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %992 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %991, 1
  %993 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %992, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 2
  %994 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %993, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 3
  %995 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %996 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %995, 1
  %997 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %996, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 2
  %998 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %997, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 3
  %999 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1000 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %999, 1
  %1001 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1000, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 2
  %1002 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1001, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 3
  %1003 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1004 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1003, 1
  %1005 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1004, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 2
  %1006 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1005, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 3
  %1007 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1008 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1007, 1
  %1009 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1008, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 2
  %1010 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1009, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 3
  %1011 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1012 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1013 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1012, 1
  %1014 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1013, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 2
  %1015 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1014, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 3
  %1016 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1017 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1016, 1
  %1018 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1017, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 2
  %1019 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1018, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 3
  %1020 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1021 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1020, 1
  %1022 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1021, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 2
  %1023 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1022, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 3
  %1024 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1025 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1024, 1
  %1026 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1025, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 2
  %1027 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1026, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 3
  %1028 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1029 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1028, 1
  %1030 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1029, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 2
  %1031 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1030, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 3
  %1032 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1033 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %_llgo_101, label %_llgo_102

_llgo_100:                                        ; preds = %_llgo_116, %_llgo_98
  %1035 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1036 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1037 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1038 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1037, 1
  %1039 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1038, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 2
  %1040 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1039, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 3
  %1041 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1042 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1041, 1
  %1043 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1042, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 2
  %1044 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1043, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 3
  %1045 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1046 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1045, 1
  %1047 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1046, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 2
  %1048 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1047, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 3
  %1049 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1050 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1049, 1
  %1051 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1050, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 2
  %1052 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1051, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 3
  %1053 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1054 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1053, 1
  %1055 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1054, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 2
  %1056 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1055, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 3
  %1057 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1058 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1059 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1058, 1
  %1060 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1059, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 2
  %1061 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1060, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 3
  %1062 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1063 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1062, 1
  %1064 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1063, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 2
  %1065 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1064, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 3
  %1066 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1067 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %632, ptr %1067, align 8
  %1068 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %637, ptr %1068, align 8
  %1069 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %641, ptr %1069, align 8
  %1070 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %646, ptr %1070, align 8
  %1071 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %651, ptr %1071, align 8
  %1072 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %656, ptr %1072, align 8
  %1073 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %660, ptr %1073, align 8
  %1074 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %665, ptr %1074, align 8
  %1075 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %669, ptr %1075, align 8
  %1076 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %673, ptr %1076, align 8
  %1077 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %785, ptr %1077, align 8
  %1078 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %789, ptr %1078, align 8
  %1079 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %793, ptr %1079, align 8
  %1080 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %798, ptr %1080, align 8
  %1081 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %840, ptr %1081, align 8
  %1082 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %844, ptr %1082, align 8
  %1083 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1040, ptr %1083, align 8
  %1084 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1044, ptr %1084, align 8
  %1085 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1048, ptr %1085, align 8
  %1086 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1052, ptr %1086, align 8
  %1087 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1056, ptr %1087, align 8
  %1088 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1061, ptr %1088, align 8
  %1089 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1066, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1065, ptr %1089, align 8
  %1090 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1066, 0
  %1091 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1090, i64 23, 1
  %1092 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1091, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %555, ptr %628, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1092)
  br label %_llgo_80

_llgo_101:                                        ; preds = %_llgo_99
  %1093 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1032)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1093)
  store ptr %1093, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_99
  %1094 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1095 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1096 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %1098 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1099 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1098, 0
  %1100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1099, i64 0, 1
  %1101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1100, i64 0, 2
  %1102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1095)
  %1103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1104 = getelementptr ptr, ptr %1103, i64 0
  store ptr %1102, ptr %1104, align 8
  %1105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1103, 0
  %1106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1105, i64 1, 1
  %1107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1106, i64 1, 2
  %1108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1101, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1107, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1108)
  store ptr %1108, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %1109 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1109, 1
  %1111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1110, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 2
  %1112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1111, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 3
  %1113 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1113, 1
  %1115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1114, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 2
  %1116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1115, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 3
  %1117 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1117, 1
  %1119 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1118, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 2
  %1120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1119, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 3
  %1121 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1122 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1121, 1
  %1123 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1122, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 2
  %1124 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1123, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 3
  %1125 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1126 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1125, 1
  %1127 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1126, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 2
  %1128 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1127, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 3
  %1129 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %1131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1131, 0
  %1133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1132, i64 0, 1
  %1134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1133, i64 0, 2
  %1135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1137 = getelementptr ptr, ptr %1136, i64 0
  store ptr %1135, ptr %1137, align 8
  %1138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1136, 0
  %1139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1138, i64 1, 1
  %1140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1139, i64 1, 2
  %1141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1134, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1140, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1141)
  store ptr %1141, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %1142 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1143 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1142, 1
  %1144 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1143, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 2
  %1145 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1144, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 3
  %1146 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1147 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1146, 1
  %1148 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1147, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 2
  %1149 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1148, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 3
  %1150 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1151 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  store ptr %1150, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1154 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  store ptr %1153, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %1156 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1159 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %1158, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1157)
  %1161 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 3 }, ptr %1160, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1163 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr %1162, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1165 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr %1164, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1167 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr %1166, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %1169 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1168, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1159, ptr %1169, align 8
  %1170 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1168, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1161, ptr %1170, align 8
  %1171 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1168, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1163, ptr %1171, align 8
  %1172 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1168, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1165, ptr %1172, align 8
  %1173 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1168, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1167, ptr %1173, align 8
  %1174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1168, 0
  %1175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1174, i64 5, 1
  %1176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1175, i64 5, 2
  %1177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1176)
  store ptr %1177, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  %1178 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  br i1 %1155, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  %1179 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1180 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1179, 1
  %1181 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1180, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 2
  %1182 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1181, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 3
  %1183 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1184 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1183, 1
  %1185 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1184, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 2
  %1186 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1185, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 3
  %1187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1188 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1187, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1182, ptr %1188, align 8
  %1189 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1187, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1186, ptr %1189, align 8
  %1190 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1187, 0
  %1191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1190, i64 2, 1
  %1192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1191, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1153, ptr %1178, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1192)
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %1193 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1195 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %1197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1194)
  store ptr %1197, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1198 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1201 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1199, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %1202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1203 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1202, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1200)
  %1205 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr %1204, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %1207 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1206, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1201, ptr %1207, align 8
  %1208 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1206, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1203, ptr %1208, align 8
  %1209 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1206, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1205, ptr %1209, align 8
  %1210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1206, 0
  %1211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1210, i64 3, 1
  %1212 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1211, i64 3, 2
  %1213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1212)
  store ptr %1213, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  %1214 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  br i1 %1152, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1215 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1216 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1215, 1
  %1217 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1216, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 2
  %1218 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1217, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 3
  %1219 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1220 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1221 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1220, 1
  %1222 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1221, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 2
  %1223 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1222, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 3
  %1224 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1225 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1224, 1
  %1226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1225, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 2
  %1227 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1226, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 3
  %1228 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1229 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1230 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1229, 1
  %1231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1230, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 2
  %1232 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1231, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 3
  %1233 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1234 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1234, 1
  %1236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1235, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 2
  %1237 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1236, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 3
  %1238 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1239 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1239, 1
  %1241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1240, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 2
  %1242 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1241, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 3
  %1243 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1243, 1
  %1245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1244, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 2
  %1246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1245, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 3
  %1247 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1248 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1248, 1
  %1250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1249, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 2
  %1251 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1250, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 3
  %1252 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1252, 1
  %1254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1253, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 2
  %1255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1254, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 3
  %1256 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1256, 1
  %1258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1257, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 2
  %1259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1258, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 3
  %1260 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1261 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1261, 1
  %1263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1262, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 2
  %1264 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1263, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 3
  %1265 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1265, 1
  %1267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1266, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 2
  %1268 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1267, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 3
  %1269 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1269, 1
  %1271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1270, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 2
  %1272 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1271, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 3
  %1273 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1274 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1274, 1
  %1276 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1275, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 2
  %1277 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1276, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 3
  %1278 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1278, 1
  %1280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1279, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 2
  %1281 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1280, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 3
  %1282 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1282, 1
  %1284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1283, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 2
  %1285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1284, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 3
  %1286 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1287 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1287, 1
  %1289 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1288, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 2
  %1290 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1289, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 3
  %1291 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1291, 1
  %1293 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1292, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 2
  %1294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1293, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 3
  %1295 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1295, 1
  %1297 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1296, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 2
  %1298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1297, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 3
  %1299 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1299, 1
  %1301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1300, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 2
  %1302 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1301, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 3
  %1303 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1304 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1303, 1
  %1305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1304, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 2
  %1306 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1305, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 3
  %1307 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1308 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1309 = icmp eq ptr %1308, null
  br i1 %1309, label %_llgo_117, label %_llgo_118

_llgo_116:                                        ; preds = %_llgo_128, %_llgo_114
  %1310 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1311 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1312 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1312, 1
  %1314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1313, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 2
  %1315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1314, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 3
  %1316 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1317 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1316, 1
  %1318 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1317, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 2
  %1319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1318, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 3
  %1320 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1040)
  %1321 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %962, ptr %1321, align 8
  %1322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %967, ptr %1322, align 8
  %1323 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %971, ptr %1323, align 8
  %1324 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %976, ptr %1324, align 8
  %1325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %981, ptr %1325, align 8
  %1326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %985, ptr %1326, align 8
  %1327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %990, ptr %1327, align 8
  %1328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %994, ptr %1328, align 8
  %1329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %998, ptr %1329, align 8
  %1330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1002, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1006, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1010, ptr %1332, align 8
  %1333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1015, ptr %1333, align 8
  %1334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1019, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1023, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1027, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1031, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1112, ptr %1338, align 8
  %1339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1116, ptr %1339, align 8
  %1340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1120, ptr %1340, align 8
  %1341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1124, ptr %1341, align 8
  %1342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1128, ptr %1342, align 8
  %1343 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1145, ptr %1343, align 8
  %1344 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %1149, ptr %1344, align 8
  %1345 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 24
  store %"github.com/goplus/llgo/runtime/abi.Method" %1315, ptr %1345, align 8
  %1346 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1320, i64 25
  store %"github.com/goplus/llgo/runtime/abi.Method" %1319, ptr %1346, align 8
  %1347 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1320, 0
  %1348 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1347, i64 26, 1
  %1349 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1348, i64 26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %845, ptr %958, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1349)
  br label %_llgo_100

_llgo_117:                                        ; preds = %_llgo_115
  %1350 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1307)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1350)
  store ptr %1350, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_115
  %1351 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1352 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1353 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1354 = icmp eq ptr %1353, null
  br i1 %1354, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %1355 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1356 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1355, 0
  %1357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1356, i64 0, 1
  %1358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1357, i64 0, 2
  %1359 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1352)
  %1360 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1361 = getelementptr ptr, ptr %1360, i64 0
  store ptr %1359, ptr %1361, align 8
  %1362 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1360, 0
  %1363 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1362, i64 1, 1
  %1364 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1363, i64 1, 2
  %1365 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1358, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1364, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1365)
  store ptr %1365, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %1366 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1367 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1366, 1
  %1368 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1367, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 2
  %1369 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1368, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 3
  %1370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1371 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  store ptr %1370, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1373 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1374 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1373, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1375 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1376 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 6 }, ptr %1375, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1377 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1378 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr %1377, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1379 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %1380 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr %1379, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1381 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1382 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1381, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1374, ptr %1382, align 8
  %1383 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1381, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1376, ptr %1383, align 8
  %1384 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1381, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1378, ptr %1384, align 8
  %1385 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1381, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1380, ptr %1385, align 8
  %1386 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1381, 0
  %1387 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1386, i64 4, 1
  %1388 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1387, i64 4, 2
  %1389 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1388)
  store ptr %1389, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1390 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1372, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1391 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1392 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1393 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1392, 1
  %1394 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1393, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 2
  %1395 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1394, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 3
  %1396 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1397 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1398 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1397, 1
  %1399 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1398, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 2
  %1400 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1399, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 3
  %1401 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1402 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1401, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1395, ptr %1402, align 8
  %1403 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1401, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1400, ptr %1403, align 8
  %1404 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1401, 0
  %1405 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1404, i64 2, 1
  %1406 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1405, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1370, ptr %1390, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1406)
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1407 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1408 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1409 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1410 = icmp eq ptr %1409, null
  br i1 %1410, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1411 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1408)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1411)
  store ptr %1411, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1412 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1414 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1416 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1417 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1416, 0
  %1418 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1417, i64 0, 1
  %1419 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1418, i64 0, 2
  %1420 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1413)
  %1421 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1422 = getelementptr ptr, ptr %1421, i64 0
  store ptr %1420, ptr %1422, align 8
  %1423 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1421, 0
  %1424 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1423, i64 1, 1
  %1425 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1424, i64 1, 2
  %1426 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1419, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1425, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1426)
  store ptr %1426, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1427 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1428 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1427, 1
  %1429 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1428, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 2
  %1430 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1429, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 3
  %1431 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1432 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1218, ptr %1432, align 8
  %1433 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1223, ptr %1433, align 8
  %1434 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1227, ptr %1434, align 8
  %1435 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1232, ptr %1435, align 8
  %1436 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1237, ptr %1436, align 8
  %1437 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1242, ptr %1437, align 8
  %1438 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1246, ptr %1438, align 8
  %1439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1251, ptr %1439, align 8
  %1440 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1255, ptr %1440, align 8
  %1441 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1259, ptr %1441, align 8
  %1442 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1264, ptr %1442, align 8
  %1443 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1268, ptr %1443, align 8
  %1444 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1272, ptr %1444, align 8
  %1445 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1277, ptr %1445, align 8
  %1446 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1281, ptr %1446, align 8
  %1447 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1285, ptr %1447, align 8
  %1448 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1290, ptr %1448, align 8
  %1449 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1294, ptr %1449, align 8
  %1450 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1298, ptr %1450, align 8
  %1451 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1302, ptr %1451, align 8
  %1452 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1306, ptr %1452, align 8
  %1453 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1369, ptr %1453, align 8
  %1454 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1431, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1430, ptr %1454, align 8
  %1455 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1431, 0
  %1456 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1455, i64 23, 1
  %1457 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1456, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1150, ptr %1214, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1457)
  br label %_llgo_116

_llgo_129:                                        ; preds = %_llgo_58
  %1458 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1459 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1458, 1
  %1460 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1459, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 2
  %1461 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1460, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 3
  %1462 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1463 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1462, 1
  %1464 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1463, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 2
  %1465 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1464, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 3
  %1466 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1467 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1466, 1
  %1468 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1467, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 2
  %1469 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1468, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 3
  %1470 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %1471 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1470, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1461, ptr %1471, align 8
  %1472 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1470, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1465, ptr %1472, align 8
  %1473 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1470, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1469, ptr %1473, align 8
  %1474 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1470, 0
  %1475 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1474, i64 3, 1
  %1476 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1475, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %405, ptr %486, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1476)
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_58
  %1477 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1478 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1479 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1480 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1479, 1
  %1481 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1480, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 2
  %1482 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1481, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 3
  %1483 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1484 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1483, 1
  %1485 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1484, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 2
  %1486 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1485, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 3
  %1487 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1488 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1489 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1488, 1
  %1490 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1489, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 2
  %1491 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1490, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 3
  %1492 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1493 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1492, 1
  %1494 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1493, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 2
  %1495 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1494, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 3
  %1496 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1497 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1496, 1
  %1498 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1497, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 2
  %1499 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1498, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 3
  %1500 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1501 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1502 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1501, 1
  %1503 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1502, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 2
  %1504 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1503, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 3
  %1505 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1505, 1
  %1507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1506, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 2
  %1508 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1507, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 3
  %1509 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1509, 1
  %1511 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1510, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 2
  %1512 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1511, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 3
  %1513 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1514 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1515 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1514, 1
  %1516 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1515, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 2
  %1517 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1516, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 3
  %1518 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1519 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1518, 1
  %1520 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1519, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 2
  %1521 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1520, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 3
  %1522 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1523 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1524 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1523, 1
  %1525 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1524, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 2
  %1526 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1525, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 3
  %1527 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1528 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1527, 1
  %1529 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1528, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 2
  %1530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1529, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 3
  %1531 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1532 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1531, 1
  %1533 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1532, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 2
  %1534 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1533, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 3
  %1535 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1536 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1535, 1
  %1537 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1536, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 2
  %1538 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1537, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 3
  %1539 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1540 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1539, 1
  %1541 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1540, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 2
  %1542 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1541, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 3
  %1543 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1544 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1545 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1544, 1
  %1546 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1545, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 2
  %1547 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1546, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 3
  %1548 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1549 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1548, 1
  %1550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1549, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 2
  %1551 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1550, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 3
  %1552 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 840)
  %1553 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %215, ptr %1553, align 8
  %1554 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %363, ptr %1554, align 8
  %1555 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %385, ptr %1555, align 8
  %1556 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %404, ptr %1556, align 8
  %1557 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1482, ptr %1557, align 8
  %1558 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1486, ptr %1558, align 8
  %1559 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1491, ptr %1559, align 8
  %1560 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1495, ptr %1560, align 8
  %1561 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1499, ptr %1561, align 8
  %1562 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1504, ptr %1562, align 8
  %1563 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1508, ptr %1563, align 8
  %1564 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1512, ptr %1564, align 8
  %1565 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1517, ptr %1565, align 8
  %1566 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1521, ptr %1566, align 8
  %1567 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1526, ptr %1567, align 8
  %1568 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1530, ptr %1568, align 8
  %1569 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1534, ptr %1569, align 8
  %1570 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1538, ptr %1570, align 8
  %1571 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1542, ptr %1571, align 8
  %1572 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1547, ptr %1572, align 8
  %1573 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1551, ptr %1573, align 8
  %1574 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1552, 0
  %1575 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1574, i64 21, 1
  %1576 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1575, i64 21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %187, ptr %211, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1576)
  br label %_llgo_38

_llgo_131:                                        ; preds = %_llgo_30
  %1577 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %165)
  store ptr %1577, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_30
  %1578 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1579 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1580 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1581 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1582 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1579)
  %1583 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 1 }, ptr %1582, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1584 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1580)
  %1585 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 1 }, ptr %1584, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1586 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1587 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 1 }, ptr %1586, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1588 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1581)
  %1589 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 1 }, ptr %1588, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1590 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1591 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1590, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1583, ptr %1591, align 8
  %1592 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1590, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1585, ptr %1592, align 8
  %1593 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1590, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1587, ptr %1593, align 8
  %1594 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1590, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1589, ptr %1594, align 8
  %1595 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1590, 0
  %1596 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1595, i64 4, 1
  %1597 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1596, i64 4, 2
  %1598 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1597)
  store ptr %1598, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  %1599 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  br i1 %2, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %1599, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_132
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath"(ptr)

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

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Kind).String"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.Kind.String"(i64)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len"(ptr)

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

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*MapType).String"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported"(ptr)

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

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr)

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
