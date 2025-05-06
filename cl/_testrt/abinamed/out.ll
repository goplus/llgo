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
  %36 = load ptr, ptr @_llgo_Pointer, align 8
  %37 = load ptr, ptr @_llgo_Pointer, align 8
  %38 = load ptr, ptr @_llgo_bool, align 8
  %39 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %42 = getelementptr ptr, ptr %41, i64 0
  store ptr %36, ptr %42, align 8
  %43 = getelementptr ptr, ptr %41, i64 1
  store ptr %37, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %41, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 2, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 2, 2
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %48 = getelementptr ptr, ptr %47, i64 0
  store ptr %38, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 1, 2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %52)
  store ptr %52, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %53 = load ptr, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", align 8
  %54 = load ptr, ptr @_llgo_Pointer, align 8
  %55 = load ptr, ptr @_llgo_Pointer, align 8
  %56 = load ptr, ptr @_llgo_bool, align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %58 = getelementptr ptr, ptr %57, i64 0
  store ptr %54, ptr %58, align 8
  %59 = getelementptr ptr, ptr %57, i64 1
  store ptr %55, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 2
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %64 = getelementptr ptr, ptr %63, i64 0
  store ptr %56, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 2
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i1 false)
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
  %97 = load ptr, ptr @_llgo_Pointer, align 8
  %98 = load ptr, ptr @_llgo_Pointer, align 8
  %99 = load ptr, ptr @_llgo_bool, align 8
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %102 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %101, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %104 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %103, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %106 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %105, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %107 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %96, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %109 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr %108, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %111 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 11 }, ptr %110, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %113 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %112, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %115 = getelementptr ptr, ptr %114, i64 0
  store ptr %97, ptr %115, align 8
  %116 = getelementptr ptr, ptr %114, i64 1
  store ptr %98, ptr %116, align 8
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %114, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 2, 1
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 2, 2
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %121 = getelementptr ptr, ptr %120, i64 0
  store ptr %99, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %120, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 1, 2
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, i1 false)
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
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %100)
  %143 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 10 }, ptr %142, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 616)
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %102, ptr %145, align 8
  %146 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %104, ptr %146, align 8
  %147 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %106, ptr %147, align 8
  %148 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %107, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %109, ptr %149, align 8
  %150 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %111, ptr %150, align 8
  %151 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %113, ptr %151, align 8
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
  %170 = load ptr, ptr @_llgo_int, align 8
  %171 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %173, 0
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %174, i64 0, 1
  %176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175, i64 0, 2
  %177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %178 = getelementptr ptr, ptr %177, i64 0
  store ptr %170, ptr %178, align 8
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %177, 0
  %180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, i64 1, 1
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %180, i64 1, 2
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %176, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %181, i1 false)
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
  %346 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %347 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %349 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %350 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %349, 0
  %351 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %350, i64 0, 1
  %352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %351, i64 0, 2
  %353 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %354 = getelementptr ptr, ptr %353, i64 0
  store ptr %346, ptr %354, align 8
  %355 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %353, 0
  %356 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %355, i64 1, 1
  %357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %356, i64 1, 2
  %358 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %352, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %357, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %358)
  store ptr %358, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %359 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %360 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %359, 1
  %361 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %360, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 2
  %362 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %361, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 3
  %363 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %364 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  store ptr %363, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %366 = load ptr, ptr @_llgo_int, align 8
  br i1 %365, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %363, ptr %366, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %367 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %368 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %369 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %370 = icmp eq ptr %369, null
  br i1 %370, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %372 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %371, 0
  %373 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %372, i64 0, 1
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %373, i64 0, 2
  %375 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %376 = getelementptr ptr, ptr %375, i64 0
  store ptr %368, ptr %376, align 8
  %377 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %375, 0
  %378 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %377, i64 1, 1
  %379 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %378, i64 1, 2
  %380 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %379, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %380)
  store ptr %380, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %381 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %382 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %381, 1
  %383 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %382, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 2
  %384 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %383, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 3
  %385 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %386 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %387 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %388 = icmp eq ptr %387, null
  br i1 %388, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %389 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %390 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %389, 0
  %391 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %390, i64 0, 1
  %392 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %391, i64 0, 2
  %393 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %394 = getelementptr ptr, ptr %393, i64 0
  store ptr %386, ptr %394, align 8
  %395 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %393, 0
  %396 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %395, i64 1, 1
  %397 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, i64 1, 2
  %398 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %392, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %397, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %398)
  store ptr %398, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %399 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %400 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %399, 1
  %401 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %400, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 2
  %402 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %401, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 3
  %403 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %404 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %405 = icmp eq ptr %404, null
  br i1 %405, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  store ptr %403, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %406 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %407 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %406, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %409 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %410 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %411 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %410)
  %414 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %413)
  store ptr %414, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %415 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %416 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %417 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %419 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %420 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %421 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %418, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %422 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %419)
  %423 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %422)
  %424 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr %423, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %425 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %420)
  %426 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %425)
  %427 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr %426, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %428 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %429 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %428, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %421, ptr %429, align 8
  %430 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %428, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %424, ptr %430, align 8
  %431 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %428, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %427, ptr %431, align 8
  %432 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %428, 0
  %433 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %432, i64 3, 1
  %434 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %433, i64 3, 2
  %435 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %434)
  store ptr %435, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  %436 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  br i1 %408, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %437 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %438 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %437, 1
  %439 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %438, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 2
  %440 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %439, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 3
  %441 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %442 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %443 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %442, 1
  %444 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %443, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 2
  %445 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %444, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 3
  %446 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %447 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %446, 1
  %448 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %447, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 2
  %449 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %448, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 3
  %450 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %451 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %452 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %451, 1
  %453 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %452, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 2
  %454 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %453, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 3
  %455 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %456 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %457 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %456, 1
  %458 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %457, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 2
  %459 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %458, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 3
  %460 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %461 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %462 = icmp eq ptr %461, null
  br i1 %462, label %_llgo_59, label %_llgo_60

_llgo_58:                                         ; preds = %_llgo_80, %_llgo_56
  %463 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %464 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %465 = load ptr, ptr @_llgo_Pointer, align 8
  %466 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %467 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %468 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %467, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %469 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %466)
  %470 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr %469, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %471 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %472 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr %471, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %473 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %474 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr %473, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %475 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %476 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %475, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %468, ptr %476, align 8
  %477 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %475, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %470, ptr %477, align 8
  %478 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %475, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %472, ptr %478, align 8
  %479 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %475, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %474, ptr %479, align 8
  %480 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %475, 0
  %481 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %480, i64 4, 1
  %482 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %481, i64 4, 2
  %483 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %482)
  store ptr %483, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  %484 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  br i1 %405, label %_llgo_129, label %_llgo_130

_llgo_59:                                         ; preds = %_llgo_57
  %485 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %460)
  store ptr %485, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_57
  %486 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %487 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %488 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %489 = icmp eq ptr %488, null
  br i1 %489, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %490 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %491 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %490, 0
  %492 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %491, i64 0, 1
  %493 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %492, i64 0, 2
  %494 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %495 = getelementptr ptr, ptr %494, i64 0
  store ptr %487, ptr %495, align 8
  %496 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %494, 0
  %497 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %496, i64 1, 1
  %498 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %497, i64 1, 2
  %499 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %493, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %498, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %499)
  store ptr %499, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %500 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %501 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %500, 1
  %502 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %501, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 2
  %503 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %502, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 3
  %504 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %505 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %504, 1
  %506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %505, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 2
  %507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %506, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 3
  %508 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %509 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %510 = icmp eq ptr %509, null
  br i1 %510, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %511 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %508)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %511)
  store ptr %511, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %512 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %513 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %514 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %515 = icmp eq ptr %514, null
  br i1 %515, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %516 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %517 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %516, 0
  %518 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %517, i64 0, 1
  %519 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %518, i64 0, 2
  %520 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %521 = getelementptr ptr, ptr %520, i64 0
  store ptr %513, ptr %521, align 8
  %522 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %520, 0
  %523 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %522, i64 1, 1
  %524 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %523, i64 1, 2
  %525 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %519, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %524, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %525)
  store ptr %525, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %526 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %527 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %526, 1
  %528 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %527, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 2
  %529 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %528, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 3
  %530 = load ptr, ptr @_llgo_bool, align 8
  %531 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %532 = icmp eq ptr %531, null
  br i1 %532, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %533 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %534 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %533, 0
  %535 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %534, i64 0, 1
  %536 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %535, i64 0, 2
  %537 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %538 = getelementptr ptr, ptr %537, i64 0
  store ptr %530, ptr %538, align 8
  %539 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %537, 0
  %540 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, i64 1, 1
  %541 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %540, i64 1, 2
  %542 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %541, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %542)
  store ptr %542, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %543 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %544 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %543, 1
  %545 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %544, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 2
  %546 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %545, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 3
  %547 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %548 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %547, 1
  %549 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %548, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 2
  %550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %549, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 3
  %551 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %552 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %553 = icmp eq ptr %552, null
  br i1 %553, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  store ptr %551, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %554 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %555 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %556 = icmp eq ptr %555, null
  br i1 %556, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %554, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %557 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %558 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %559 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %560 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %559, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %561 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %558)
  %562 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr %561, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %563 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %564 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %563, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %560, ptr %564, align 8
  %565 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %563, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %562, ptr %565, align 8
  %566 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %563, 0
  %567 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %566, i64 2, 1
  %568 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %567, i64 2, 2
  %569 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %568)
  store ptr %569, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  %570 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  br i1 %556, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %571 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %572 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %571, 1
  %573 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %572, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 2
  %574 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %573, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 3
  %575 = load ptr, ptr @_llgo_string, align 8
  %576 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %577 = icmp eq ptr %576, null
  br i1 %577, label %_llgo_75, label %_llgo_76

_llgo_74:                                         ; preds = %_llgo_76, %_llgo_72
  %578 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %579 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %580 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %581 = icmp eq ptr %580, null
  br i1 %581, label %_llgo_77, label %_llgo_78

_llgo_75:                                         ; preds = %_llgo_73
  %582 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %583 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %582, 0
  %584 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %583, i64 0, 1
  %585 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %584, i64 0, 2
  %586 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %587 = getelementptr ptr, ptr %586, i64 0
  store ptr %575, ptr %587, align 8
  %588 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %586, 0
  %589 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %588, i64 1, 1
  %590 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %589, i64 1, 2
  %591 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %585, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %590, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %591)
  store ptr %591, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_73
  %592 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %593 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %592, 1
  %594 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %593, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 2
  %595 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %594, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 3
  %596 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %597 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %596, 1
  %598 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %597, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 2
  %599 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %598, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 3
  %600 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %601 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %600, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %574, ptr %601, align 8
  %602 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %600, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %595, ptr %602, align 8
  %603 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %600, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %599, ptr %603, align 8
  %604 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %600, 0
  %605 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %604, i64 3, 1
  %606 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %605, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %554, ptr %570, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %606)
  br label %_llgo_74

_llgo_77:                                         ; preds = %_llgo_74
  %607 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %579)
  store ptr %607, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_74
  %608 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %609 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %610 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %611 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %609, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %612 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %613 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %612, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %614 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %610)
  %615 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr %614, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %616 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %617 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %616, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %611, ptr %617, align 8
  %618 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %616, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %613, ptr %618, align 8
  %619 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %616, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %615, ptr %619, align 8
  %620 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %616, 0
  %621 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %620, i64 3, 1
  %622 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %621, i64 3, 2
  %623 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %622)
  store ptr %623, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  %624 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  br i1 %553, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %625 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %626 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %625, 1
  %627 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %626, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 2
  %628 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %627, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 3
  %629 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %630 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %631 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %630, 1
  %632 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %631, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 2
  %633 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %632, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 3
  %634 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %635 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %634, 1
  %636 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %635, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 2
  %637 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %636, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 3
  %638 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %639 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %640 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %639, 1
  %641 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %640, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 2
  %642 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %641, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 3
  %643 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %644 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %645 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %644, 1
  %646 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %645, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 2
  %647 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %646, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 3
  %648 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %649 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %650 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %649, 1
  %651 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %650, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 2
  %652 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %651, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 3
  %653 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %654 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %653, 1
  %655 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %654, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 2
  %656 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %655, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 3
  %657 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %658 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %659 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %658, 1
  %660 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %659, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 2
  %661 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %660, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 3
  %662 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %663 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %662, 1
  %664 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %663, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 2
  %665 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %664, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 3
  %666 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %667 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %666, 1
  %668 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %667, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 2
  %669 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %668, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 3
  %670 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %671 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %672 = icmp eq ptr %671, null
  br i1 %672, label %_llgo_81, label %_llgo_82

_llgo_80:                                         ; preds = %_llgo_100, %_llgo_78
  %673 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %674 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %675 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %676 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %675, 1
  %677 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %676, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 2
  %678 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %677, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 3
  %679 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %680 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %679, 1
  %681 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %680, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 2
  %682 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %681, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 3
  %683 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %684 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %683, 1
  %685 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %684, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 2
  %686 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %685, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 3
  %687 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %688 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %689 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %688, 1
  %690 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %689, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 2
  %691 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %690, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 3
  %692 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %693 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %692, 1
  %694 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %693, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 2
  %695 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %694, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 3
  %696 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %697 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %696, 1
  %698 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %697, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 2
  %699 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %698, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 3
  %700 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %701 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %702 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %701, 1
  %703 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %702, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 2
  %704 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %703, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 3
  %705 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %706 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %705, 1
  %707 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %706, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 2
  %708 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %707, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 3
  %709 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %710 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %709, 1
  %711 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %710, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 2
  %712 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %711, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 3
  %713 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %714 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %713, 1
  %715 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %714, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 2
  %716 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %715, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 3
  %717 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %718 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %717, 1
  %719 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %718, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 2
  %720 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %719, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 3
  %721 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %722 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %723 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %722, 1
  %724 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %723, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 2
  %725 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %724, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 3
  %726 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %727 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %726, 1
  %728 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %727, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 2
  %729 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %728, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 3
  %730 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %731 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %730, 1
  %732 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %731, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 2
  %733 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %732, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 3
  %734 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 960)
  %735 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %440, ptr %735, align 8
  %736 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %445, ptr %736, align 8
  %737 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %449, ptr %737, align 8
  %738 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %454, ptr %738, align 8
  %739 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %459, ptr %739, align 8
  %740 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %503, ptr %740, align 8
  %741 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %507, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %529, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %546, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %550, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %678, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %682, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %686, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %691, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %695, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %699, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %704, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %708, ptr %752, align 8
  %753 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %712, ptr %753, align 8
  %754 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %716, ptr %754, align 8
  %755 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %720, ptr %755, align 8
  %756 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %725, ptr %756, align 8
  %757 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %729, ptr %757, align 8
  %758 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %734, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %733, ptr %758, align 8
  %759 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %734, 0
  %760 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %759, i64 24, 1
  %761 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %760, i64 24, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %406, ptr %436, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %761)
  br label %_llgo_58

_llgo_81:                                         ; preds = %_llgo_79
  %762 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %670)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %762)
  store ptr %762, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_79
  %763 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %764 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %765 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %766 = icmp eq ptr %765, null
  br i1 %766, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %767 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %768 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %767, 0
  %769 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %768, i64 0, 1
  %770 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %769, i64 0, 2
  %771 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %772 = getelementptr ptr, ptr %771, i64 0
  store ptr %764, ptr %772, align 8
  %773 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %771, 0
  %774 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %773, i64 1, 1
  %775 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %774, i64 1, 2
  %776 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %770, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %775, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %776)
  store ptr %776, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %777 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %778 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %777, 1
  %779 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %778, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 2
  %780 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %779, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 3
  %781 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %782 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %781, 1
  %783 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %782, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 2
  %784 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %783, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 3
  %785 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %786 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %785, 1
  %787 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %786, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 2
  %788 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %787, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 3
  %789 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %790 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %791 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %790, 1
  %792 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %791, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 2
  %793 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %792, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 3
  %794 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %795 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %796 = icmp eq ptr %795, null
  br i1 %796, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  store ptr %794, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %797 = load ptr, ptr @_llgo_uint, align 8
  %798 = icmp eq ptr %797, null
  br i1 %798, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %799 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %799, ptr @_llgo_uint, align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %800 = load ptr, ptr @_llgo_uint, align 8
  br i1 %796, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %801 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %802 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %801, 1
  %803 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %802, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %804 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %803, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 3
  %805 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %801, 1
  %806 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %805, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %807 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %806, ptr @"github.com/goplus/llgo/runtime/abi.Kind.String", 3
  %808 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %809 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %808, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %807, ptr %809, align 8
  %810 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %808, 0
  %811 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %810, i64 1, 1
  %812 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %811, i64 1, 2
  %813 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %814 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %813, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %804, ptr %814, align 8
  %815 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %813, 0
  %816 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %815, i64 1, 1
  %817 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %816, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %794, ptr %800, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %812, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %817)
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %818 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %819 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %820 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %821 = icmp eq ptr %820, null
  br i1 %821, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %822 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %823 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %822, 0
  %824 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %823, i64 0, 1
  %825 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %824, i64 0, 2
  %826 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %827 = getelementptr ptr, ptr %826, i64 0
  store ptr %819, ptr %827, align 8
  %828 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %826, 0
  %829 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %828, i64 1, 1
  %830 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %829, i64 1, 2
  %831 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %825, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %830, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %831)
  store ptr %831, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %832 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %833 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %832, 1
  %834 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %833, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 2
  %835 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %834, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 3
  %836 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %837 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %836, 1
  %838 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %837, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 2
  %839 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %838, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 3
  %840 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %841 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %842 = icmp eq ptr %841, null
  br i1 %842, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  store ptr %840, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %843 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %844 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %845 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %846 = load ptr, ptr @_llgo_Pointer, align 8
  %847 = load ptr, ptr @_llgo_uintptr, align 8
  %848 = load ptr, ptr @_llgo_uintptr, align 8
  %849 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %850 = icmp eq ptr %849, null
  br i1 %850, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %851 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %852 = getelementptr ptr, ptr %851, i64 0
  store ptr %846, ptr %852, align 8
  %853 = getelementptr ptr, ptr %851, i64 1
  store ptr %847, ptr %853, align 8
  %854 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %851, 0
  %855 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %854, i64 2, 1
  %856 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %855, i64 2, 2
  %857 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %858 = getelementptr ptr, ptr %857, i64 0
  store ptr %848, ptr %858, align 8
  %859 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %857, 0
  %860 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %859, i64 1, 1
  %861 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %860, i64 1, 2
  %862 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %856, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %861, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %862)
  store ptr %862, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %863 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %864 = load ptr, ptr @_llgo_Pointer, align 8
  %865 = load ptr, ptr @_llgo_uintptr, align 8
  %866 = load ptr, ptr @_llgo_uintptr, align 8
  %867 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %868 = getelementptr ptr, ptr %867, i64 0
  store ptr %864, ptr %868, align 8
  %869 = getelementptr ptr, ptr %867, i64 1
  store ptr %865, ptr %869, align 8
  %870 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %867, 0
  %871 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %870, i64 2, 1
  %872 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %871, i64 2, 2
  %873 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %874 = getelementptr ptr, ptr %873, i64 0
  store ptr %866, ptr %874, align 8
  %875 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %873, 0
  %876 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %875, i64 1, 1
  %877 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %876, i64 1, 2
  %878 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %872, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %877, i1 false)
  %879 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %878, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %880 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %881 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %880, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %882 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %883 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %882, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %879, ptr %883, align 8
  %884 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %882, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %881, ptr %884, align 8
  %885 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %882, 0
  %886 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %885, i64 2, 1
  %887 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %886, i64 2, 2
  %888 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %887)
  store ptr %888, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %889 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %890 = load ptr, ptr @_llgo_uint16, align 8
  %891 = icmp eq ptr %890, null
  br i1 %891, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %892 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %892, ptr @_llgo_uint16, align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %893 = load ptr, ptr @_llgo_uint16, align 8
  %894 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %895 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %896 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %897 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %898 = load ptr, ptr @_llgo_Pointer, align 8
  %899 = load ptr, ptr @_llgo_uintptr, align 8
  %900 = load ptr, ptr @_llgo_uintptr, align 8
  %901 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %894, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %902 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %895)
  %903 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr %902, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %904 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %896)
  %905 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %904, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %906 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %897)
  %907 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr %906, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %908 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %909 = getelementptr ptr, ptr %908, i64 0
  store ptr %898, ptr %909, align 8
  %910 = getelementptr ptr, ptr %908, i64 1
  store ptr %899, ptr %910, align 8
  %911 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %908, 0
  %912 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %911, i64 2, 1
  %913 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %912, i64 2, 2
  %914 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %915 = getelementptr ptr, ptr %914, i64 0
  store ptr %900, ptr %915, align 8
  %916 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %914, 0
  %917 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %916, i64 1, 1
  %918 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %917, i64 1, 2
  %919 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %913, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %918, i1 false)
  %920 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %919, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %921 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %922 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %921, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %923 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %924 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %923, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %920, ptr %924, align 8
  %925 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %923, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %922, ptr %925, align 8
  %926 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %923, 0
  %927 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %926, i64 2, 1
  %928 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %927, i64 2, 2
  %929 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %928)
  %930 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr %929, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %931 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %932 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr %931, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %933 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %934 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr %933, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %935 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %936 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 10 }, ptr %935, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %937 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %938 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr %937, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %939 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 504)
  %940 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %901, ptr %940, align 8
  %941 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %903, ptr %941, align 8
  %942 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %905, ptr %942, align 8
  %943 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %907, ptr %943, align 8
  %944 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %930, ptr %944, align 8
  %945 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %932, ptr %945, align 8
  %946 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %934, ptr %946, align 8
  %947 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %936, ptr %947, align 8
  %948 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %939, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %938, ptr %948, align 8
  %949 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %939, 0
  %950 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %949, i64 9, 1
  %951 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %950, i64 9, 2
  %952 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %951)
  store ptr %952, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  %953 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$n4NzqKLyUqVG56Dssj_HUGGlIsYMa-aWjSGsMOvBAF8", align 8
  br i1 %842, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %954 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %955 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %954, 1
  %956 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %955, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 2
  %957 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %956, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 3
  %958 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %959 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %960 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %959, 1
  %961 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %960, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 2
  %962 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %961, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 3
  %963 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %964 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %963, 1
  %965 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %964, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 2
  %966 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %965, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 3
  %967 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %968 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %969 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %968, 1
  %970 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %969, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 2
  %971 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %970, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 3
  %972 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %973 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %974 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %973, 1
  %975 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %974, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 2
  %976 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %975, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 3
  %977 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %978 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %977, 1
  %979 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %978, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 2
  %980 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %979, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 3
  %981 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %982 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %983 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %982, 1
  %984 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %983, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 2
  %985 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %984, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 3
  %986 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %987 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %986, 1
  %988 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %987, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 2
  %989 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %988, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 3
  %990 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %991 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %990, 1
  %992 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %991, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 2
  %993 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %992, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 3
  %994 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %995 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %994, 1
  %996 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %995, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 2
  %997 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %996, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 3
  %998 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %999 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %998, 1
  %1000 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %999, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 2
  %1001 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1000, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 3
  %1002 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1003 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1002, 1
  %1004 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1003, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 2
  %1005 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1004, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 3
  %1006 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1007 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1008 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1007, 1
  %1009 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1008, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 2
  %1010 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1009, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 3
  %1011 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1012 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1011, 1
  %1013 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1012, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 2
  %1014 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1013, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 3
  %1015 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1016 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1015, 1
  %1017 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1016, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 2
  %1018 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1017, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 3
  %1019 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1020 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1019, 1
  %1021 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1020, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 2
  %1022 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1021, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 3
  %1023 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1024 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1023, 1
  %1025 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1024, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 2
  %1026 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1025, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 3
  %1027 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1028 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %_llgo_101, label %_llgo_102

_llgo_100:                                        ; preds = %_llgo_116, %_llgo_98
  %1030 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1031 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1032 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1033 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1032, 1
  %1034 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1033, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 2
  %1035 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1034, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 3
  %1036 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1037 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1036, 1
  %1038 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1037, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 2
  %1039 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1038, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 3
  %1040 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1041 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1040, 1
  %1042 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1041, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 2
  %1043 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1042, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 3
  %1044 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1045 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1044, 1
  %1046 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1045, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 2
  %1047 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1046, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 3
  %1048 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1049 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1048, 1
  %1050 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1049, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 2
  %1051 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1050, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 3
  %1052 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1053 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1054 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1053, 1
  %1055 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1054, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 2
  %1056 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1055, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 3
  %1057 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1058 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1057, 1
  %1059 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1058, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 2
  %1060 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1059, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 3
  %1061 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1062 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %628, ptr %1062, align 8
  %1063 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %633, ptr %1063, align 8
  %1064 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %637, ptr %1064, align 8
  %1065 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %642, ptr %1065, align 8
  %1066 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %647, ptr %1066, align 8
  %1067 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %652, ptr %1067, align 8
  %1068 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %656, ptr %1068, align 8
  %1069 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %661, ptr %1069, align 8
  %1070 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %665, ptr %1070, align 8
  %1071 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %669, ptr %1071, align 8
  %1072 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %780, ptr %1072, align 8
  %1073 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %784, ptr %1073, align 8
  %1074 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %788, ptr %1074, align 8
  %1075 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %793, ptr %1075, align 8
  %1076 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %835, ptr %1076, align 8
  %1077 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %839, ptr %1077, align 8
  %1078 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1035, ptr %1078, align 8
  %1079 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1039, ptr %1079, align 8
  %1080 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1043, ptr %1080, align 8
  %1081 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1047, ptr %1081, align 8
  %1082 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1051, ptr %1082, align 8
  %1083 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1056, ptr %1083, align 8
  %1084 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1061, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1060, ptr %1084, align 8
  %1085 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1061, 0
  %1086 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1085, i64 23, 1
  %1087 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1086, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %551, ptr %624, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1087)
  br label %_llgo_80

_llgo_101:                                        ; preds = %_llgo_99
  %1088 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1027)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1088)
  store ptr %1088, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_99
  %1089 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1090 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1091 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %1093 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1094 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1093, 0
  %1095 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1094, i64 0, 1
  %1096 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1095, i64 0, 2
  %1097 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1098 = getelementptr ptr, ptr %1097, i64 0
  store ptr %1090, ptr %1098, align 8
  %1099 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1097, 0
  %1100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1099, i64 1, 1
  %1101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1100, i64 1, 2
  %1102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1096, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1101, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1102)
  store ptr %1102, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %1103 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1103, 1
  %1105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1104, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 2
  %1106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1105, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 3
  %1107 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1107, 1
  %1109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1108, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 2
  %1110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1109, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 3
  %1111 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1111, 1
  %1113 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1112, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 2
  %1114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1113, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 3
  %1115 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1115, 1
  %1117 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1116, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 2
  %1118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1117, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 3
  %1119 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1119, 1
  %1121 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1120, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 2
  %1122 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1121, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 3
  %1123 = load ptr, ptr @_llgo_uintptr, align 8
  %1124 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %1126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1126, 0
  %1128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1127, i64 0, 1
  %1129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1128, i64 0, 2
  %1130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1131 = getelementptr ptr, ptr %1130, i64 0
  store ptr %1123, ptr %1131, align 8
  %1132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1130, 0
  %1133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1132, i64 1, 1
  %1134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1133, i64 1, 2
  %1135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1129, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1134, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1135)
  store ptr %1135, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %1136 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1137 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1136, 1
  %1138 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1137, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 2
  %1139 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1138, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 3
  %1140 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1141 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1140, 1
  %1142 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1141, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 2
  %1143 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1142, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 3
  %1144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1145 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  store ptr %1144, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1148 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  store ptr %1147, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %1150 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1153 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %1152, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1151)
  %1155 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 3 }, ptr %1154, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1157 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr %1156, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1159 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr %1158, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1161 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr %1160, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %1163 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1162, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1153, ptr %1163, align 8
  %1164 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1162, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1155, ptr %1164, align 8
  %1165 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1162, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1157, ptr %1165, align 8
  %1166 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1162, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1159, ptr %1166, align 8
  %1167 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1162, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1161, ptr %1167, align 8
  %1168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1162, 0
  %1169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1168, i64 5, 1
  %1170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1169, i64 5, 2
  %1171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1170)
  store ptr %1171, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  %1172 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  br i1 %1149, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  %1173 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1174 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1173, 1
  %1175 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1174, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 2
  %1176 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1175, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 3
  %1177 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1178 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1177, 1
  %1179 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1178, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 2
  %1180 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1179, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 3
  %1181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1182 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1181, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1176, ptr %1182, align 8
  %1183 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1181, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1180, ptr %1183, align 8
  %1184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1181, 0
  %1185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1184, i64 2, 1
  %1186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1185, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1147, ptr %1172, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1186)
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %1187 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1189 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %1191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1188)
  store ptr %1191, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1192 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1195 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1193, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %1196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1197 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1196, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1194)
  %1199 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr %1198, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %1201 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1200, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1195, ptr %1201, align 8
  %1202 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1200, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1197, ptr %1202, align 8
  %1203 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1200, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1199, ptr %1203, align 8
  %1204 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1200, 0
  %1205 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1204, i64 3, 1
  %1206 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1205, i64 3, 2
  %1207 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1206)
  store ptr %1207, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  %1208 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  br i1 %1146, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1209 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1210 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1209, 1
  %1211 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1210, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 2
  %1212 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1211, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 3
  %1213 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1214 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1215 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1214, 1
  %1216 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1215, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 2
  %1217 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1216, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 3
  %1218 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1219 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1218, 1
  %1220 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1219, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 2
  %1221 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1220, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 3
  %1222 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1223 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1224 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1223, 1
  %1225 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1224, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 2
  %1226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1225, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 3
  %1227 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1228 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1229 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1228, 1
  %1230 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1229, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 2
  %1231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1230, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 3
  %1232 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1233 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1234 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1233, 1
  %1235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1234, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 2
  %1236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1235, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 3
  %1237 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1238 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1237, 1
  %1239 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1238, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 2
  %1240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1239, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 3
  %1241 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1242 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1242, 1
  %1244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1243, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 2
  %1245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1244, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 3
  %1246 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1247 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1246, 1
  %1248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1247, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 2
  %1249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1248, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 3
  %1250 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1251 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1250, 1
  %1252 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1251, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 2
  %1253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1252, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 3
  %1254 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1255 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1256 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1255, 1
  %1257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1256, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 2
  %1258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1257, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 3
  %1259 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1260 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1259, 1
  %1261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1260, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 2
  %1262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1261, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 3
  %1263 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1264 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1263, 1
  %1265 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1264, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 2
  %1266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1265, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 3
  %1267 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1268 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1269 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1268, 1
  %1270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1269, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 2
  %1271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1270, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 3
  %1272 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1273 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1272, 1
  %1274 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1273, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 2
  %1275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1274, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 3
  %1276 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1277 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1276, 1
  %1278 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1277, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 2
  %1279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1278, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 3
  %1280 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1281 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1282 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1281, 1
  %1283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1282, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 2
  %1284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1283, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 3
  %1285 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1286 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1285, 1
  %1287 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1286, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 2
  %1288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1287, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 3
  %1289 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1290 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1289, 1
  %1291 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1290, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 2
  %1292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1291, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 3
  %1293 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1293, 1
  %1295 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1294, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 2
  %1296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1295, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 3
  %1297 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1297, 1
  %1299 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1298, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 2
  %1300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1299, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 3
  %1301 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1302 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %_llgo_117, label %_llgo_118

_llgo_116:                                        ; preds = %_llgo_128, %_llgo_114
  %1304 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1305 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1306 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1307 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1306, 1
  %1308 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1307, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 2
  %1309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1308, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 3
  %1310 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1311 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1310, 1
  %1312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1311, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 2
  %1313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1312, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 3
  %1314 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1040)
  %1315 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %957, ptr %1315, align 8
  %1316 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %962, ptr %1316, align 8
  %1317 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %966, ptr %1317, align 8
  %1318 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %971, ptr %1318, align 8
  %1319 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %976, ptr %1319, align 8
  %1320 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %980, ptr %1320, align 8
  %1321 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %985, ptr %1321, align 8
  %1322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %989, ptr %1322, align 8
  %1323 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %993, ptr %1323, align 8
  %1324 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %997, ptr %1324, align 8
  %1325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1001, ptr %1325, align 8
  %1326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1005, ptr %1326, align 8
  %1327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1010, ptr %1327, align 8
  %1328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1014, ptr %1328, align 8
  %1329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1018, ptr %1329, align 8
  %1330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1022, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1026, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1106, ptr %1332, align 8
  %1333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1110, ptr %1333, align 8
  %1334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1114, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1118, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1122, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1139, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %1143, ptr %1338, align 8
  %1339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 24
  store %"github.com/goplus/llgo/runtime/abi.Method" %1309, ptr %1339, align 8
  %1340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1314, i64 25
  store %"github.com/goplus/llgo/runtime/abi.Method" %1313, ptr %1340, align 8
  %1341 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1314, 0
  %1342 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1341, i64 26, 1
  %1343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1342, i64 26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %840, ptr %953, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1343)
  br label %_llgo_100

_llgo_117:                                        ; preds = %_llgo_115
  %1344 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1301)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1344)
  store ptr %1344, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_115
  %1345 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1346 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1347 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1348 = icmp eq ptr %1347, null
  br i1 %1348, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %1349 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1350 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1349, 0
  %1351 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1350, i64 0, 1
  %1352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1351, i64 0, 2
  %1353 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1354 = getelementptr ptr, ptr %1353, i64 0
  store ptr %1346, ptr %1354, align 8
  %1355 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1353, 0
  %1356 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1355, i64 1, 1
  %1357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1356, i64 1, 2
  %1358 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1352, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1357, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1358)
  store ptr %1358, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %1359 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1360 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1359, 1
  %1361 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1360, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 2
  %1362 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1361, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 3
  %1363 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1364 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1365 = icmp eq ptr %1364, null
  br i1 %1365, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  store ptr %1363, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1366 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1367 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1366, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1368 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1369 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 6 }, ptr %1368, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1371 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr %1370, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1372 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %1373 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr %1372, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1374 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1375 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1374, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1367, ptr %1375, align 8
  %1376 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1374, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1369, ptr %1376, align 8
  %1377 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1374, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1371, ptr %1377, align 8
  %1378 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1374, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1373, ptr %1378, align 8
  %1379 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1374, 0
  %1380 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1379, i64 4, 1
  %1381 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1380, i64 4, 2
  %1382 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1381)
  store ptr %1382, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1383 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1365, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1384 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1385 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1386 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1385, 1
  %1387 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1386, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 2
  %1388 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1387, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 3
  %1389 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1390 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1391 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1390, 1
  %1392 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1391, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 2
  %1393 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1392, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 3
  %1394 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1395 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1394, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1388, ptr %1395, align 8
  %1396 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1394, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1393, ptr %1396, align 8
  %1397 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1394, 0
  %1398 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1397, i64 2, 1
  %1399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1398, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1363, ptr %1383, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1399)
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1400 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1401 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1402 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1404 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1401)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1404)
  store ptr %1404, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1405 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1406 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1407 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1408 = icmp eq ptr %1407, null
  br i1 %1408, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1409 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1410 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1409, 0
  %1411 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1410, i64 0, 1
  %1412 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1411, i64 0, 2
  %1413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1414 = getelementptr ptr, ptr %1413, i64 0
  store ptr %1406, ptr %1414, align 8
  %1415 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1413, 0
  %1416 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1415, i64 1, 1
  %1417 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1416, i64 1, 2
  %1418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1412, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1417, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1418)
  store ptr %1418, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1419 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1420 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1419, 1
  %1421 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1420, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 2
  %1422 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1421, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 3
  %1423 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1424 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1212, ptr %1424, align 8
  %1425 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1217, ptr %1425, align 8
  %1426 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1221, ptr %1426, align 8
  %1427 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1226, ptr %1427, align 8
  %1428 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1231, ptr %1428, align 8
  %1429 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1236, ptr %1429, align 8
  %1430 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1240, ptr %1430, align 8
  %1431 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1245, ptr %1431, align 8
  %1432 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1249, ptr %1432, align 8
  %1433 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1253, ptr %1433, align 8
  %1434 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1258, ptr %1434, align 8
  %1435 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1262, ptr %1435, align 8
  %1436 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1266, ptr %1436, align 8
  %1437 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1271, ptr %1437, align 8
  %1438 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1275, ptr %1438, align 8
  %1439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1279, ptr %1439, align 8
  %1440 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1284, ptr %1440, align 8
  %1441 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1288, ptr %1441, align 8
  %1442 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1292, ptr %1442, align 8
  %1443 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1296, ptr %1443, align 8
  %1444 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1300, ptr %1444, align 8
  %1445 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1362, ptr %1445, align 8
  %1446 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1423, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1422, ptr %1446, align 8
  %1447 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1423, 0
  %1448 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1447, i64 23, 1
  %1449 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1448, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1144, ptr %1208, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1449)
  br label %_llgo_116

_llgo_129:                                        ; preds = %_llgo_58
  %1450 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1451 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1450, 1
  %1452 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1451, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 2
  %1453 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1452, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 3
  %1454 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1455 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1454, 1
  %1456 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1455, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 2
  %1457 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1456, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 3
  %1458 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1459 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1458, 1
  %1460 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1459, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 2
  %1461 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1460, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 3
  %1462 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %1463 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1462, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1453, ptr %1463, align 8
  %1464 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1462, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1457, ptr %1464, align 8
  %1465 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1462, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1461, ptr %1465, align 8
  %1466 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1462, 0
  %1467 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1466, i64 3, 1
  %1468 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1467, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %403, ptr %484, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1468)
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_58
  %1469 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1470 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1471 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1472 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1471, 1
  %1473 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1472, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 2
  %1474 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1473, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 3
  %1475 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1476 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1475, 1
  %1477 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1476, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 2
  %1478 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1477, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 3
  %1479 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1480 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1481 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1480, 1
  %1482 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1481, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 2
  %1483 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1482, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 3
  %1484 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1485 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1484, 1
  %1486 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1485, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 2
  %1487 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1486, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 3
  %1488 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1489 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1488, 1
  %1490 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1489, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 2
  %1491 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1490, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 3
  %1492 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1493 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1494 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1493, 1
  %1495 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1494, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 2
  %1496 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1495, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 3
  %1497 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1498 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1497, 1
  %1499 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1498, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 2
  %1500 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1499, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 3
  %1501 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1502 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1501, 1
  %1503 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1502, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 2
  %1504 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1503, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 3
  %1505 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1506 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1506, 1
  %1508 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1507, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 2
  %1509 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1508, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 3
  %1510 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1511 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1510, 1
  %1512 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1511, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 2
  %1513 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1512, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 3
  %1514 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1515 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1516 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1515, 1
  %1517 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1516, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 2
  %1518 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1517, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 3
  %1519 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1520 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1519, 1
  %1521 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1520, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 2
  %1522 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1521, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 3
  %1523 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1524 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1523, 1
  %1525 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1524, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 2
  %1526 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1525, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 3
  %1527 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1528 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1527, 1
  %1529 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1528, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 2
  %1530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1529, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 3
  %1531 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1532 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1531, 1
  %1533 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1532, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 2
  %1534 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1533, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 3
  %1535 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1536 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1537 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1536, 1
  %1538 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1537, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 2
  %1539 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1538, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 3
  %1540 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1541 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1540, 1
  %1542 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1541, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 2
  %1543 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1542, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 3
  %1544 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 840)
  %1545 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %215, ptr %1545, align 8
  %1546 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %362, ptr %1546, align 8
  %1547 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %384, ptr %1547, align 8
  %1548 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %402, ptr %1548, align 8
  %1549 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1474, ptr %1549, align 8
  %1550 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1478, ptr %1550, align 8
  %1551 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1483, ptr %1551, align 8
  %1552 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1487, ptr %1552, align 8
  %1553 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1491, ptr %1553, align 8
  %1554 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1496, ptr %1554, align 8
  %1555 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1500, ptr %1555, align 8
  %1556 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1504, ptr %1556, align 8
  %1557 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1509, ptr %1557, align 8
  %1558 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1513, ptr %1558, align 8
  %1559 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1518, ptr %1559, align 8
  %1560 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1522, ptr %1560, align 8
  %1561 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1526, ptr %1561, align 8
  %1562 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1530, ptr %1562, align 8
  %1563 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1534, ptr %1563, align 8
  %1564 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1539, ptr %1564, align 8
  %1565 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1544, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1543, ptr %1565, align 8
  %1566 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1544, 0
  %1567 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1566, i64 21, 1
  %1568 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1567, i64 21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %187, ptr %211, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1568)
  br label %_llgo_38

_llgo_131:                                        ; preds = %_llgo_30
  %1569 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %165)
  store ptr %1569, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_30
  %1570 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1571 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1572 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1573 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1574 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1571)
  %1575 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 1 }, ptr %1574, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1576 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1572)
  %1577 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 1 }, ptr %1576, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1578 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1579 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 1 }, ptr %1578, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1580 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1573)
  %1581 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 1 }, ptr %1580, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1582 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1583 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1582, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1575, ptr %1583, align 8
  %1584 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1582, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1577, ptr %1584, align 8
  %1585 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1582, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1579, ptr %1585, align 8
  %1586 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1582, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1581, ptr %1586, align 8
  %1587 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1582, 0
  %1588 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1587, i64 4, 1
  %1589 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1588, i64 4, 2
  %1590 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1589)
  store ptr %1590, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  %1591 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  br i1 %2, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %1591, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
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
