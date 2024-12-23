; ModuleID = 'main'
source_filename = "main"

%main.T = type { ptr, ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%main.eface = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.T = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [1 x i8] c"T", align 1
@"*_llgo_main.T" = linkonce global ptr null, align 8
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
@"main.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [2 x i8] c"$f", align 1
@6 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"*_llgo_byte" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Type" = linkonce global ptr null, align 8
@"main.struct$-sQ1S_TW5WNLDageftHP017iwpTTWpvZTx7xZ5oHpvI" = linkonce global ptr null, align 8
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
@"main.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@"main.struct$fcvaNpt6kbBgWOAYzHzrrsaKXunEtzMD4RdymMNJqTs" = linkonce global ptr null, align 8
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
@"[]_llgo_main.T" = linkonce global ptr null, align 8
@"main.struct$0I14CsQEZ9iadCku0_1cAZfCJoBbFdmFH4XChi4XRoo" = linkonce global ptr null, align 8
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
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @_llgo_main.T, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %main.T zeroinitializer, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  %6 = call ptr @main.toEface(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  %7 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 72)
  store %"github.com/goplus/llgo/runtime/abi.Type" zeroinitializer, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  %11 = call ptr @main.toEface(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %24, i8 0, i64 56, i1 false)
  %25 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
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
  %37 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %46 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %24, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %47)
  %49 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8
  %51 = icmp ne ptr %48, %50
  br i1 %51, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %52 = load ptr, ptr @_llgo_string, align 8
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 18 }, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %54, ptr %53, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %56 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %56, i8 0, i64 56, i1 false)
  %57 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %58)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %59, i32 0, i32 2
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %60, align 8
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 0
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  %64 = icmp sge i64 1, %63
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %62, i64 1
  %66 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %65, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %66, ptr %56, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %56, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %70, i32 0, i32 10
  %72 = load ptr, ptr %71, align 8
  %73 = icmp ne ptr %68, %72
  br i1 %73, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %74 = load ptr, ptr @_llgo_string, align 8
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 13 }, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %75, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %56, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8
  %80 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %79)
  %81 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %82 = load ptr, ptr %81, align 8
  %83 = icmp ne ptr %80, %82
  br i1 %83, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %84 = load ptr, ptr @_llgo_string, align 8
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 18 }, ptr %85, align 8
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %84, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %85, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %87)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %88 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %88, i8 0, i64 56, i1 false)
  %89 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %90 = load ptr, ptr %89, align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %90)
  %92 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %91, i32 0, i32 2
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %92, align 8
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, 0
  %95 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, 1
  %96 = icmp sge i64 2, %95
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %96)
  %97 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %94, i64 2
  %98 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %97, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %98, ptr %88, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %88, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %main.eface, ptr %11, i32 0, i32 0
  %102 = load ptr, ptr %101, align 8
  %103 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %102)
  %104 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %103, i32 0, i32 2
  %105 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %104, align 8
  %106 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, 0
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, 1
  %108 = icmp sge i64 0, %107
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %108)
  %109 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %106, i64 0
  %110 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = icmp ne ptr %100, %111
  br i1 %112, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %113 = load ptr, ptr @_llgo_string, align 8
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 13 }, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %113, 0
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %115, ptr %114, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %116)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %117 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %117, i8 0, i64 56, i1 false)
  %118 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %119 = load ptr, ptr %118, align 8
  %120 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %119)
  %121 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %120, i32 0, i32 2
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %121, align 8
  %123 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, 0
  %124 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, 1
  %125 = icmp sge i64 3, %124
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %125)
  %126 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %123, i64 3
  %127 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %126, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %127, ptr %117, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %129)
  %131 = getelementptr inbounds %main.eface, ptr %6, i32 0, i32 0
  %132 = load ptr, ptr %131, align 8
  %133 = icmp ne ptr %130, %132
  br i1 %133, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %134 = load ptr, ptr @_llgo_string, align 8
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 13 }, ptr %135, align 8
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %134, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %136, ptr %135, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %137)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  ret i32 0
}

define ptr @main.toEface(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  ret ptr %1
}

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1 = load ptr, ptr @_llgo_main.T, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_main.T, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %5 = load ptr, ptr @"*_llgo_main.T", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %7)
  store ptr %7, ptr @"*_llgo_main.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @"*_llgo_main.T", align 8
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
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77)
  store ptr %78, ptr @"main.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %79 = load ptr, ptr @"main.struct$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", align 8
  %80 = load ptr, ptr @_llgo_byte, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %82, ptr @_llgo_byte, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %83 = load ptr, ptr @_llgo_byte, align 8
  %84 = load ptr, ptr @"*_llgo_byte", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %87)
  store ptr %87, ptr @"*_llgo_byte", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %88 = load ptr, ptr @"*_llgo_byte", align 8
  %89 = load ptr, ptr @_llgo_string, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %91, ptr @_llgo_string, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %92 = load ptr, ptr @_llgo_string, align 8
  %93 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %95 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %97)
  store ptr %97, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %98 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, i64 8, i64 1, i64 0, i64 0)
  %100 = load ptr, ptr @_llgo_Pointer, align 8
  %101 = load ptr, ptr @_llgo_Pointer, align 8
  %102 = load ptr, ptr @_llgo_bool, align 8
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 72, i64 0, i64 23)
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %105 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %104, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %107 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr %106, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %109 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr %108, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %110 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %99, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %112 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr %111, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %114 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 11 }, ptr %113, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %116 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %115, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %118 = getelementptr ptr, ptr %117, i64 0
  store ptr %100, ptr %118, align 8
  %119 = getelementptr ptr, ptr %117, i64 1
  store ptr %101, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %117, 0
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 2, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 2, 2
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %124 = getelementptr ptr, ptr %123, i64 0
  store ptr %102, ptr %124, align 8
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %123, 0
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, i64 1, 1
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, i64 1, 2
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, i1 false)
  %129 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %128, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %131 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %130, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %132, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %129, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %132, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %131, ptr %134, align 8
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %132, 0
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i64 2, 1
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136, i64 2, 2
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137)
  %139 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %138, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %140)
  %142 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr %141, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %144 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 4 }, ptr %143, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %103)
  %146 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 10 }, ptr %145, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 616)
  %148 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %105, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %107, ptr %149, align 8
  %150 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %109, ptr %150, align 8
  %151 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %110, ptr %151, align 8
  %152 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %112, ptr %152, align 8
  %153 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %114, ptr %153, align 8
  %154 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %116, ptr %154, align 8
  %155 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %139, ptr %155, align 8
  %156 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %142, ptr %156, align 8
  %157 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 9
  store %"github.com/goplus/llgo/runtime/abi.StructField" %144, ptr %157, align 8
  %158 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %147, i64 10
  store %"github.com/goplus/llgo/runtime/abi.StructField" %146, ptr %158, align 8
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %147, 0
  %160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, i64 11, 1
  %161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160, i64 11, 2
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %161)
  store ptr %162, ptr @"main.struct$-sQ1S_TW5WNLDageftHP017iwpTTWpvZTx7xZ5oHpvI", align 8
  %163 = load ptr, ptr @"main.struct$-sQ1S_TW5WNLDageftHP017iwpTTWpvZTx7xZ5oHpvI", align 8
  br i1 %11, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %164 = load ptr, ptr @_llgo_int, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_33, label %_llgo_34

_llgo_32:                                         ; preds = %_llgo_40, %_llgo_30
  %166 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %167 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %169 = load ptr, ptr @"[]_llgo_main.T", align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %_llgo_133, label %_llgo_134

_llgo_33:                                         ; preds = %_llgo_31
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %171, ptr @_llgo_int, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_31
  %172 = load ptr, ptr @_llgo_int, align 8
  %173 = load ptr, ptr @_llgo_int, align 8
  %174 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %176, 0
  %178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %177, i64 0, 1
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %178, i64 0, 2
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %181 = getelementptr ptr, ptr %180, i64 0
  store ptr %173, ptr %181, align 8
  %182 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %180, 0
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182, i64 1, 1
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, i64 1, 2
  %185 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %184, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %185)
  store ptr %185, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %186 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %187 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %186, 1
  %188 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %187, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 2
  %189 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %188, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", 3
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %191 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  store ptr %190, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %193 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %194 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %198 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %195, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %196)
  %200 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %199, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %197)
  %202 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %201, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %203 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %204 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr %203, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %206 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %205, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %198, ptr %206, align 8
  %207 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %205, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %200, ptr %207, align 8
  %208 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %205, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %202, ptr %208, align 8
  %209 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %205, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %204, ptr %209, align 8
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %205, 0
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210, i64 4, 1
  %212 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %211, i64 4, 2
  %213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %212)
  store ptr %213, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  %214 = load ptr, ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io", align 8
  br i1 %192, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %215 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %216 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %215, 1
  %217 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %216, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 2
  %218 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %217, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", 3
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, i64 25, i64 104, i64 0, i64 21)
  %220 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %_llgo_41, label %_llgo_42

_llgo_40:                                         ; preds = %_llgo_132, %_llgo_38
  %222 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %223 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %224 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %225 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %224, 1
  %226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %225, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 2
  %227 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %226, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", 3
  %228 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %229 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %228, 1
  %230 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %229, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 2
  %231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %230, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", 3
  %232 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %233 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %234 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %233, 1
  %235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %234, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 2
  %236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %235, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", 3
  %237 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %238 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %239 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %238, 1
  %240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %239, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 2
  %241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %240, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", 3
  %242 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %243 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %243, 1
  %245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %244, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 2
  %246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %245, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", 3
  %247 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %248 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %247, 1
  %249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %248, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 2
  %250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %249, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", 3
  %251 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %252 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %252, 1
  %254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %253, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 2
  %255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %254, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", 3
  %256 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %256, 1
  %258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %257, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 2
  %259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %258, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", 3
  %260 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %260, 1
  %262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %261, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 2
  %263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %262, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", 3
  %264 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %265 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %265, 1
  %267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %266, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 2
  %268 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %267, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", 3
  %269 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %269, 1
  %271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %270, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 2
  %272 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %271, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", 3
  %273 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %274 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %273, 1
  %275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %274, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 2
  %276 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %275, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", 3
  %277 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %278 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %278, 1
  %280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %279, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 2
  %281 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %280, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", 3
  %282 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %283 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %282, 1
  %284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %283, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 2
  %285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %284, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", 3
  %286 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %287 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %286, 1
  %288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %287, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 2
  %289 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %288, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", 3
  %290 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %291 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %291, 1
  %293 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %292, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 2
  %294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %293, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", 3
  %295 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %295, 1
  %297 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %296, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 2
  %298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %297, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", 3
  %299 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %299, 1
  %301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %300, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 2
  %302 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %301, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", 3
  %303 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %304 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %303, 1
  %305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %304, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 2
  %306 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %305, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", 3
  %307 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %308 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %307, 1
  %309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %308, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 2
  %310 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %309, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", 3
  %311 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %312 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %312, 1
  %314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %313, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 2
  %315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %314, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", 3
  %316 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %317 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %316, 1
  %318 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %317, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 2
  %319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %318, ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", 3
  %320 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %321 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %189, ptr %321, align 8
  %322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %227, ptr %322, align 8
  %323 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %231, ptr %323, align 8
  %324 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %236, ptr %324, align 8
  %325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %241, ptr %325, align 8
  %326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %246, ptr %326, align 8
  %327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %250, ptr %327, align 8
  %328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %255, ptr %328, align 8
  %329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %259, ptr %329, align 8
  %330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %263, ptr %330, align 8
  %331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %268, ptr %331, align 8
  %332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %272, ptr %332, align 8
  %333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %276, ptr %333, align 8
  %334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %281, ptr %334, align 8
  %335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %285, ptr %335, align 8
  %336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %289, ptr %336, align 8
  %337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %294, ptr %337, align 8
  %338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %298, ptr %338, align 8
  %339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %302, ptr %339, align 8
  %340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %306, ptr %340, align 8
  %341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %310, ptr %341, align 8
  %342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %315, ptr %342, align 8
  %343 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %320, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %319, ptr %343, align 8
  %344 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %320, 0
  %345 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, i64 23, 1
  %346 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %345, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %9, ptr %163, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %346)
  br label %_llgo_32

_llgo_41:                                         ; preds = %_llgo_39
  %347 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %347)
  store ptr %347, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_39
  %348 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %349 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %350 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %352 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %353 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %352, 0
  %354 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %353, i64 0, 1
  %355 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %354, i64 0, 2
  %356 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %357 = getelementptr ptr, ptr %356, i64 0
  store ptr %349, ptr %357, align 8
  %358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %356, 0
  %359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %358, i64 1, 1
  %360 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %359, i64 1, 2
  %361 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %355, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, i1 false)
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
  %371 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir", align 8
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
  %389 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %390 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %391 = icmp eq ptr %390, null
  br i1 %391, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %392 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %393 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %392, 0
  %394 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %393, i64 0, 1
  %395 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %394, i64 0, 2
  %396 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %397 = getelementptr ptr, ptr %396, i64 0
  store ptr %389, ptr %397, align 8
  %398 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %396, 0
  %399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %398, i64 1, 1
  %400 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %399, i64 1, 2
  %401 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %395, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %400, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %401)
  store ptr %401, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %402 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %402, 1
  %404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %403, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 2
  %405 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %404, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", 3
  %406 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %407 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  store ptr %406, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %409 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %410 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %411 = icmp eq ptr %410, null
  br i1 %411, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  store ptr %409, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %412 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %414 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %416 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %413)
  %417 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %416)
  store ptr %417, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %418 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %419 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %420 = load ptr, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %421 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %422 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %423 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %424 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %421, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %425 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %422)
  %426 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %425)
  %427 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 2 }, ptr %426, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %428 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %423)
  %429 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %428)
  %430 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 3 }, ptr %429, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %431 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %432 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %431, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %424, ptr %432, align 8
  %433 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %431, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %427, ptr %433, align 8
  %434 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %431, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %430, ptr %434, align 8
  %435 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %431, 0
  %436 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %435, i64 3, 1
  %437 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %436, i64 3, 2
  %438 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %437)
  store ptr %438, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  %439 = load ptr, ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA", align 8
  br i1 %411, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %440 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %441 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %440, 1
  %442 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %441, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 2
  %443 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %442, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", 3
  %444 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %445 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %446 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %445, 1
  %447 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %446, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 2
  %448 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %447, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", 3
  %449 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %450 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %449, 1
  %451 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %450, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 2
  %452 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %451, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", 3
  %453 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %454 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %455 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %454, 1
  %456 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %455, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 2
  %457 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %456, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", 3
  %458 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %459 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %460 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %459, 1
  %461 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %460, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 2
  %462 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %461, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", 3
  %463 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, i64 25, i64 40, i64 0, i64 3)
  %464 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %465 = icmp eq ptr %464, null
  br i1 %465, label %_llgo_61, label %_llgo_62

_llgo_60:                                         ; preds = %_llgo_82, %_llgo_58
  %466 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %467 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
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
  %485 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %484)
  store ptr %485, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  %486 = load ptr, ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE", align 8
  br i1 %408, label %_llgo_131, label %_llgo_132

_llgo_61:                                         ; preds = %_llgo_59
  %487 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %463)
  store ptr %487, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_59
  %488 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %489 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %490 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %491 = icmp eq ptr %490, null
  br i1 %491, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %492 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %493 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %492, 0
  %494 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %493, i64 0, 1
  %495 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %494, i64 0, 2
  %496 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %497 = getelementptr ptr, ptr %496, i64 0
  store ptr %489, ptr %497, align 8
  %498 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %496, 0
  %499 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %498, i64 1, 1
  %500 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %499, i64 1, 2
  %501 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %495, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %500, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %501)
  store ptr %501, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %502 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %503 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %502, 1
  %504 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %503, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 2
  %505 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %504, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", 3
  %506 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %506, 1
  %508 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %507, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 2
  %509 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %508, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", 3
  %510 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %511 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %512 = icmp eq ptr %511, null
  br i1 %512, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %513 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %510)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %513)
  store ptr %513, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  %514 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %515 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %516 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %517 = icmp eq ptr %516, null
  br i1 %517, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  %518 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %519 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %518, 0
  %520 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %519, i64 0, 1
  %521 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %520, i64 0, 2
  %522 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %523 = getelementptr ptr, ptr %522, i64 0
  store ptr %515, ptr %523, align 8
  %524 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %522, 0
  %525 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %524, i64 1, 1
  %526 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %525, i64 1, 2
  %527 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %521, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %526, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %527)
  store ptr %527, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %528 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %529 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %528, 1
  %530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %529, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 2
  %531 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %530, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", 3
  %532 = load ptr, ptr @_llgo_bool, align 8
  %533 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %534 = icmp eq ptr %533, null
  br i1 %534, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %535 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %536 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %535, 0
  %537 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, i64 0, 1
  %538 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %537, i64 0, 2
  %539 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %540 = getelementptr ptr, ptr %539, i64 0
  store ptr %532, ptr %540, align 8
  %541 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %539, 0
  %542 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %541, i64 1, 1
  %543 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %542, i64 1, 2
  %544 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %538, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %543, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %544)
  store ptr %544, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %545 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %546 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %545, 1
  %547 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %546, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 2
  %548 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %547, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", 3
  %549 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %549, 1
  %551 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %550, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 2
  %552 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %551, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", 3
  %553 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %554 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  store ptr %553, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %556 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %557 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %558 = icmp eq ptr %557, null
  br i1 %558, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  store ptr %556, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %559 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %560 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, i64 25, i64 128, i64 0, i64 24)
  %561 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %562 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %561, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %563 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %560)
  %564 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 4 }, ptr %563, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %565 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %566 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %565, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %562, ptr %566, align 8
  %567 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %565, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %564, ptr %567, align 8
  %568 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %565, 0
  %569 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %568, i64 2, 1
  %570 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %569, i64 2, 2
  %571 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %570)
  store ptr %571, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  %572 = load ptr, ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw", align 8
  br i1 %558, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %573 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %574 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %573, 1
  %575 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %574, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 2
  %576 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %575, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", 3
  %577 = load ptr, ptr @_llgo_string, align 8
  %578 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %579 = icmp eq ptr %578, null
  br i1 %579, label %_llgo_77, label %_llgo_78

_llgo_76:                                         ; preds = %_llgo_78, %_llgo_74
  %580 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %581 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %582 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %583 = icmp eq ptr %582, null
  br i1 %583, label %_llgo_79, label %_llgo_80

_llgo_77:                                         ; preds = %_llgo_75
  %584 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %585 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %584, 0
  %586 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %585, i64 0, 1
  %587 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %586, i64 0, 2
  %588 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %589 = getelementptr ptr, ptr %588, i64 0
  store ptr %577, ptr %589, align 8
  %590 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %588, 0
  %591 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %590, i64 1, 1
  %592 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %591, i64 1, 2
  %593 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %587, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %592, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %593)
  store ptr %593, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_75
  %594 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %595 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %594, 1
  %596 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %595, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 2
  %597 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %596, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", 3
  %598 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %599 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %598, 1
  %600 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %599, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 2
  %601 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %600, ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", 3
  %602 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %603 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %602, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %576, ptr %603, align 8
  %604 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %602, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %597, ptr %604, align 8
  %605 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %602, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %601, ptr %605, align 8
  %606 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %602, 0
  %607 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %606, i64 3, 1
  %608 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %607, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %556, ptr %572, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %608)
  br label %_llgo_76

_llgo_79:                                         ; preds = %_llgo_76
  %609 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %581)
  store ptr %609, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_76
  %610 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %611 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %612 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 7 }, i64 25, i64 24, i64 0, i64 3)
  %613 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %611, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %614 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %615 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %614, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %616 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %612)
  %617 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr %616, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %618 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %619 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %618, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %613, ptr %619, align 8
  %620 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %618, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %615, ptr %620, align 8
  %621 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %618, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %617, ptr %621, align 8
  %622 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %618, 0
  %623 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %622, i64 3, 1
  %624 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %623, i64 3, 2
  %625 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %624)
  store ptr %625, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  %626 = load ptr, ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io", align 8
  br i1 %555, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %627 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %628 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %627, 1
  %629 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %628, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 2
  %630 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %629, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", 3
  %631 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %632 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %633 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %632, 1
  %634 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %633, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 2
  %635 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %634, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", 3
  %636 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %637 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %636, 1
  %638 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %637, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 2
  %639 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %638, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", 3
  %640 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %641 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %642 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %641, 1
  %643 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %642, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 2
  %644 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %643, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", 3
  %645 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %646 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %647 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %646, 1
  %648 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %647, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 2
  %649 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %648, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", 3
  %650 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %651 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %652 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %651, 1
  %653 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %652, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 2
  %654 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %653, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", 3
  %655 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %656 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %655, 1
  %657 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %656, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 2
  %658 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %657, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", 3
  %659 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %660 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %661 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %660, 1
  %662 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %661, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 2
  %663 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %662, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", 3
  %664 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %665 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %664, 1
  %666 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %665, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 2
  %667 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %666, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", 3
  %668 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %669 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %668, 1
  %670 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %669, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 2
  %671 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %670, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", 3
  %672 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, i64 25, i64 120, i64 0, i64 23)
  %673 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %674 = icmp eq ptr %673, null
  br i1 %674, label %_llgo_83, label %_llgo_84

_llgo_82:                                         ; preds = %_llgo_102, %_llgo_80
  %675 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %676 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %677 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %678 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %677, 1
  %679 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %678, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 2
  %680 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %679, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", 3
  %681 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %682 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %681, 1
  %683 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %682, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 2
  %684 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %683, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", 3
  %685 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %686 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %685, 1
  %687 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %686, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 2
  %688 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %687, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", 3
  %689 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %690 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %691 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %690, 1
  %692 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %691, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 2
  %693 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %692, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", 3
  %694 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %695 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %694, 1
  %696 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %695, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 2
  %697 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %696, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", 3
  %698 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %699 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %698, 1
  %700 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %699, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 2
  %701 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %700, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", 3
  %702 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %703 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %704 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %703, 1
  %705 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %704, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 2
  %706 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %705, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", 3
  %707 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %708 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %707, 1
  %709 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %708, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 2
  %710 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %709, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", 3
  %711 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %712 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %711, 1
  %713 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %712, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 2
  %714 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %713, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", 3
  %715 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %716 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %715, 1
  %717 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %716, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 2
  %718 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %717, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", 3
  %719 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %720 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %719, 1
  %721 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %720, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 2
  %722 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %721, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", 3
  %723 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %724 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %725 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %724, 1
  %726 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %725, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 2
  %727 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %726, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", 3
  %728 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %729 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %728, 1
  %730 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %729, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 2
  %731 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %730, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", 3
  %732 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %733 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %732, 1
  %734 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %733, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 2
  %735 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %734, ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", 3
  %736 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 960)
  %737 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %443, ptr %737, align 8
  %738 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %448, ptr %738, align 8
  %739 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %452, ptr %739, align 8
  %740 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %457, ptr %740, align 8
  %741 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %462, ptr %741, align 8
  %742 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %505, ptr %742, align 8
  %743 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %509, ptr %743, align 8
  %744 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %531, ptr %744, align 8
  %745 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %548, ptr %745, align 8
  %746 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %552, ptr %746, align 8
  %747 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %680, ptr %747, align 8
  %748 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %684, ptr %748, align 8
  %749 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %688, ptr %749, align 8
  %750 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %693, ptr %750, align 8
  %751 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %697, ptr %751, align 8
  %752 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %701, ptr %752, align 8
  %753 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %706, ptr %753, align 8
  %754 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %710, ptr %754, align 8
  %755 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %714, ptr %755, align 8
  %756 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %718, ptr %756, align 8
  %757 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %722, ptr %757, align 8
  %758 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %727, ptr %758, align 8
  %759 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %731, ptr %759, align 8
  %760 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %736, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %735, ptr %760, align 8
  %761 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %736, 0
  %762 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %761, i64 24, 1
  %763 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %762, i64 24, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %409, ptr %439, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %763)
  br label %_llgo_60

_llgo_83:                                         ; preds = %_llgo_81
  %764 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %672)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %764)
  store ptr %764, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_81
  %765 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %766 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %767 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %768 = icmp eq ptr %767, null
  br i1 %768, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %769 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %770 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %769, 0
  %771 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %770, i64 0, 1
  %772 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %771, i64 0, 2
  %773 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %774 = getelementptr ptr, ptr %773, i64 0
  store ptr %766, ptr %774, align 8
  %775 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %773, 0
  %776 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %775, i64 1, 1
  %777 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %776, i64 1, 2
  %778 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %772, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %777, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %778)
  store ptr %778, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %779 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %780 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %779, 1
  %781 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %780, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 2
  %782 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %781, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", 3
  %783 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %784 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %783, 1
  %785 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %784, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 2
  %786 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %785, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", 3
  %787 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %788 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %787, 1
  %789 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %788, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 2
  %790 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %789, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", 3
  %791 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %792 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %793 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %792, 1
  %794 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %793, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 2
  %795 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %794, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", 3
  %796 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, i64 7, i64 8, i64 1, i64 1)
  %797 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %798 = icmp eq ptr %797, null
  br i1 %798, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  store ptr %796, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %799 = load ptr, ptr @_llgo_uint, align 8
  %800 = icmp eq ptr %799, null
  br i1 %800, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %801 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %801, ptr @_llgo_uint, align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %802 = load ptr, ptr @_llgo_uint, align 8
  br i1 %798, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %803 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %804 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %803, 1
  %805 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %804, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %806 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %805, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 3
  %807 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %803, 1
  %808 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %807, ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", 2
  %809 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %808, ptr @"github.com/goplus/llgo/runtime/abi.Kind.String", 3
  %810 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %811 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %810, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %809, ptr %811, align 8
  %812 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %810, 0
  %813 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %812, i64 1, 1
  %814 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %813, i64 1, 2
  %815 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %816 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %815, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %806, ptr %816, align 8
  %817 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %815, 0
  %818 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %817, i64 1, 1
  %819 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %818, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %796, ptr %802, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %814, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %819)
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %820 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %821 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind", align 8
  %822 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %823 = icmp eq ptr %822, null
  br i1 %823, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %824 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %825 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %824, 0
  %826 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %825, i64 0, 1
  %827 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %826, i64 0, 2
  %828 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %829 = getelementptr ptr, ptr %828, i64 0
  store ptr %821, ptr %829, align 8
  %830 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %828, 0
  %831 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %830, i64 1, 1
  %832 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %831, i64 1, 2
  %833 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %827, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %832, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %833)
  store ptr %833, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %834 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %835 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %834, 1
  %836 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %835, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 2
  %837 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %836, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", 3
  %838 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %839 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %838, 1
  %840 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %839, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 2
  %841 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %840, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", 3
  %842 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %843 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %844 = icmp eq ptr %843, null
  br i1 %844, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  store ptr %842, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_96

_llgo_96:                                         ; preds = %_llgo_95, %_llgo_94
  %845 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %846 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %847 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %848 = load ptr, ptr @_llgo_Pointer, align 8
  %849 = load ptr, ptr @_llgo_uintptr, align 8
  %850 = load ptr, ptr @_llgo_uintptr, align 8
  %851 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %852 = icmp eq ptr %851, null
  br i1 %852, label %_llgo_97, label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_96
  %853 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %854 = getelementptr ptr, ptr %853, i64 0
  store ptr %848, ptr %854, align 8
  %855 = getelementptr ptr, ptr %853, i64 1
  store ptr %849, ptr %855, align 8
  %856 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %853, 0
  %857 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %856, i64 2, 1
  %858 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %857, i64 2, 2
  %859 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %860 = getelementptr ptr, ptr %859, i64 0
  store ptr %850, ptr %860, align 8
  %861 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %859, 0
  %862 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %861, i64 1, 1
  %863 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %862, i64 1, 2
  %864 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %858, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %863, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %864)
  store ptr %864, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %865 = load ptr, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", align 8
  %866 = load ptr, ptr @_llgo_Pointer, align 8
  %867 = load ptr, ptr @_llgo_uintptr, align 8
  %868 = load ptr, ptr @_llgo_uintptr, align 8
  %869 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %870 = getelementptr ptr, ptr %869, i64 0
  store ptr %866, ptr %870, align 8
  %871 = getelementptr ptr, ptr %869, i64 1
  store ptr %867, ptr %871, align 8
  %872 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %869, 0
  %873 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %872, i64 2, 1
  %874 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %873, i64 2, 2
  %875 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %876 = getelementptr ptr, ptr %875, i64 0
  store ptr %868, ptr %876, align 8
  %877 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %875, 0
  %878 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %877, i64 1, 1
  %879 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %878, i64 1, 2
  %880 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %874, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %879, i1 false)
  %881 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %880, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %882 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %883 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %882, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %884 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %885 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %884, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %881, ptr %885, align 8
  %886 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %884, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %883, ptr %886, align 8
  %887 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %884, 0
  %888 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %887, i64 2, 1
  %889 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %888, i64 2, 2
  %890 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %889)
  store ptr %890, ptr @"main.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %891 = load ptr, ptr @"main.struct$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", align 8
  %892 = load ptr, ptr @_llgo_uint16, align 8
  %893 = icmp eq ptr %892, null
  br i1 %893, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  %894 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %894, ptr @_llgo_uint16, align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %895 = load ptr, ptr @_llgo_uint16, align 8
  %896 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %897 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %898 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %899 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %900 = load ptr, ptr @_llgo_Pointer, align 8
  %901 = load ptr, ptr @_llgo_uintptr, align 8
  %902 = load ptr, ptr @_llgo_uintptr, align 8
  %903 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %896, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %904 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %897)
  %905 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr %904, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %906 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %898)
  %907 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr %906, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %908 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %899)
  %909 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 6 }, ptr %908, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %910 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %911 = getelementptr ptr, ptr %910, i64 0
  store ptr %900, ptr %911, align 8
  %912 = getelementptr ptr, ptr %910, i64 1
  store ptr %901, ptr %912, align 8
  %913 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %910, 0
  %914 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %913, i64 2, 1
  %915 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %914, i64 2, 2
  %916 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %917 = getelementptr ptr, ptr %916, i64 0
  store ptr %902, ptr %917, align 8
  %918 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %916, 0
  %919 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %918, i64 1, 1
  %920 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %919, i64 1, 2
  %921 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %915, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %920, i1 false)
  %922 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr %921, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %923 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %924 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %923, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %925 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %926 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %925, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %922, ptr %926, align 8
  %927 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %925, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %924, ptr %927, align 8
  %928 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %925, 0
  %929 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %928, i64 2, 1
  %930 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %929, i64 2, 2
  %931 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %930)
  %932 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 6 }, ptr %931, i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %933 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %934 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 7 }, ptr %933, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %935 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %936 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 9 }, ptr %935, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %937 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %938 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 10 }, ptr %937, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %939 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %940 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr %939, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %941 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 504)
  %942 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %903, ptr %942, align 8
  %943 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %905, ptr %943, align 8
  %944 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %907, ptr %944, align 8
  %945 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %909, ptr %945, align 8
  %946 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %932, ptr %946, align 8
  %947 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %934, ptr %947, align 8
  %948 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %936, ptr %948, align 8
  %949 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %938, ptr %949, align 8
  %950 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %941, i64 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %940, ptr %950, align 8
  %951 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %941, 0
  %952 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %951, i64 9, 1
  %953 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %952, i64 9, 2
  %954 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 120, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %953)
  store ptr %954, ptr @"main.struct$fcvaNpt6kbBgWOAYzHzrrsaKXunEtzMD4RdymMNJqTs", align 8
  %955 = load ptr, ptr @"main.struct$fcvaNpt6kbBgWOAYzHzrrsaKXunEtzMD4RdymMNJqTs", align 8
  br i1 %844, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %956 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %957 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %956, 1
  %958 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %957, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 2
  %959 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %958, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", 3
  %960 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %961 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %962 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %961, 1
  %963 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %962, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 2
  %964 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %963, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", 3
  %965 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %966 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %965, 1
  %967 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %966, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 2
  %968 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %967, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", 3
  %969 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %970 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %971 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %970, 1
  %972 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %971, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 2
  %973 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %972, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", 3
  %974 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %975 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %976 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %975, 1
  %977 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %976, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 2
  %978 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %977, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", 3
  %979 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %980 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %979, 1
  %981 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %980, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 2
  %982 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %981, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", 3
  %983 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %984 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %985 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %984, 1
  %986 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %985, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 2
  %987 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %986, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", 3
  %988 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %989 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %988, 1
  %990 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %989, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 2
  %991 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %990, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", 3
  %992 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %993 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %992, 1
  %994 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %993, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 2
  %995 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %994, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", 3
  %996 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %997 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %996, 1
  %998 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %997, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 2
  %999 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %998, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", 3
  %1000 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1001 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1000, 1
  %1002 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1001, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 2
  %1003 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1002, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", 3
  %1004 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1005 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1004, 1
  %1006 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1005, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 2
  %1007 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1006, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", 3
  %1008 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1009 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1010 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1009, 1
  %1011 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1010, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 2
  %1012 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1011, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", 3
  %1013 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1014 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1013, 1
  %1015 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1014, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 2
  %1016 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1015, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", 3
  %1017 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1018 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1017, 1
  %1019 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1018, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 2
  %1020 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1019, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", 3
  %1021 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1022 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1021, 1
  %1023 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1022, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 2
  %1024 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1023, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", 3
  %1025 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1026 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1025, 1
  %1027 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1026, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 2
  %1028 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1027, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", 3
  %1029 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, i64 25, i64 136, i64 0, i64 26)
  %1030 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %_llgo_103, label %_llgo_104

_llgo_102:                                        ; preds = %_llgo_118, %_llgo_100
  %1032 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1033 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1034 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1035 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1034, 1
  %1036 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1035, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 2
  %1037 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1036, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", 3
  %1038 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1039 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1038, 1
  %1040 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1039, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 2
  %1041 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1040, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", 3
  %1042 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1043 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1042, 1
  %1044 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1043, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 2
  %1045 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1044, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", 3
  %1046 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1047 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1046, 1
  %1048 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1047, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 2
  %1049 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1048, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", 3
  %1050 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1051 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1050, 1
  %1052 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1051, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 2
  %1053 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1052, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", 3
  %1054 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1055 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1056 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1055, 1
  %1057 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1056, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 2
  %1058 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1057, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", 3
  %1059 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1060 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1059, 1
  %1061 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1060, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 2
  %1062 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1061, ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", 3
  %1063 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1064 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %630, ptr %1064, align 8
  %1065 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %635, ptr %1065, align 8
  %1066 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %639, ptr %1066, align 8
  %1067 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %644, ptr %1067, align 8
  %1068 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %649, ptr %1068, align 8
  %1069 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %654, ptr %1069, align 8
  %1070 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %658, ptr %1070, align 8
  %1071 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %663, ptr %1071, align 8
  %1072 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %667, ptr %1072, align 8
  %1073 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %671, ptr %1073, align 8
  %1074 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %782, ptr %1074, align 8
  %1075 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %786, ptr %1075, align 8
  %1076 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %790, ptr %1076, align 8
  %1077 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %795, ptr %1077, align 8
  %1078 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %837, ptr %1078, align 8
  %1079 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %841, ptr %1079, align 8
  %1080 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1037, ptr %1080, align 8
  %1081 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1041, ptr %1081, align 8
  %1082 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1045, ptr %1082, align 8
  %1083 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1049, ptr %1083, align 8
  %1084 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1053, ptr %1084, align 8
  %1085 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1058, ptr %1085, align 8
  %1086 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1063, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1062, ptr %1086, align 8
  %1087 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1063, 0
  %1088 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1087, i64 23, 1
  %1089 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1088, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %553, ptr %626, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1089)
  br label %_llgo_82

_llgo_103:                                        ; preds = %_llgo_101
  %1090 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1029)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1090)
  store ptr %1090, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_101
  %1091 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1092 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1093 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %1095 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1096 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1095, 0
  %1097 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1096, i64 0, 1
  %1098 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1097, i64 0, 2
  %1099 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1100 = getelementptr ptr, ptr %1099, i64 0
  store ptr %1092, ptr %1100, align 8
  %1101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1099, 0
  %1102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1101, i64 1, 1
  %1103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1102, i64 1, 2
  %1104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1098, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1103, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1104)
  store ptr %1104, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %1105 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1105, 1
  %1107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1106, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 2
  %1108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1107, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", 3
  %1109 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1109, 1
  %1111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1110, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 2
  %1112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1111, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", 3
  %1113 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1113, 1
  %1115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1114, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 2
  %1116 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1115, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", 3
  %1117 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1117, 1
  %1119 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1118, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 2
  %1120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1119, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", 3
  %1121 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1122 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1121, 1
  %1123 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1122, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 2
  %1124 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1123, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", 3
  %1125 = load ptr, ptr @_llgo_uintptr, align 8
  %1126 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  %1128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1128, 0
  %1130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1129, i64 0, 1
  %1131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1130, i64 0, 2
  %1132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1133 = getelementptr ptr, ptr %1132, i64 0
  store ptr %1125, ptr %1133, align 8
  %1134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1132, 0
  %1135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1134, i64 1, 1
  %1136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1135, i64 1, 2
  %1137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1131, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1136, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1137)
  store ptr %1137, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %1138 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1139 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1138, 1
  %1140 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1139, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 2
  %1141 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1140, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", 3
  %1142 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1143 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1142, 1
  %1144 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1143, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 2
  %1145 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1144, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", 3
  %1146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1147 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  store ptr %1146, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %1149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1150 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  store ptr %1149, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %1152 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1155 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 5 }, ptr %1154, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1153)
  %1157 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 3 }, ptr %1156, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1159 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 6 }, ptr %1158, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1161 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, ptr %1160, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1163 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 9 }, ptr %1162, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %1165 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1164, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1155, ptr %1165, align 8
  %1166 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1164, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1157, ptr %1166, align 8
  %1167 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1164, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1159, ptr %1167, align 8
  %1168 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1164, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1161, ptr %1168, align 8
  %1169 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1164, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1163, ptr %1169, align 8
  %1170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1164, 0
  %1171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1170, i64 5, 1
  %1172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1171, i64 5, 2
  %1173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1172)
  store ptr %1173, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  %1174 = load ptr, ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU", align 8
  br i1 %1151, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %1175 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1176 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1175, 1
  %1177 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1176, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 2
  %1178 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1177, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", 3
  %1179 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1180 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1179, 1
  %1181 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1180, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 2
  %1182 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1181, ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", 3
  %1183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1184 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1183, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1178, ptr %1184, align 8
  %1185 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1183, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1182, ptr %1185, align 8
  %1186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1183, 0
  %1187 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1186, i64 2, 1
  %1188 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1187, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1149, ptr %1174, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1188)
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %1189 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1191 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %1193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1190)
  store ptr %1193, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_114
  %1194 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", align 8
  %1195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1196 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 11 }, i64 25, i64 56, i64 0, i64 2)
  %1197 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, ptr %1195, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %1198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1199 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1198, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1196)
  %1201 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 6 }, ptr %1200, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %1203 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1202, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1197, ptr %1203, align 8
  %1204 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1202, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1199, ptr %1204, align 8
  %1205 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1202, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1201, ptr %1205, align 8
  %1206 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1202, 0
  %1207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1206, i64 3, 1
  %1208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1207, i64 3, 2
  %1209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1208)
  store ptr %1209, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  %1210 = load ptr, ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0", align 8
  br i1 %1148, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  %1211 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1212 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1211, 1
  %1213 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1212, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 2
  %1214 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1213, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", 3
  %1215 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType", align 8
  %1216 = load ptr, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", align 8
  %1217 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1216, 1
  %1218 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1217, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 2
  %1219 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1218, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", 3
  %1220 = load ptr, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", align 8
  %1221 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1220, 1
  %1222 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1221, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 2
  %1223 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1222, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", 3
  %1224 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1225 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1226 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1225, 1
  %1227 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1226, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 2
  %1228 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1227, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", 3
  %1229 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1230 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1231 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1230, 1
  %1232 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1231, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 2
  %1233 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1232, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", 3
  %1234 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1235 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1235, 1
  %1237 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1236, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 2
  %1238 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1237, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", 3
  %1239 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1239, 1
  %1241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1240, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 2
  %1242 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1241, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", 3
  %1243 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1244 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1244, 1
  %1246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1245, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 2
  %1247 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1246, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", 3
  %1248 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1249 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1248, 1
  %1250 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1249, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 2
  %1251 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1250, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", 3
  %1252 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1252, 1
  %1254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1253, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 2
  %1255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1254, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", 3
  %1256 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1257 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1257, 1
  %1259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1258, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 2
  %1260 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1259, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", 3
  %1261 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1261, 1
  %1263 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1262, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 2
  %1264 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1263, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", 3
  %1265 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1266 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1265, 1
  %1267 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1266, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 2
  %1268 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1267, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", 3
  %1269 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1270 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1270, 1
  %1272 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1271, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 2
  %1273 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1272, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", 3
  %1274 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1274, 1
  %1276 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1275, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 2
  %1277 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1276, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", 3
  %1278 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1279 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1278, 1
  %1280 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1279, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 2
  %1281 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1280, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", 3
  %1282 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1283 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1283, 1
  %1285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1284, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 2
  %1286 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1285, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", 3
  %1287 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1288 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1287, 1
  %1289 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1288, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 2
  %1290 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1289, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", 3
  %1291 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1292 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1291, 1
  %1293 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1292, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 2
  %1294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1293, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", 3
  %1295 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1295, 1
  %1297 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1296, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 2
  %1298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1297, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", 3
  %1299 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1299, 1
  %1301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1300, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 2
  %1302 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1301, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", 3
  %1303 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, i64 25, i64 120, i64 0, i64 23)
  %1304 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1305 = icmp eq ptr %1304, null
  br i1 %1305, label %_llgo_119, label %_llgo_120

_llgo_118:                                        ; preds = %_llgo_130, %_llgo_116
  %1306 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1307 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1308 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1308, 1
  %1310 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1309, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 2
  %1311 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1310, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", 3
  %1312 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1312, 1
  %1314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1313, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 2
  %1315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1314, ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", 3
  %1316 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 1040)
  %1317 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %959, ptr %1317, align 8
  %1318 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %964, ptr %1318, align 8
  %1319 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %968, ptr %1319, align 8
  %1320 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %973, ptr %1320, align 8
  %1321 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %978, ptr %1321, align 8
  %1322 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %982, ptr %1322, align 8
  %1323 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %987, ptr %1323, align 8
  %1324 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %991, ptr %1324, align 8
  %1325 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %995, ptr %1325, align 8
  %1326 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %999, ptr %1326, align 8
  %1327 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1003, ptr %1327, align 8
  %1328 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1007, ptr %1328, align 8
  %1329 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1012, ptr %1329, align 8
  %1330 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1016, ptr %1330, align 8
  %1331 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1020, ptr %1331, align 8
  %1332 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1024, ptr %1332, align 8
  %1333 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1028, ptr %1333, align 8
  %1334 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1108, ptr %1334, align 8
  %1335 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1112, ptr %1335, align 8
  %1336 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1116, ptr %1336, align 8
  %1337 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1120, ptr %1337, align 8
  %1338 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1124, ptr %1338, align 8
  %1339 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1141, ptr %1339, align 8
  %1340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 23
  store %"github.com/goplus/llgo/runtime/abi.Method" %1145, ptr %1340, align 8
  %1341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 24
  store %"github.com/goplus/llgo/runtime/abi.Method" %1311, ptr %1341, align 8
  %1342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1316, i64 25
  store %"github.com/goplus/llgo/runtime/abi.Method" %1315, ptr %1342, align 8
  %1343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1316, 0
  %1344 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1343, i64 26, 1
  %1345 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1344, i64 26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %842, ptr %955, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1345)
  br label %_llgo_102

_llgo_119:                                        ; preds = %_llgo_117
  %1346 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1303)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1346)
  store ptr %1346, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_117
  %1347 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1348 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1349 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %1351 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1352 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1351, 0
  %1353 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1352, i64 0, 1
  %1354 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1353, i64 0, 2
  %1355 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1356 = getelementptr ptr, ptr %1355, i64 0
  store ptr %1348, ptr %1356, align 8
  %1357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1355, 0
  %1358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1357, i64 1, 1
  %1359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1358, i64 1, 2
  %1360 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1354, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1359, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1360)
  store ptr %1360, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1361 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1362 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1361, 1
  %1363 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1362, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 2
  %1364 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1363, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", 3
  %1365 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1366 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1367 = icmp eq ptr %1366, null
  br i1 %1367, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  store ptr %1365, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1368 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1369 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr %1368, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1371 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 6 }, ptr %1370, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1372 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  %1373 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr %1372, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1374 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %1375 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 4 }, ptr %1374, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1377 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1376, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1369, ptr %1377, align 8
  %1378 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1376, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1371, ptr %1378, align 8
  %1379 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1376, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1373, ptr %1379, align 8
  %1380 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1376, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1375, ptr %1380, align 8
  %1381 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1376, 0
  %1382 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1381, i64 4, 1
  %1383 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1382, i64 4, 2
  %1384 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1383)
  store ptr %1384, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  %1385 = load ptr, ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI", align 8
  br i1 %1367, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1386 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1387 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1388 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1387, 1
  %1389 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1388, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 2
  %1390 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1389, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", 3
  %1391 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1392 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1393 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1392, 1
  %1394 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1393, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 2
  %1395 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1394, ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", 3
  %1396 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %1397 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1396, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1390, ptr %1397, align 8
  %1398 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1396, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1395, ptr %1398, align 8
  %1399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1396, 0
  %1400 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1399, i64 2, 1
  %1401 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1400, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1365, ptr %1385, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1401)
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1402 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1403 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 12 }, i64 25, i64 24, i64 0, i64 2)
  %1404 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1405 = icmp eq ptr %1404, null
  br i1 %1405, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  %1406 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1403)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1406)
  store ptr %1406, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1407 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1408 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType", align 8
  %1409 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1410 = icmp eq ptr %1409, null
  br i1 %1410, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  %1411 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1412 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1411, 0
  %1413 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1412, i64 0, 1
  %1414 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1413, i64 0, 2
  %1415 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1416 = getelementptr ptr, ptr %1415, i64 0
  store ptr %1408, ptr %1416, align 8
  %1417 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1415, 0
  %1418 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1417, i64 1, 1
  %1419 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1418, i64 1, 2
  %1420 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1414, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1419, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1420)
  store ptr %1420, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_128
  %1421 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1422 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1421, 1
  %1423 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1422, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 2
  %1424 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1423, ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", 3
  %1425 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1426 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1214, ptr %1426, align 8
  %1427 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1219, ptr %1427, align 8
  %1428 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1223, ptr %1428, align 8
  %1429 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1228, ptr %1429, align 8
  %1430 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1233, ptr %1430, align 8
  %1431 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1238, ptr %1431, align 8
  %1432 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1242, ptr %1432, align 8
  %1433 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1247, ptr %1433, align 8
  %1434 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1251, ptr %1434, align 8
  %1435 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1255, ptr %1435, align 8
  %1436 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1260, ptr %1436, align 8
  %1437 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1264, ptr %1437, align 8
  %1438 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1268, ptr %1438, align 8
  %1439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1273, ptr %1439, align 8
  %1440 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1277, ptr %1440, align 8
  %1441 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1281, ptr %1441, align 8
  %1442 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1286, ptr %1442, align 8
  %1443 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1290, ptr %1443, align 8
  %1444 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1294, ptr %1444, align 8
  %1445 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1298, ptr %1445, align 8
  %1446 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1302, ptr %1446, align 8
  %1447 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1364, ptr %1447, align 8
  %1448 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1425, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1424, ptr %1448, align 8
  %1449 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1425, 0
  %1450 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1449, i64 23, 1
  %1451 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1450, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1146, ptr %1210, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1451)
  br label %_llgo_118

_llgo_131:                                        ; preds = %_llgo_60
  %1452 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1453 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1452, 1
  %1454 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1453, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 2
  %1455 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1454, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", 3
  %1456 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1457 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1456, 1
  %1458 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1457, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 2
  %1459 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1458, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", 3
  %1460 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1461 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1460, 1
  %1462 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1461, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 2
  %1463 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1462, ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", 3
  %1464 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %1465 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1464, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1455, ptr %1465, align 8
  %1466 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1464, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1459, ptr %1466, align 8
  %1467 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1464, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1463, ptr %1467, align 8
  %1468 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1464, 0
  %1469 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1468, i64 3, 1
  %1470 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1469, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %406, ptr %486, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1470)
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_60
  %1471 = load ptr, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1472 = load ptr, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method", align 8
  %1473 = load ptr, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", align 8
  %1474 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1473, 1
  %1475 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1474, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 2
  %1476 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1475, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", 3
  %1477 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1478 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1477, 1
  %1479 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1478, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 2
  %1480 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1479, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", 3
  %1481 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", align 8
  %1482 = load ptr, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", align 8
  %1483 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1482, 1
  %1484 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1483, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 2
  %1485 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1484, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", 3
  %1486 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1487 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1486, 1
  %1488 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1487, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 2
  %1489 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1488, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", 3
  %1490 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1491 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1490, 1
  %1492 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1491, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 2
  %1493 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1492, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", 3
  %1494 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType", align 8
  %1495 = load ptr, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", align 8
  %1496 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1495, 1
  %1497 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1496, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 2
  %1498 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1497, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", 3
  %1499 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1500 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1499, 1
  %1501 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1500, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 2
  %1502 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1501, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", 3
  %1503 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1504 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 13 }, ptr undef, ptr undef, ptr undef }, ptr %1503, 1
  %1505 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1504, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 2
  %1506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1505, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", 3
  %1507 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", align 8
  %1508 = load ptr, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", align 8
  %1509 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1508, 1
  %1510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1509, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 2
  %1511 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1510, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", 3
  %1512 = load ptr, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", align 8
  %1513 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1512, 1
  %1514 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1513, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 2
  %1515 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1514, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", 3
  %1516 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType", align 8
  %1517 = load ptr, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", align 8
  %1518 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1517, 1
  %1519 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1518, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 2
  %1520 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1519, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", 3
  %1521 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1522 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1521, 1
  %1523 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1522, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 2
  %1524 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1523, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", 3
  %1525 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1526 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1525, 1
  %1527 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1526, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 2
  %1528 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1527, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", 3
  %1529 = load ptr, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", align 8
  %1530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1529, 1
  %1531 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1530, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 2
  %1532 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1531, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", 3
  %1533 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1534 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1533, 1
  %1535 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1534, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 2
  %1536 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1535, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", 3
  %1537 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType", align 8
  %1538 = load ptr, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", align 8
  %1539 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %1538, 1
  %1540 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1539, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 2
  %1541 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1540, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", 3
  %1542 = load ptr, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", align 8
  %1543 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1542, 1
  %1544 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1543, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 2
  %1545 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1544, ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", 3
  %1546 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 840)
  %1547 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %218, ptr %1547, align 8
  %1548 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %365, ptr %1548, align 8
  %1549 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %387, ptr %1549, align 8
  %1550 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %405, ptr %1550, align 8
  %1551 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1476, ptr %1551, align 8
  %1552 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1480, ptr %1552, align 8
  %1553 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1485, ptr %1553, align 8
  %1554 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1489, ptr %1554, align 8
  %1555 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1493, ptr %1555, align 8
  %1556 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1498, ptr %1556, align 8
  %1557 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1502, ptr %1557, align 8
  %1558 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1506, ptr %1558, align 8
  %1559 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1511, ptr %1559, align 8
  %1560 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1515, ptr %1560, align 8
  %1561 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1520, ptr %1561, align 8
  %1562 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1524, ptr %1562, align 8
  %1563 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1528, ptr %1563, align 8
  %1564 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1532, ptr %1564, align 8
  %1565 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1536, ptr %1565, align 8
  %1566 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1541, ptr %1566, align 8
  %1567 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1546, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1545, ptr %1567, align 8
  %1568 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1546, 0
  %1569 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1568, i64 21, 1
  %1570 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1569, i64 21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %190, ptr %214, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1570)
  br label %_llgo_40

_llgo_133:                                        ; preds = %_llgo_32
  %1571 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %168)
  store ptr %1571, ptr @"[]_llgo_main.T", align 8
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_32
  %1572 = load ptr, ptr @"[]_llgo_main.T", align 8
  %1573 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1574 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 34 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 }, i64 25, i64 80, i64 0, i64 23)
  %1575 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 48, i64 0, i64 0)
  %1576 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1573)
  %1577 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 1 }, ptr %1576, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1578 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1574)
  %1579 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 1 }, ptr %1578, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1580 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %1581 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 1 }, ptr %1580, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1582 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1575)
  %1583 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 1 }, ptr %1582, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1584 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %1585 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1584, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1577, ptr %1585, align 8
  %1586 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1584, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1579, ptr %1586, align 8
  %1587 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1584, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1581, ptr %1587, align 8
  %1588 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1584, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1583, ptr %1588, align 8
  %1589 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1584, 0
  %1590 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1589, i64 4, 1
  %1591 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1590, i64 4, 2
  %1592 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1591)
  store ptr %1592, ptr @"main.struct$0I14CsQEZ9iadCku0_1cAZfCJoBbFdmFH4XChi4XRoo", align 8
  %1593 = load ptr, ptr @"main.struct$0I14CsQEZ9iadCku0_1cAZfCJoBbFdmFH4XChi4XRoo", align 8
  br i1 %2, label %_llgo_135, label %_llgo_136

_llgo_135:                                        ; preds = %_llgo_134
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %1593, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_134
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
