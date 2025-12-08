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
@"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [2 x i8] c"$f", align 1
@6 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"*_llgo_uint8" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Type" = linkonce global ptr null, align 8
@"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4" = linkonce global ptr null, align 8
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
@"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4" = linkonce global ptr null, align 8
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
  %54 = load ptr, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %59 = getelementptr ptr, ptr %58, i64 0
  store ptr %56, ptr %59, align 8
  %60 = getelementptr ptr, ptr %58, i64 1
  store ptr %57, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %58, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 2, 2
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %66 = getelementptr ptr, ptr %65, i64 0
  store ptr %64, ptr %66, align 8
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %65, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 2
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i1 false)
  %71 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %70, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %73 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %72, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %74, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %71, ptr %75, align 8
  %76 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %74, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %73, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 2, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 2, 2
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79)
  store ptr %80, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %81 = load ptr, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %82 = load ptr, ptr @_llgo_uint8, align 8
  %83 = load ptr, ptr @"*_llgo_uint8", align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %86)
  store ptr %86, ptr @"*_llgo_uint8", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %87 = load ptr, ptr @"*_llgo_uint8", align 8
  %88 = load ptr, ptr @_llgo_string, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %90, ptr @_llgo_string, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %91 = load ptr, ptr @_llgo_string, align 8
  %92 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %94 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %96)
  store ptr %96, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %97 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %101 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %100, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %103 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %102, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %105 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %104, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %106 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %98, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %108 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr %107, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %110 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 11 }, ptr %109, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %112 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %111, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %116 = getelementptr ptr, ptr %115, i64 0
  store ptr %113, ptr %116, align 8
  %117 = getelementptr ptr, ptr %115, i64 1
  store ptr %114, ptr %117, align 8
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %115, 0
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 2, 1
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, i64 2, 2
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %123 = getelementptr ptr, ptr %122, i64 0
  store ptr %121, ptr %123, align 8
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %122, 0
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, i64 1, 1
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, i64 1, 2
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, i1 false)
  %128 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %127, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %130 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %129, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %131, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %128, ptr %132, align 8
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %131, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %130, ptr %133, align 8
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %131, 0
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 2, 1
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i64 2, 2
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136)
  %138 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %137, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %139)
  %141 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr %140, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %143 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr %142, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %99)
  %145 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 10 }, ptr %144, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 616)
  %147 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %101, ptr %147, align 8
  %148 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %103, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %105, ptr %149, align 8
  %150 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %106, ptr %150, align 8
  %151 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %108, ptr %151, align 8
  %152 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %110, ptr %152, align 8
  %153 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %112, ptr %153, align 8
  %154 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %138, ptr %154, align 8
  %155 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %141, ptr %155, align 8
  %156 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 9
  store %"github.com/goplus/llgo/runtime/abi.StructField" %143, ptr %156, align 8
  %157 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %146, i64 10
  store %"github.com/goplus/llgo/runtime/abi.StructField" %145, ptr %157, align 8
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %146, 0
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158, i64 11, 1
  %160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, i64 11, 2
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160)
  store ptr %161, ptr @"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4", align 8
  %162 = load ptr, ptr @"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4", align 8
  br i1 %11, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %163 = load ptr, ptr @_llgo_int, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %_llgo_33, label %_llgo_34

_llgo_32:                                         ; preds = %_llgo_40, %_llgo_30
  %165 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %166 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %168 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %_llgo_135, label %_llgo_136

_llgo_33:                                         ; preds = %_llgo_31
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %170, ptr @_llgo_int, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_31
  %171 = load ptr, ptr @_llgo_int, align 8
  %172 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %174, 0
  %176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175, i64 0, 1
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %176, i64 0, 2
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %180 = getelementptr ptr, ptr %179, i64 0
  store ptr %178, ptr %180, align 8
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %179, 0
  %182 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %181, i64 1, 1
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182, i64 1, 2
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %177, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %184)
  store ptr %184, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %185 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %186 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %185, 1
  %187 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %186, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 2
  %188 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %187, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 3
  %189 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %190 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %189, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %192 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %193 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %197 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %194, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %195)
  %199 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %198, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %196)
  %201 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %200, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %203 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr %202, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %205 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %204, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %197, ptr %205, align 8
  %206 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %204, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %199, ptr %206, align 8
  %207 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %204, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %201, ptr %207, align 8
  %208 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %204, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %203, ptr %208, align 8
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %204, 0
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209, i64 4, 1
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210, i64 4, 2
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %211)
  store ptr %212, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  %213 = load ptr, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  br i1 %191, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %214 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %215 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %214, 1
  %216 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %215, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 2
  %217 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %216, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 3
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %219 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %_llgo_41, label %_llgo_42

_llgo_40:                                         ; preds = %_llgo_134, %_llgo_38
  %221 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %222 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %223 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %224 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %223, 1
  %225 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %224, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 2
  %226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %225, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 3
  %227 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %228 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %227, 1
  %229 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %228, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 2
  %230 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %229, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 3
  %231 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %232 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %233 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %232, 1
  %234 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %233, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 2
  %235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %234, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 3
  %236 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %237 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %238 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %237, 1
  %239 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %238, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 2
  %240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %239, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 3
  %241 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %242 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %242, 1
  %244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %243, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 2
  %245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %244, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 3
  %246 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %247 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %246, 1
  %248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %247, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 2
  %249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %248, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 3
  %250 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %251 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %252 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %251, 1
  %253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %252, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 2
  %254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %253, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 3
  %255 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %256 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %255, 1
  %257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %256, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 2
  %258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %257, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 3
  %259 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %260 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %259, 1
  %261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %260, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 2
  %262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %261, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 3
  %263 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %264 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %265 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %264, 1
  %266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %265, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 2
  %267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %266, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 3
  %268 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %269 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %268, 1
  %270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %269, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 2
  %271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %270, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 3
  %272 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %273 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %272, 1
  %274 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %273, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 2
  %275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %274, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 3
  %276 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %277 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %278 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %277, 1
  %279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %278, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 2
  %280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %279, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 3
  %281 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %282 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %281, 1
  %283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %282, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 2
  %284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %283, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 3
  %285 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %286 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %285, 1
  %287 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %286, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 2
  %288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %287, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 3
  %289 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %290 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %291 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %290, 1
  %292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %291, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 2
  %293 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %292, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 3
  %294 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %295 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %294, 1
  %296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %295, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 2
  %297 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %296, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 3
  %298 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %299 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %298, 1
  %300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %299, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 2
  %301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %300, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 3
  %302 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %303 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %302, 1
  %304 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %303, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 2
  %305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %304, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 3
  %306 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %307 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %306, 1
  %308 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %307, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 2
  %309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %308, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 3
  %310 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %311 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %311, 1
  %313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %312, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 2
  %314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %313, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 3
  %315 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %316 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %315, 1
  %317 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %316, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 2
  %318 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %317, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 3
  %319 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %320 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %188, ptr %320, align 8
  %321 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %226, ptr %321, align 8
  %322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %230, ptr %322, align 8
  %323 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %235, ptr %323, align 8
  %324 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %240, ptr %324, align 8
  %325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %245, ptr %325, align 8
  %326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %249, ptr %326, align 8
  %327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %254, ptr %327, align 8
  %328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %258, ptr %328, align 8
  %329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %262, ptr %329, align 8
  %330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %267, ptr %330, align 8
  %331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %271, ptr %331, align 8
  %332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %275, ptr %332, align 8
  %333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %280, ptr %333, align 8
  %334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %284, ptr %334, align 8
  %335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %288, ptr %335, align 8
  %336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %293, ptr %336, align 8
  %337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %297, ptr %337, align 8
  %338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %301, ptr %338, align 8
  %339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %305, ptr %339, align 8
  %340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %309, ptr %340, align 8
  %341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %314, ptr %341, align 8
  %342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %319, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %318, ptr %342, align 8
  %343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %319, 0
  %344 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %343, i64 23, 1
  %345 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %9, ptr %162, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %345)
  br label %_llgo_32

_llgo_41:                                         ; preds = %_llgo_39
  %346 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %218)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %346)
  store ptr %346, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_39
  %347 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %348 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %349 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %350 = icmp eq ptr %349, null
  br i1 %350, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %351 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %351, 0
  %353 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %352, i64 0, 1
  %354 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %353, i64 0, 2
  %355 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %348)
  %356 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %357 = getelementptr ptr, ptr %356, i64 0
  store ptr %355, ptr %357, align 8
  %358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %356, 0
  %359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %358, i64 1, 1
  %360 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %359, i64 1, 2
  %361 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %354, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %361)
  store ptr %361, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %362 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %363 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %362, 1
  %364 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %363, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 2
  %365 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %364, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", 3
  %366 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %367 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %368 = icmp eq ptr %367, null
  br i1 %368, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  store ptr %366, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %369 = load ptr, ptr @_llgo_int, align 8
  br i1 %368, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %366, ptr %369, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %370 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
  %371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, i64 2, i64 8, i64 0, i64 0)
  %372 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %373 = icmp eq ptr %372, null
  br i1 %373, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %374 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %375 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %374, 0
  %376 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %375, i64 0, 1
  %377 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %376, i64 0, 2
  %378 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %379 = getelementptr ptr, ptr %378, i64 0
  store ptr %371, ptr %379, align 8
  %380 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %378, 0
  %381 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %380, i64 1, 1
  %382 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %381, i64 1, 2
  %383 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %377, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %382, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %383)
  store ptr %383, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %384 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %385 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %384, 1
  %386 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %385, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 2
  %387 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %386, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", 3
  %388 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %389 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %390 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %391 = icmp eq ptr %390, null
  br i1 %391, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %392 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %393 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %392, 0
  %394 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %393, i64 0, 1
  %395 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %394, i64 0, 2
  %396 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %389)
  %397 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %398 = getelementptr ptr, ptr %397, i64 0
  store ptr %396, ptr %398, align 8
  %399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %397, 0
  %400 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %399, i64 1, 1
  %401 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %400, i64 1, 2
  %402 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %395, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %401, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %402)
  store ptr %402, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %403 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %403, 1
  %405 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %404, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 2
  %406 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %405, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 3
  %407 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %408 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %409 = icmp eq ptr %408, null
  br i1 %409, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %407, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %410 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %411 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  store ptr %410, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %413 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %414 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %415 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %416 = icmp eq ptr %415, null
  br i1 %416, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %417 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %414)
  %418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %417)
  store ptr %418, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %419 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %420 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %421 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %422 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %423 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %424 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %425 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %422, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %426 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %423)
  %427 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %426)
  %428 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr %427, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %429 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %424)
  %430 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %429)
  %431 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr %430, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %432 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %433 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %432, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %425, ptr %433, align 8
  %434 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %432, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %428, ptr %434, align 8
  %435 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %432, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %431, ptr %435, align 8
  %436 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %432, 0
  %437 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %436, i64 3, 1
  %438 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %437, i64 3, 2
  %439 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %438)
  store ptr %439, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  %440 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  br i1 %412, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %441 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %442 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %441, 1
  %443 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %442, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 2
  %444 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %443, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 3
  %445 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %446 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %447 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %446, 1
  %448 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %447, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 2
  %449 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %448, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 3
  %450 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %451 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %450, 1
  %452 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %451, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 2
  %453 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %452, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 3
  %454 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %455 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %456 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %455, 1
  %457 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %456, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 2
  %458 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %457, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 3
  %459 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %460 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %461 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %460, 1
  %462 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %461, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 2
  %463 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %462, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 3
  %464 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %465 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %466 = icmp eq ptr %465, null
  br i1 %466, label %_llgo_61, label %_llgo_62

_llgo_60:                                         ; preds = %_llgo_82, %_llgo_58
  %467 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %468 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %469 = load ptr, ptr @_llgo_Pointer, align 8
  %470 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %471 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %472 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %471, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %473 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %470)
  %474 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 5 }, ptr %473, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %475 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %476 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr %475, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %477 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %478 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 4 }, ptr %477, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %479 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %480 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %479, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %472, ptr %480, align 8
  %481 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %479, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %474, ptr %481, align 8
  %482 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %479, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %476, ptr %482, align 8
  %483 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %479, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %478, ptr %483, align 8
  %484 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %479, 0
  %485 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %484, i64 4, 1
  %486 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %485, i64 4, 2
  %487 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %486)
  store ptr %487, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  %488 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  br i1 %409, label %_llgo_133, label %_llgo_134

_llgo_61:                                         ; preds = %_llgo_59
  %489 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %464)
  store ptr %489, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_59
  %490 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %491 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %492 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %493 = icmp eq ptr %492, null
  br i1 %493, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %494 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %495 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %494, 0
  %496 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %495, i64 0, 1
  %497 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %496, i64 0, 2
  %498 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %491)
  %499 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %500 = getelementptr ptr, ptr %499, i64 0
  store ptr %498, ptr %500, align 8
  %501 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %499, 0
  %502 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %501, i64 1, 1
  %503 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %502, i64 1, 2
  %504 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %497, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %503, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %504)
  store ptr %504, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %505 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %505, 1
  %507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %506, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 2
  %508 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %507, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 3
  %509 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %509, 1
  %511 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %510, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 2
  %512 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %511, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 3
  %513 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %514 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %515 = icmp eq ptr %514, null
  br i1 %515, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %516 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %513)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %516)
  store ptr %516, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %517 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %518 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %519 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %520 = icmp eq ptr %519, null
  br i1 %520, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %521 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %522 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %521, 0
  %523 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %522, i64 0, 1
  %524 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %523, i64 0, 2
  %525 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %518)
  %526 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %527 = getelementptr ptr, ptr %526, i64 0
  store ptr %525, ptr %527, align 8
  %528 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %526, 0
  %529 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %528, i64 1, 1
  %530 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %529, i64 1, 2
  %531 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %524, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %530, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %531)
  store ptr %531, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %532 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %533 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %532, 1
  %534 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %533, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 2
  %535 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %534, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 3
  %536 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %537 = icmp eq ptr %536, null
  br i1 %537, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %538 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %539 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %538, 0
  %540 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %539, i64 0, 1
  %541 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %540, i64 0, 2
  %542 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %543 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %544 = getelementptr ptr, ptr %543, i64 0
  store ptr %542, ptr %544, align 8
  %545 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %543, 0
  %546 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %545, i64 1, 1
  %547 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %546, i64 1, 2
  %548 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %541, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %547, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %548)
  store ptr %548, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %549 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %549, 1
  %551 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %550, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 2
  %552 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %551, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 3
  %553 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %554 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %553, 1
  %555 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %554, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 2
  %556 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %555, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 3
  %557 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %558 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %559 = icmp eq ptr %558, null
  br i1 %559, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %557, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %560 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %561 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %562 = icmp eq ptr %561, null
  br i1 %562, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  store ptr %560, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %563 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %564 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %565 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %566 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %565, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %567 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %564)
  %568 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr %567, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %569 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %570 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %569, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %566, ptr %570, align 8
  %571 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %569, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %568, ptr %571, align 8
  %572 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %569, 0
  %573 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %572, i64 2, 1
  %574 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %573, i64 2, 2
  %575 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %574)
  store ptr %575, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  %576 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  br i1 %562, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %577 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %578 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %577, 1
  %579 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %578, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 2
  %580 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %579, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 3
  %581 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %582 = icmp eq ptr %581, null
  br i1 %582, label %_llgo_77, label %_llgo_78

_llgo_76:                                         ; preds = %_llgo_78, %_llgo_74
  %583 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %584 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %585 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %586 = icmp eq ptr %585, null
  br i1 %586, label %_llgo_79, label %_llgo_80

_llgo_77:                                         ; preds = %_llgo_75
  %587 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %588 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %587, 0
  %589 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %588, i64 0, 1
  %590 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %589, i64 0, 2
  %591 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %592 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %593 = getelementptr ptr, ptr %592, i64 0
  store ptr %591, ptr %593, align 8
  %594 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %592, 0
  %595 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %594, i64 1, 1
  %596 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %595, i64 1, 2
  %597 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %590, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %596, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %597)
  store ptr %597, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_75
  %598 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %599 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %598, 1
  %600 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %599, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 2
  %601 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %600, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 3
  %602 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %603 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %602, 1
  %604 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %603, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 2
  %605 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %604, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 3
  %606 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %607 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %606, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %580, ptr %607, align 8
  %608 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %606, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %601, ptr %608, align 8
  %609 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %606, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %605, ptr %609, align 8
  %610 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %606, 0
  %611 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %610, i64 3, 1
  %612 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %611, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %560, ptr %576, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %612)
  br label %_llgo_76

_llgo_79:                                         ; preds = %_llgo_76
  %613 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %584)
  store ptr %613, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_76
  %614 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %615 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %616 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %617 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %615, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %618 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %619 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %618, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %620 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %616)
  %621 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr %620, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %622 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %623 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %622, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %617, ptr %623, align 8
  %624 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %622, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %619, ptr %624, align 8
  %625 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %622, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %621, ptr %625, align 8
  %626 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %622, 0
  %627 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %626, i64 3, 1
  %628 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %627, i64 3, 2
  %629 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %628)
  store ptr %629, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  %630 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  br i1 %559, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %631 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %632 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %631, 1
  %633 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %632, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 2
  %634 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %633, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 3
  %635 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %636 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %637 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %636, 1
  %638 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %637, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 2
  %639 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %638, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 3
  %640 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %641 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %640, 1
  %642 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %641, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 2
  %643 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %642, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 3
  %644 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %645 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %646 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %645, 1
  %647 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %646, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 2
  %648 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %647, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 3
  %649 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %650 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %651 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %650, 1
  %652 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %651, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 2
  %653 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %652, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 3
  %654 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %655 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %656 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %655, 1
  %657 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %656, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 2
  %658 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %657, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 3
  %659 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %660 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %659, 1
  %661 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %660, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 2
  %662 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %661, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 3
  %663 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %664 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %665 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %664, 1
  %666 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %665, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 2
  %667 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %666, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 3
  %668 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %669 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %668, 1
  %670 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %669, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 2
  %671 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %670, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 3
  %672 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %673 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %672, 1
  %674 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %673, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 2
  %675 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %674, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 3
  %676 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %677 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %678 = icmp eq ptr %677, null
  br i1 %678, label %_llgo_83, label %_llgo_84

_llgo_82:                                         ; preds = %_llgo_104, %_llgo_80
  %679 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %680 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %681 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %682 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %681, 1
  %683 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %682, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 2
  %684 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %683, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 3
  %685 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %686 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %685, 1
  %687 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %686, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 2
  %688 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %687, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 3
  %689 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %690 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %689, 1
  %691 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %690, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 2
  %692 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %691, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 3
  %693 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %694 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %695 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %694, 1
  %696 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %695, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 2
  %697 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %696, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 3
  %698 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %699 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %698, 1
  %700 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %699, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 2
  %701 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %700, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 3
  %702 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %703 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %702, 1
  %704 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %703, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 2
  %705 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %704, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 3
  %706 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %707 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %708 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %707, 1
  %709 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %708, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 2
  %710 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %709, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 3
  %711 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %712 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %711, 1
  %713 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %712, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 2
  %714 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %713, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 3
  %715 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %716 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %715, 1
  %717 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %716, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 2
  %718 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %717, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 3
  %719 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %720 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %719, 1
  %721 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %720, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 2
  %722 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %721, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 3
  %723 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %724 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %723, 1
  %725 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %724, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 2
  %726 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %725, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 3
  %727 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %728 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %729 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %728, 1
  %730 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %729, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 2
  %731 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %730, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 3
  %732 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %733 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %732, 1
  %734 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %733, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 2
  %735 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %734, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 3
  %736 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %737 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %736, 1
  %738 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %737, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 2
  %739 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %738, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 3
  %740 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 960)
  %741 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %444, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %449, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %453, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %458, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %463, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %508, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %512, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %535, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %552, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %556, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %684, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %688, ptr %752, align 8
  %753 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %692, ptr %753, align 8
  %754 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %697, ptr %754, align 8
  %755 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %701, ptr %755, align 8
  %756 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %705, ptr %756, align 8
  %757 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %710, ptr %757, align 8
  %758 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %714, ptr %758, align 8
  %759 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %718, ptr %759, align 8
  %760 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %722, ptr %760, align 8
  %761 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %726, ptr %761, align 8
  %762 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %731, ptr %762, align 8
  %763 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %735, ptr %763, align 8
  %764 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %740, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %739, ptr %764, align 8
  %765 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %740, 0
  %766 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %765, i64 24, 1
  %767 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %766, i64 24, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %410, ptr %440, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %767)
  br label %_llgo_60

_llgo_83:                                         ; preds = %_llgo_81
  %768 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %676)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %768)
  store ptr %768, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_81
  %769 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %770 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %771 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %772 = icmp eq ptr %771, null
  br i1 %772, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %773 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %774 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %773, 0
  %775 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %774, i64 0, 1
  %776 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %775, i64 0, 2
  %777 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %770)
  %778 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %779 = getelementptr ptr, ptr %778, i64 0
  store ptr %777, ptr %779, align 8
  %780 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %778, 0
  %781 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %780, i64 1, 1
  %782 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %781, i64 1, 2
  %783 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %776, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %782, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %783)
  store ptr %783, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %784 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %785 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %784, 1
  %786 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %785, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 2
  %787 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %786, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 3
  %788 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %789 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %788, 1
  %790 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %789, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 2
  %791 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %790, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 3
  %792 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %793 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %792, 1
  %794 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %793, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 2
  %795 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %794, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 3
  %796 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %797 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %798 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %797, 1
  %799 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %798, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 2
  %800 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %799, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 3
  %801 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %802 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %803 = icmp eq ptr %802, null
  br i1 %803, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  store ptr %801, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %804 = load ptr, ptr @_llgo_uint, align 8
  %805 = icmp eq ptr %804, null
  br i1 %805, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %806 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %806, ptr @_llgo_uint, align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %807 = load ptr, ptr @_llgo_uint, align 8
  br i1 %803, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %808 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %809 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %808, 1
  %810 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %809, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %811 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %810, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 3
  %812 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %808, 1
  %813 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %812, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %814 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %813, ptr @"github.com/goplus/llgo/runtime/abi.Kind.String", 3
  %815 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %816 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %815, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %814, ptr %816, align 8
  %817 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %815, 0
  %818 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %817, i64 1, 1
  %819 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %818, i64 1, 2
  %820 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %821 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %820, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %811, ptr %821, align 8
  %822 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %820, 0
  %823 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %822, i64 1, 1
  %824 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %823, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %801, ptr %807, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %819, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %824)
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %825 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %826 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %827 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %828 = icmp eq ptr %827, null
  br i1 %828, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %829 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %830 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %829, 0
  %831 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %830, i64 0, 1
  %832 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %831, i64 0, 2
  %833 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %834 = getelementptr ptr, ptr %833, i64 0
  store ptr %826, ptr %834, align 8
  %835 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %833, 0
  %836 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %835, i64 1, 1
  %837 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %836, i64 1, 2
  %838 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %832, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %837, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %838)
  store ptr %838, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %839 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %840 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %839, 1
  %841 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %840, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 2
  %842 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %841, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 3
  %843 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %844 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %843, 1
  %845 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %844, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 2
  %846 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %845, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 3
  %847 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %848 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %849 = icmp eq ptr %848, null
  br i1 %849, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  store ptr %847, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %850 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %851 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %852 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %853 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %854 = icmp eq ptr %853, null
  br i1 %854, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %855 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %856 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %857 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %858 = getelementptr ptr, ptr %857, i64 0
  store ptr %855, ptr %858, align 8
  %859 = getelementptr ptr, ptr %857, i64 1
  store ptr %856, ptr %859, align 8
  %860 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %857, 0
  %861 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %860, i64 2, 1
  %862 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %861, i64 2, 2
  %863 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %864 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %865 = getelementptr ptr, ptr %864, i64 0
  store ptr %863, ptr %865, align 8
  %866 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %864, 0
  %867 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %866, i64 1, 1
  %868 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %867, i64 1, 2
  %869 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %862, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %868, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %869)
  store ptr %869, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %870 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %871 = load ptr, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %872 = icmp eq ptr %871, null
  br i1 %872, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %873 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %874 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %875 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %876 = getelementptr ptr, ptr %875, i64 0
  store ptr %873, ptr %876, align 8
  %877 = getelementptr ptr, ptr %875, i64 1
  store ptr %874, ptr %877, align 8
  %878 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %875, 0
  %879 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %878, i64 2, 1
  %880 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %879, i64 2, 2
  %881 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %882 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %883 = getelementptr ptr, ptr %882, i64 0
  store ptr %881, ptr %883, align 8
  %884 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %882, 0
  %885 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %884, i64 1, 1
  %886 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %885, i64 1, 2
  %887 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %880, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %886, i1 false)
  %888 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %887, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %889 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %890 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %889, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %891 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %892 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %891, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %888, ptr %892, align 8
  %893 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %891, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %890, ptr %893, align 8
  %894 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %891, 0
  %895 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %894, i64 2, 1
  %896 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %895, i64 2, 2
  %897 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %896)
  store ptr %897, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %898 = load ptr, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %899 = load ptr, ptr @_llgo_uint16, align 8
  %900 = icmp eq ptr %899, null
  br i1 %900, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %901 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %901, ptr @_llgo_uint16, align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %902 = load ptr, ptr @_llgo_uint16, align 8
  %903 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %904 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %905 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %906 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %907 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %903, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %908 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %904)
  %909 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr %908, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %910 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %905)
  %911 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %910, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %912 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %906)
  %913 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr %912, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %914 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %915 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %916 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %917 = getelementptr ptr, ptr %916, i64 0
  store ptr %914, ptr %917, align 8
  %918 = getelementptr ptr, ptr %916, i64 1
  store ptr %915, ptr %918, align 8
  %919 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %916, 0
  %920 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %919, i64 2, 1
  %921 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %920, i64 2, 2
  %922 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %923 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %924 = getelementptr ptr, ptr %923, i64 0
  store ptr %922, ptr %924, align 8
  %925 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %923, 0
  %926 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %925, i64 1, 1
  %927 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %926, i64 1, 2
  %928 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %921, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %927, i1 false)
  %929 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %928, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %930 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %931 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %930, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %932 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %933 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %932, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %929, ptr %933, align 8
  %934 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %932, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %931, ptr %934, align 8
  %935 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %932, 0
  %936 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %935, i64 2, 1
  %937 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %936, i64 2, 2
  %938 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %937)
  %939 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr %938, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %940 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %941 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr %940, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %942 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %943 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr %942, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %944 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %945 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 10 }, ptr %944, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %946 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %947 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr %946, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %948 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 504)
  %949 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %907, ptr %949, align 8
  %950 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %909, ptr %950, align 8
  %951 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %911, ptr %951, align 8
  %952 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %913, ptr %952, align 8
  %953 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %939, ptr %953, align 8
  %954 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %941, ptr %954, align 8
  %955 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %943, ptr %955, align 8
  %956 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %945, ptr %956, align 8
  %957 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %948, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %947, ptr %957, align 8
  %958 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %948, 0
  %959 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %958, i64 9, 1
  %960 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %959, i64 9, 2
  %961 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %960)
  store ptr %961, ptr @"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4", align 8
  %962 = load ptr, ptr @"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4", align 8
  br i1 %849, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %963 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %964 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %963, 1
  %965 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %964, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 2
  %966 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %965, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 3
  %967 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %968 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %969 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %968, 1
  %970 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %969, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 2
  %971 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %970, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 3
  %972 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %973 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %972, 1
  %974 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %973, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 2
  %975 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %974, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 3
  %976 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %977 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %978 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %977, 1
  %979 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %978, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 2
  %980 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %979, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 3
  %981 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %982 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %983 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %982, 1
  %984 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %983, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 2
  %985 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %984, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 3
  %986 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %987 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %986, 1
  %988 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %987, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 2
  %989 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %988, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 3
  %990 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %991 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %992 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %991, 1
  %993 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %992, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 2
  %994 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %993, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 3
  %995 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %996 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %995, 1
  %997 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %996, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 2
  %998 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %997, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 3
  %999 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1000 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %999, 1
  %1001 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1000, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 2
  %1002 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1001, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 3
  %1003 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1004 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1003, 1
  %1005 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1004, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 2
  %1006 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1005, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 3
  %1007 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1008 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1007, 1
  %1009 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1008, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 2
  %1010 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1009, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 3
  %1011 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1012 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1011, 1
  %1013 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1012, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 2
  %1014 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1013, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 3
  %1015 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1016 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1017 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1016, 1
  %1018 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1017, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 2
  %1019 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1018, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 3
  %1020 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1021 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1020, 1
  %1022 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1021, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 2
  %1023 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1022, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 3
  %1024 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1025 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1024, 1
  %1026 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1025, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 2
  %1027 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1026, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 3
  %1028 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1029 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1028, 1
  %1030 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1029, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 2
  %1031 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1030, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 3
  %1032 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1033 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1032, 1
  %1034 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1033, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 2
  %1035 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1034, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 3
  %1036 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1037 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1038 = icmp eq ptr %1037, null
  br i1 %1038, label %_llgo_105, label %_llgo_106

_llgo_104:                                        ; preds = %_llgo_120, %_llgo_102
  %1039 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1040 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1041 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1042 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1041, 1
  %1043 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1042, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 2
  %1044 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1043, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 3
  %1045 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1046 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1045, 1
  %1047 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1046, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 2
  %1048 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1047, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 3
  %1049 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1050 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1049, 1
  %1051 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1050, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 2
  %1052 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1051, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 3
  %1053 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1054 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1053, 1
  %1055 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1054, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 2
  %1056 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1055, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 3
  %1057 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1058 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1057, 1
  %1059 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1058, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 2
  %1060 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1059, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 3
  %1061 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1062 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1063 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1062, 1
  %1064 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1063, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 2
  %1065 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1064, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 3
  %1066 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1067 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1066, 1
  %1068 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1067, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 2
  %1069 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1068, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 3
  %1070 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1071 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %634, ptr %1071, align 8
  %1072 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %639, ptr %1072, align 8
  %1073 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %643, ptr %1073, align 8
  %1074 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %648, ptr %1074, align 8
  %1075 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %653, ptr %1075, align 8
  %1076 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %658, ptr %1076, align 8
  %1077 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %662, ptr %1077, align 8
  %1078 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %667, ptr %1078, align 8
  %1079 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %671, ptr %1079, align 8
  %1080 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %675, ptr %1080, align 8
  %1081 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %787, ptr %1081, align 8
  %1082 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %791, ptr %1082, align 8
  %1083 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %795, ptr %1083, align 8
  %1084 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %800, ptr %1084, align 8
  %1085 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %842, ptr %1085, align 8
  %1086 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %846, ptr %1086, align 8
  %1087 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1044, ptr %1087, align 8
  %1088 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1048, ptr %1088, align 8
  %1089 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1052, ptr %1089, align 8
  %1090 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1056, ptr %1090, align 8
  %1091 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1060, ptr %1091, align 8
  %1092 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1065, ptr %1092, align 8
  %1093 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1070, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1069, ptr %1093, align 8
  %1094 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1070, 0
  %1095 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1094, i64 23, 1
  %1096 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1095, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %557, ptr %630, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1096)
  br label %_llgo_82

_llgo_105:                                        ; preds = %_llgo_103
  %1097 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1036)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1097)
  store ptr %1097, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_103
  %1098 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1099 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1100 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %1102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1102, 0
  %1104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1103, i64 0, 1
  %1105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1104, i64 0, 2
  %1106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1099)
  %1107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1108 = getelementptr ptr, ptr %1107, i64 0
  store ptr %1106, ptr %1108, align 8
  %1109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1107, 0
  %1110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1109, i64 1, 1
  %1111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1110, i64 1, 2
  %1112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1105, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1111, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1112)
  store ptr %1112, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1113 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1113, 1
  %1115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1114, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 2
  %1116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1115, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 3
  %1117 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1117, 1
  %1119 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1118, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 2
  %1120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1119, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 3
  %1121 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1122 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1121, 1
  %1123 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1122, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 2
  %1124 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1123, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 3
  %1125 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1126 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1125, 1
  %1127 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1126, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 2
  %1128 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1127, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 3
  %1129 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1130 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1129, 1
  %1131 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1130, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 2
  %1132 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1131, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 3
  %1133 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %1135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1135, 0
  %1137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1136, i64 0, 1
  %1138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1137, i64 0, 2
  %1139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1141 = getelementptr ptr, ptr %1140, i64 0
  store ptr %1139, ptr %1141, align 8
  %1142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1140, 0
  %1143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1142, i64 1, 1
  %1144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1143, i64 1, 2
  %1145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1138, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1144, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1145)
  store ptr %1145, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %1146 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1147 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1146, 1
  %1148 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1147, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 2
  %1149 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1148, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 3
  %1150 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1151 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1150, 1
  %1152 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1151, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 2
  %1153 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1152, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 3
  %1154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1155 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  store ptr %1154, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %1157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1158 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  store ptr %1157, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1160 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1163 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %1162, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1161)
  %1165 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 3 }, ptr %1164, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1167 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr %1166, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1169 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr %1168, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1171 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr %1170, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1172 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %1173 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1172, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1163, ptr %1173, align 8
  %1174 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1172, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1165, ptr %1174, align 8
  %1175 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1172, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1167, ptr %1175, align 8
  %1176 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1172, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1169, ptr %1176, align 8
  %1177 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1172, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1171, ptr %1177, align 8
  %1178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1172, 0
  %1179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1178, i64 5, 1
  %1180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1179, i64 5, 2
  %1181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1180)
  store ptr %1181, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  %1182 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  br i1 %1159, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1183 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1184 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1183, 1
  %1185 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1184, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 2
  %1186 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1185, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 3
  %1187 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1188 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1187, 1
  %1189 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1188, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 2
  %1190 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1189, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 3
  %1191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1192 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1191, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1186, ptr %1192, align 8
  %1193 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1191, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1190, ptr %1193, align 8
  %1194 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1191, 0
  %1195 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1194, i64 2, 1
  %1196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1195, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1157, ptr %1182, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1196)
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_114
  %1197 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1199 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  %1201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1198)
  store ptr %1201, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_116
  %1202 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1203 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1205 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1203, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %1206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1207 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1206, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1204)
  %1209 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr %1208, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %1211 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1210, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1205, ptr %1211, align 8
  %1212 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1210, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1207, ptr %1212, align 8
  %1213 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1210, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1209, ptr %1213, align 8
  %1214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1210, 0
  %1215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1214, i64 3, 1
  %1216 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1215, i64 3, 2
  %1217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1216)
  store ptr %1217, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  %1218 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  br i1 %1156, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %1219 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1220 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1219, 1
  %1221 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1220, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 2
  %1222 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1221, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 3
  %1223 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1224 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1225 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1224, 1
  %1226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1225, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 2
  %1227 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1226, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 3
  %1228 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1229 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1228, 1
  %1230 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1229, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 2
  %1231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1230, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 3
  %1232 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1233 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1234 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1233, 1
  %1235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1234, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 2
  %1236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1235, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 3
  %1237 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1238 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1239 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1238, 1
  %1240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1239, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 2
  %1241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1240, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 3
  %1242 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1243 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1243, 1
  %1245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1244, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 2
  %1246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1245, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 3
  %1247 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1247, 1
  %1249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1248, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 2
  %1250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1249, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 3
  %1251 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1252 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1252, 1
  %1254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1253, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 2
  %1255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1254, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 3
  %1256 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1256, 1
  %1258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1257, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 2
  %1259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1258, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 3
  %1260 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1260, 1
  %1262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1261, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 2
  %1263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1262, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 3
  %1264 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1265 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1265, 1
  %1267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1266, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 2
  %1268 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1267, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 3
  %1269 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1269, 1
  %1271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1270, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 2
  %1272 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1271, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 3
  %1273 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1274 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1273, 1
  %1275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1274, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 2
  %1276 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1275, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 3
  %1277 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1278 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1278, 1
  %1280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1279, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 2
  %1281 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1280, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 3
  %1282 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1282, 1
  %1284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1283, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 2
  %1285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1284, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 3
  %1286 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1287 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1286, 1
  %1288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1287, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 2
  %1289 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1288, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 3
  %1290 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1291 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1291, 1
  %1293 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1292, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 2
  %1294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1293, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 3
  %1295 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1295, 1
  %1297 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1296, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 2
  %1298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1297, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 3
  %1299 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1299, 1
  %1301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1300, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 2
  %1302 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1301, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 3
  %1303 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1304 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1303, 1
  %1305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1304, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 2
  %1306 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1305, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 3
  %1307 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1308 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1307, 1
  %1309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1308, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 2
  %1310 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1309, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 3
  %1311 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1312 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1313 = icmp eq ptr %1312, null
  br i1 %1313, label %_llgo_121, label %_llgo_122

_llgo_120:                                        ; preds = %_llgo_132, %_llgo_118
  %1314 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1315 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1316 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1317 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1316, 1
  %1318 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1317, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 2
  %1319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1318, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 3
  %1320 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1321 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1320, 1
  %1322 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1321, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 2
  %1323 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1322, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 3
  %1324 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1040)
  %1325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %966, ptr %1325, align 8
  %1326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %971, ptr %1326, align 8
  %1327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %975, ptr %1327, align 8
  %1328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %980, ptr %1328, align 8
  %1329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %985, ptr %1329, align 8
  %1330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %989, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %994, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %998, ptr %1332, align 8
  %1333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1002, ptr %1333, align 8
  %1334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1006, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1010, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1014, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1019, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1023, ptr %1338, align 8
  %1339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1027, ptr %1339, align 8
  %1340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1031, ptr %1340, align 8
  %1341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1035, ptr %1341, align 8
  %1342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1116, ptr %1342, align 8
  %1343 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1120, ptr %1343, align 8
  %1344 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1124, ptr %1344, align 8
  %1345 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1128, ptr %1345, align 8
  %1346 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1132, ptr %1346, align 8
  %1347 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1149, ptr %1347, align 8
  %1348 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %1153, ptr %1348, align 8
  %1349 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 24
  store %"github.com/goplus/llgo/runtime/abi.Method" %1319, ptr %1349, align 8
  %1350 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1324, i64 25
  store %"github.com/goplus/llgo/runtime/abi.Method" %1323, ptr %1350, align 8
  %1351 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1324, 0
  %1352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1351, i64 26, 1
  %1353 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1352, i64 26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %847, ptr %962, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1353)
  br label %_llgo_104

_llgo_121:                                        ; preds = %_llgo_119
  %1354 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1311)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1354)
  store ptr %1354, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_119
  %1355 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1356 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1357 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1358 = icmp eq ptr %1357, null
  br i1 %1358, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1359 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1360 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1359, 0
  %1361 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1360, i64 0, 1
  %1362 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1361, i64 0, 2
  %1363 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1356)
  %1364 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1365 = getelementptr ptr, ptr %1364, i64 0
  store ptr %1363, ptr %1365, align 8
  %1366 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1364, 0
  %1367 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1366, i64 1, 1
  %1368 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1367, i64 1, 2
  %1369 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1362, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1368, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1369)
  store ptr %1369, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1370 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1371 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1370, 1
  %1372 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1371, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 2
  %1373 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1372, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 3
  %1374 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1375 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1376 = icmp eq ptr %1375, null
  br i1 %1376, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  store ptr %1374, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1377 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1378 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1377, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1379 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1380 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 6 }, ptr %1379, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1381 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1382 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr %1381, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1383 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %1384 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr %1383, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1385 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1386 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1385, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1378, ptr %1386, align 8
  %1387 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1385, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1380, ptr %1387, align 8
  %1388 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1385, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1382, ptr %1388, align 8
  %1389 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1385, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1384, ptr %1389, align 8
  %1390 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1385, 0
  %1391 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1390, i64 4, 1
  %1392 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1391, i64 4, 2
  %1393 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1392)
  store ptr %1393, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1394 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1376, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1395 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1396 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1397 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1396, 1
  %1398 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1397, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 2
  %1399 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1398, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 3
  %1400 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1401 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1402 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1401, 1
  %1403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1402, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 2
  %1404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1403, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 3
  %1405 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1406 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1405, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1399, ptr %1406, align 8
  %1407 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1405, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1404, ptr %1407, align 8
  %1408 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1405, 0
  %1409 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1408, i64 2, 1
  %1410 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1409, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1374, ptr %1394, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1410)
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1411 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1412 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1413 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  %1415 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1412)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1415)
  store ptr %1415, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_128
  %1416 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1417 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1418 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %_llgo_131, label %_llgo_132

_llgo_131:                                        ; preds = %_llgo_130
  %1420 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1421 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1420, 0
  %1422 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1421, i64 0, 1
  %1423 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1422, i64 0, 2
  %1424 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1417)
  %1425 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1426 = getelementptr ptr, ptr %1425, i64 0
  store ptr %1424, ptr %1426, align 8
  %1427 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1425, 0
  %1428 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1427, i64 1, 1
  %1429 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1428, i64 1, 2
  %1430 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1423, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1429, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1430)
  store ptr %1430, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_130
  %1431 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1432 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1431, 1
  %1433 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1432, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 2
  %1434 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1433, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 3
  %1435 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1436 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1222, ptr %1436, align 8
  %1437 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1227, ptr %1437, align 8
  %1438 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1231, ptr %1438, align 8
  %1439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1236, ptr %1439, align 8
  %1440 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1241, ptr %1440, align 8
  %1441 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1246, ptr %1441, align 8
  %1442 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1250, ptr %1442, align 8
  %1443 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1255, ptr %1443, align 8
  %1444 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1259, ptr %1444, align 8
  %1445 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1263, ptr %1445, align 8
  %1446 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1268, ptr %1446, align 8
  %1447 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1272, ptr %1447, align 8
  %1448 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1276, ptr %1448, align 8
  %1449 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1281, ptr %1449, align 8
  %1450 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1285, ptr %1450, align 8
  %1451 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1289, ptr %1451, align 8
  %1452 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1294, ptr %1452, align 8
  %1453 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1298, ptr %1453, align 8
  %1454 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1302, ptr %1454, align 8
  %1455 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1306, ptr %1455, align 8
  %1456 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1310, ptr %1456, align 8
  %1457 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1373, ptr %1457, align 8
  %1458 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1435, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1434, ptr %1458, align 8
  %1459 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1435, 0
  %1460 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1459, i64 23, 1
  %1461 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1460, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1154, ptr %1218, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1461)
  br label %_llgo_120

_llgo_133:                                        ; preds = %_llgo_60
  %1462 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1463 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1462, 1
  %1464 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1463, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 2
  %1465 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1464, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 3
  %1466 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1467 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1466, 1
  %1468 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1467, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 2
  %1469 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1468, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 3
  %1470 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1471 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1470, 1
  %1472 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1471, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 2
  %1473 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1472, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 3
  %1474 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %1475 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1474, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1465, ptr %1475, align 8
  %1476 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1474, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1469, ptr %1476, align 8
  %1477 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1474, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1473, ptr %1477, align 8
  %1478 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1474, 0
  %1479 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1478, i64 3, 1
  %1480 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1479, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %407, ptr %488, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1480)
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_60
  %1481 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1482 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1483 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1484 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1483, 1
  %1485 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1484, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 2
  %1486 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1485, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 3
  %1487 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1488 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1487, 1
  %1489 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1488, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 2
  %1490 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1489, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 3
  %1491 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1492 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1493 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1492, 1
  %1494 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1493, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 2
  %1495 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1494, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 3
  %1496 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1497 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1496, 1
  %1498 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1497, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 2
  %1499 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1498, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 3
  %1500 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1501 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1500, 1
  %1502 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1501, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 2
  %1503 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1502, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 3
  %1504 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1505 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1505, 1
  %1507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1506, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 2
  %1508 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1507, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 3
  %1509 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1509, 1
  %1511 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1510, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 2
  %1512 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1511, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 3
  %1513 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1514 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1513, 1
  %1515 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1514, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 2
  %1516 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1515, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 3
  %1517 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1518 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1519 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1518, 1
  %1520 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1519, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 2
  %1521 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1520, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 3
  %1522 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1523 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1522, 1
  %1524 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1523, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 2
  %1525 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1524, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 3
  %1526 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1527 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1528 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1527, 1
  %1529 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1528, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 2
  %1530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1529, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 3
  %1531 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1532 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1531, 1
  %1533 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1532, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 2
  %1534 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1533, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 3
  %1535 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1536 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1535, 1
  %1537 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1536, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 2
  %1538 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1537, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 3
  %1539 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1540 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1539, 1
  %1541 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1540, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 2
  %1542 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1541, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 3
  %1543 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1544 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1543, 1
  %1545 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1544, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 2
  %1546 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1545, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 3
  %1547 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1548 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1549 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1548, 1
  %1550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1549, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 2
  %1551 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1550, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 3
  %1552 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1553 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1552, 1
  %1554 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1553, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 2
  %1555 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1554, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 3
  %1556 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 840)
  %1557 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %217, ptr %1557, align 8
  %1558 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %365, ptr %1558, align 8
  %1559 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %387, ptr %1559, align 8
  %1560 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %406, ptr %1560, align 8
  %1561 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1486, ptr %1561, align 8
  %1562 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1490, ptr %1562, align 8
  %1563 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1495, ptr %1563, align 8
  %1564 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1499, ptr %1564, align 8
  %1565 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1503, ptr %1565, align 8
  %1566 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1508, ptr %1566, align 8
  %1567 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1512, ptr %1567, align 8
  %1568 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1516, ptr %1568, align 8
  %1569 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1521, ptr %1569, align 8
  %1570 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1525, ptr %1570, align 8
  %1571 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1530, ptr %1571, align 8
  %1572 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1534, ptr %1572, align 8
  %1573 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1538, ptr %1573, align 8
  %1574 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1542, ptr %1574, align 8
  %1575 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1546, ptr %1575, align 8
  %1576 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1551, ptr %1576, align 8
  %1577 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1556, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1555, ptr %1577, align 8
  %1578 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1556, 0
  %1579 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1578, i64 21, 1
  %1580 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1579, i64 21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %189, ptr %213, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1580)
  br label %_llgo_40

_llgo_135:                                        ; preds = %_llgo_32
  %1581 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %167)
  store ptr %1581, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_32
  %1582 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", align 8
  %1583 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1584 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1585 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1586 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1583)
  %1587 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 1 }, ptr %1586, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1588 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1584)
  %1589 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 1 }, ptr %1588, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1590 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1591 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 1 }, ptr %1590, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1592 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1585)
  %1593 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 1 }, ptr %1592, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1594 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1595 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1594, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1587, ptr %1595, align 8
  %1596 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1594, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1589, ptr %1596, align 8
  %1597 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1594, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1591, ptr %1597, align 8
  %1598 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1594, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1593, ptr %1598, align 8
  %1599 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1594, 0
  %1600 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1599, i64 4, 1
  %1601 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1600, i64 4, 2
  %1602 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1601)
  store ptr %1602, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  %1603 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE", align 8
  br i1 %2, label %_llgo_137, label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_136
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %1603, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
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
