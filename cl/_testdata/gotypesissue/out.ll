; ModuleID = 'github.com/goplus/llgo/cl/_testdata/gotypesissue'
source_filename = "github.com/goplus/llgo/cl/_testdata/gotypesissue"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"iter.Seq[*go/types.Scope]" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testdata/gotypesissue.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"example", align 1
@"go/types.Typ" = external global %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
@"_llgo_go/types.Basic" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [8 x i8] c"go/types", align 1
@2 = private unnamed_addr constant [5 x i8] c"Basic", align 1
@"_llgo_go/types.BasicKind" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [9 x i8] c"BasicKind", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_go/types.BasicInfo" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [9 x i8] c"BasicInfo", align 1
@_llgo_string = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$-yauDX19XYCZO3MVOxPDeHKW0qeit_1b7FvyRKdhNII" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [4 x i8] c"kind", align 1
@6 = private unnamed_addr constant [4 x i8] c"info", align 1
@7 = private unnamed_addr constant [4 x i8] c"name", align 1
@8 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testdata/gotypesissue", align 1
@9 = private unnamed_addr constant [4 x i8] c"Info", align 1
@"_llgo_func$CUS3js_cii23mFqaGPDYW9HMeUJz7Mb6uXdGPwXtACQ" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$Bvh59c_tFOFatOUQ4-E6traW4XxY5SobLlwi5r9hl10" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [6 x i8] c"String", align 1
@13 = private unnamed_addr constant [10 x i8] c"Underlying", align 1
@"_llgo_go/types.Type" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [4 x i8] c"Type", align 1
@"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk" = linkonce global ptr null, align 8
@"*_llgo_go/types.Basic" = linkonce global ptr null, align 8
@"_llgo_iface$aoV1AKboWw04nH6VUQif4ZQWVUEmtYoEx3kmS57mUoc" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [7 x i8] c"testVar", align 1
@"_llgo_go/types.Var" = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [3 x i8] c"Var", align 1
@"_llgo_go/types.object" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [6 x i8] c"object", align 1
@"_llgo_go/types.Scope" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [5 x i8] c"Scope", align 1
@"*_llgo_go/types.Scope" = linkonce global ptr null, align 8
@"[]*_llgo_go/types.Scope" = linkonce global ptr null, align 8
@"_llgo_go/types.Object" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [6 x i8] c"Object", align 1
@_llgo_bool = linkonce global ptr null, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s" = linkonce global ptr null, align 8
@"_llgo_go/types.Package" = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [7 x i8] c"Package", align 1
@"*_llgo_go/types.Package" = linkonce global ptr null, align 8
@"[]*_llgo_go/types.Package" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$poNArTEcKkTlIAxIqV2hAy3ZVEFpV2Ts6-ouuE-7A4I" = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [4 x i8] c"path", align 1
@22 = private unnamed_addr constant [5 x i8] c"scope", align 1
@23 = private unnamed_addr constant [7 x i8] c"imports", align 1
@24 = private unnamed_addr constant [8 x i8] c"complete", align 1
@25 = private unnamed_addr constant [4 x i8] c"fake", align 1
@26 = private unnamed_addr constant [3 x i8] c"cgo", align 1
@27 = private unnamed_addr constant [9 x i8] c"goVersion", align 1
@28 = private unnamed_addr constant [8 x i8] c"Complete", align 1
@29 = private unnamed_addr constant [9 x i8] c"GoVersion", align 1
@30 = private unnamed_addr constant [7 x i8] c"Imports", align 1
@"_llgo_func$fQ0IHrfyLUOt9JiKczw9IsP7HzMD-ONp8Q8kvcDfMts" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [12 x i8] c"MarkComplete", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@32 = private unnamed_addr constant [4 x i8] c"Path", align 1
@33 = private unnamed_addr constant [10 x i8] c"SetImports", align 1
@"_llgo_func$32WZjICifIWEucoyS5Q14toQ5izCqGF5lm2PPlJYsM8" = linkonce global ptr null, align 8
@34 = private unnamed_addr constant [7 x i8] c"SetName", align 1
@"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA" = linkonce global ptr null, align 8
@"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs" = linkonce global ptr null, align 8
@"_llgo_go/token.Pos" = linkonce global ptr null, align 8
@35 = private unnamed_addr constant [8 x i8] c"go/token", align 1
@36 = private unnamed_addr constant [3 x i8] c"Pos", align 1
@37 = private unnamed_addr constant [7 x i8] c"IsValid", align 1
@"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU" = linkonce global ptr null, align 8
@"_llgo_go/types.color" = linkonce global ptr null, align 8
@38 = private unnamed_addr constant [5 x i8] c"color", align 1
@_llgo_uint32 = linkonce global ptr null, align 8
@"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs" = linkonce global ptr null, align 8
@"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck" = linkonce global ptr null, align 8
@"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8" = linkonce global ptr null, align 8
@"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4" = linkonce global ptr null, align 8
@"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU" = linkonce global ptr null, align 8
@"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24" = linkonce global ptr null, align 8
@"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs" = linkonce global ptr null, align 8
@"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As" = linkonce global ptr null, align 8
@39 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@40 = private unnamed_addr constant [2 x i8] c"Id", align 1
@41 = private unnamed_addr constant [6 x i8] c"Parent", align 1
@42 = private unnamed_addr constant [3 x i8] c"Pkg", align 1
@43 = private unnamed_addr constant [14 x i8] c"go/types.color", align 1
@44 = private unnamed_addr constant [14 x i8] c"go/types.order", align 1
@45 = private unnamed_addr constant [15 x i8] c"go/types.sameId", align 1
@46 = private unnamed_addr constant [17 x i8] c"go/types.scopePos", align 1
@47 = private unnamed_addr constant [17 x i8] c"go/types.setColor", align 1
@48 = private unnamed_addr constant [17 x i8] c"go/types.setOrder", align 1
@49 = private unnamed_addr constant [18 x i8] c"go/types.setParent", align 1
@50 = private unnamed_addr constant [20 x i8] c"go/types.setScopePos", align 1
@51 = private unnamed_addr constant [16 x i8] c"go/types.setType", align 1
@"map[_llgo_string]_llgo_go/types.Object" = linkonce global ptr null, align 8
@52 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@53 = private unnamed_addr constant [4 x i8] c"keys", align 1
@54 = private unnamed_addr constant [5 x i8] c"elems", align 1
@55 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$nGYAB04LB1CZJ9DlyY8EWzP8alYO0Azz-KwekNVX6Go" = linkonce global ptr null, align 8
@56 = private unnamed_addr constant [6 x i8] c"parent", align 1
@57 = private unnamed_addr constant [8 x i8] c"children", align 1
@58 = private unnamed_addr constant [6 x i8] c"number", align 1
@59 = private unnamed_addr constant [3 x i8] c"pos", align 1
@60 = private unnamed_addr constant [3 x i8] c"end", align 1
@61 = private unnamed_addr constant [7 x i8] c"comment", align 1
@62 = private unnamed_addr constant [6 x i8] c"isFunc", align 1
@63 = private unnamed_addr constant [5 x i8] c"Child", align 1
@"_llgo_func$nO0mnkFgY6rMOlipeV7t6fGtS4syjNCFGrlUw6uqDZw" = linkonce global ptr null, align 8
@64 = private unnamed_addr constant [8 x i8] c"Children", align 1
@"_llgo_iter.Seq[*go/types.Scope]" = linkonce global ptr null, align 8
@65 = private unnamed_addr constant [4 x i8] c"iter", align 1
@66 = private unnamed_addr constant [20 x i8] c"Seq[*go/types.Scope]", align 1
@"_llgo_func$Jzp0ywi_4NekBrk_wFydAAYqp1OSKQnXLRvFZJlYaqI" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$Vte4JWLQuAoSzUe_ATm_2EUMfNIA-GUbuRWLCMCu00A" = linkonce global ptr null, align 8
@67 = private unnamed_addr constant [2 x i8] c"$f", align 1
@68 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_func$ULVlOy2QBVp29VENPIgOcULdAvYuVX1MkWTx7emFTws" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$51cJB4_3k4Xbdt5chH6LnecY9pP2ApbN8CwaSiVn-ZI" = linkonce global ptr null, align 8
@"_llgo_func$THm8qmPTkKxcAMaVpV47fAmuYGhuVrK5Y_lxLY96R5M" = linkonce global ptr null, align 8
@69 = private unnamed_addr constant [8 x i8] c"Contains", align 1
@"_llgo_func$rgwdu5FfiowFLJadtOxkFT8pjPAsP0MaWhOMNMv35L8" = linkonce global ptr null, align 8
@70 = private unnamed_addr constant [3 x i8] c"End", align 1
@71 = private unnamed_addr constant [9 x i8] c"Innermost", align 1
@"_llgo_func$TeFzo_SS49LpoAapuy-WCaRBIw3kF44ctzNUpO4kAE0" = linkonce global ptr null, align 8
@72 = private unnamed_addr constant [6 x i8] c"Insert", align 1
@"_llgo_func$enWcobWxIMmOVsFV77daZUctDRVrqRTZJcLhP4Uv7TA" = linkonce global ptr null, align 8
@73 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@74 = private unnamed_addr constant [6 x i8] c"Lookup", align 1
@"_llgo_func$onaewC21l11Vj-jqyVtlfJBd7YbSfpZXLfQYSh-7dO8" = linkonce global ptr null, align 8
@75 = private unnamed_addr constant [12 x i8] c"LookupParent", align 1
@"_llgo_func$uG85uSY5ZveTNzl6omKvET0EG95SB1LqUPbrZ8R9VVQ" = linkonce global ptr null, align 8
@76 = private unnamed_addr constant [5 x i8] c"Names", align 1
@"[]_llgo_string" = linkonce global ptr null, align 8
@"_llgo_func$jFdj6SlA_UPRf9U7evLht6nta0zR3HqjCKsWXmn7jik" = linkonce global ptr null, align 8
@77 = private unnamed_addr constant [11 x i8] c"NumChildren", align 1
@78 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@_llgo_io.Writer = linkonce global ptr null, align 8
@79 = private unnamed_addr constant [2 x i8] c"io", align 1
@80 = private unnamed_addr constant [6 x i8] c"Writer", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@"[]_llgo_uint8" = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@81 = private unnamed_addr constant [5 x i8] c"error", align 1
@82 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = linkonce global ptr null, align 8
@83 = private unnamed_addr constant [5 x i8] c"Write", align 1
@"_llgo_func$GGSQnVnXseCfBGhr7YtS6bq19bhH3EZ-NgxL74cZ5cE" = linkonce global ptr null, align 8
@84 = private unnamed_addr constant [11 x i8] c"_InsertLazy", align 1
@85 = private unnamed_addr constant [20 x i8] c"go/types._InsertLazy", align 1
@"_llgo_func$H760U2L-B0NynRORKLxeVLKpymtwvk_jVfIrf-7cIw0" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$LyNc7qQwNT69rAsd40-hWpKrofn8YbkhaXpwhewoqv0" = linkonce global ptr null, align 8
@"_llgo_func$9K7lSulbOo3VM9i4KUGt1GYcpOgkPoFD-M051Eho4T0" = linkonce global ptr null, align 8
@86 = private unnamed_addr constant [6 x i8] c"insert", align 1
@87 = private unnamed_addr constant [15 x i8] c"go/types.insert", align 1
@"_llgo_func$RlmKDEV44-QYDfX3Opw2KMN7qTzZmyHMmWP_8A6k184" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$GCHijofxUzEXxr663Q0n8BRh9Lp9SKvH3KXTp9IMXsA" = linkonce global ptr null, align 8
@88 = private unnamed_addr constant [3 x i8] c"pkg", align 1
@89 = private unnamed_addr constant [3 x i8] c"typ", align 1
@90 = private unnamed_addr constant [6 x i8] c"order_", align 1
@91 = private unnamed_addr constant [6 x i8] c"color_", align 1
@92 = private unnamed_addr constant [9 x i8] c"scopePos_", align 1
@93 = private unnamed_addr constant [3 x i8] c"cmp", align 1
@94 = private unnamed_addr constant [12 x i8] c"go/types.cmp", align 1
@"*_llgo_go/types.object" = linkonce global ptr null, align 8
@"_llgo_func$FXObRiLTDP4rC2sqO_IiB37Vi35MEL5_jHzXtNajtAw" = linkonce global ptr null, align 8
@95 = private unnamed_addr constant [5 x i8] c"order", align 1
@96 = private unnamed_addr constant [6 x i8] c"sameId", align 1
@97 = private unnamed_addr constant [8 x i8] c"scopePos", align 1
@98 = private unnamed_addr constant [8 x i8] c"setColor", align 1
@99 = private unnamed_addr constant [8 x i8] c"setOrder", align 1
@100 = private unnamed_addr constant [9 x i8] c"setParent", align 1
@101 = private unnamed_addr constant [11 x i8] c"setScopePos", align 1
@102 = private unnamed_addr constant [7 x i8] c"setType", align 1
@"*_llgo_go/types.Var" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$ZjBRlpUs3uHsKXeTSrDvSFnwhn75vb_EAAl3NLFFCGU" = linkonce global ptr null, align 8
@103 = private unnamed_addr constant [6 x i8] c"origin", align 1
@104 = private unnamed_addr constant [8 x i8] c"embedded", align 1
@105 = private unnamed_addr constant [7 x i8] c"isField", align 1
@106 = private unnamed_addr constant [7 x i8] c"isParam", align 1
@107 = private unnamed_addr constant [9 x i8] c"Anonymous", align 1
@108 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@109 = private unnamed_addr constant [7 x i8] c"IsField", align 1
@110 = private unnamed_addr constant [6 x i8] c"Origin", align 1
@"_llgo_func$fU95FOBSYY7fQZzRBD74_Zbxkiqcz1l7v3tKqcKJvdI" = linkonce global ptr null, align 8
@111 = private unnamed_addr constant [12 x i8] c"isDependency", align 1
@112 = private unnamed_addr constant [21 x i8] c"go/types.isDependency", align 1
@"github.com/goplus/llgo/cl/_testdata/gotypesissue.iface$ThkdgnELWFa9iYfc3Uaw23Mg3vAQt7dPrCxauyN5u8g" = linkonce global ptr null, align 8
@113 = private unnamed_addr constant [39 x i8] c"ERROR: Variable already exists in scope", align 1
@114 = private unnamed_addr constant [32 x i8] c"ERROR: Failed to lookup variable", align 1
@115 = private unnamed_addr constant [26 x i8] c"ERROR: Wrong variable name", align 1
@116 = private unnamed_addr constant [47 x i8] c"SUCCESS: Scope.Insert and Lookup work correctly", align 1

define void @"github.com/goplus/llgo/cl/_testdata/gotypesissue.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.init$guard", align 1
  call void @"go/token.init"()
  call void @"go/types.init"()
  call void @"github.com/goplus/llgo/cl/_testdata/gotypesissue.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/gotypesissue.main"() {
_llgo_0:
  %0 = call ptr @"go/types.NewPackage"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  %1 = call ptr @"go/types.(*Package).Scope"(ptr %0)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr @"go/types.Typ", align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %5 = icmp sge i64 2, %4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %5)
  %6 = getelementptr inbounds ptr, ptr %3, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr @"_llgo_go/types.Basic", align 8
  %9 = load ptr, ptr @"*_llgo_go/types.Basic", align 8
  %10 = load ptr, ptr @"_llgo_iface$aoV1AKboWw04nH6VUQif4ZQWVUEmtYoEx3kmS57mUoc", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %10, ptr %9)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, ptr %7, 1
  %14 = call ptr @"go/types.NewVar"(i64 0, ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13)
  %15 = load ptr, ptr @"_llgo_go/types.Var", align 8
  %16 = load ptr, ptr @"*_llgo_go/types.Var", align 8
  %17 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.iface$ThkdgnELWFa9iYfc3Uaw23Mg3vAQt7dPrCxauyN5u8g", align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %17, ptr %16)
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %14, 1
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*Scope).Insert"(ptr %1, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %23, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr null, 1
  %29 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  %30 = xor i1 %29, true
  br i1 %30, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 39 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*Scope).Lookup"(ptr %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 })
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %31)
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %33, 1
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr null, 1
  %39 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  br i1 %39, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 32 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %31)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, 0
  %42 = getelementptr ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = insertvalue { ptr, ptr } undef, ptr %43, 0
  %45 = insertvalue { ptr, ptr } %44, ptr %40, 1
  %46 = extractvalue { ptr, ptr } %45, 1
  %47 = extractvalue { ptr, ptr } %45, 0
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %47(ptr %46)
  %49 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %48, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 7 })
  %50 = xor i1 %49, true
  br i1 %50, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @115, i64 26 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_6:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 47 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"go/token.init"()

declare void @"go/types.init"()

declare ptr @"go/types.NewPackage"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"go/types.(*Package).Scope"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"go/types.NewVar"(i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/cl/_testdata/gotypesissue.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i64 25, i64 32, i64 0, i64 5)
  %1 = load ptr, ptr @"_llgo_go/types.Basic", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_go/types.Basic", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, i64 2, i64 8, i64 0, i64 0)
  %4 = load ptr, ptr @"_llgo_go/types.BasicKind", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @"_llgo_go/types.BasicKind", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %8, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_int, align 8
  br i1 %5, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %3, ptr %9, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %10 = load ptr, ptr @"_llgo_go/types.BasicKind", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, i64 2, i64 8, i64 0, i64 0)
  %12 = load ptr, ptr @"_llgo_go/types.BasicInfo", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %11, ptr @"_llgo_go/types.BasicInfo", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %14 = load ptr, ptr @_llgo_int, align 8
  br i1 %13, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %11, ptr %14, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %15 = load ptr, ptr @"_llgo_go/types.BasicInfo", align 8
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %18, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %19 = load ptr, ptr @_llgo_string, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, i64 2, i64 8, i64 0, i64 0)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, i64 2, i64 8, i64 0, i64 0)
  %22 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr %20, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %23 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr %21, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %25 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %24, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %26, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %22, ptr %27, align 8
  %28 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %26, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %23, ptr %28, align 8
  %29 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %26, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %25, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 3, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 3, 2
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32)
  store ptr %33, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$-yauDX19XYCZO3MVOxPDeHKW0qeit_1b7FvyRKdhNII", align 8
  %34 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$-yauDX19XYCZO3MVOxPDeHKW0qeit_1b7FvyRKdhNII", align 8
  br i1 %2, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 9 }, i64 2, i64 8, i64 0, i64 0)
  %36 = load ptr, ptr @"_llgo_func$CUS3js_cii23mFqaGPDYW9HMeUJz7Mb6uXdGPwXtACQ", align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_17, label %_llgo_18

_llgo_16:                                         ; preds = %_llgo_28, %_llgo_14
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, i64 25, i64 32, i64 0, i64 5)
  %39 = load ptr, ptr @"*_llgo_go/types.Basic", align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_29, label %_llgo_30

_llgo_17:                                         ; preds = %_llgo_15
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 0, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 0, 2
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %46 = getelementptr ptr, ptr %45, i64 0
  store ptr %35, ptr %46, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %45, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 1, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 2
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %50)
  store ptr %50, ptr @"_llgo_func$CUS3js_cii23mFqaGPDYW9HMeUJz7Mb6uXdGPwXtACQ", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_15
  %51 = load ptr, ptr @"_llgo_func$CUS3js_cii23mFqaGPDYW9HMeUJz7Mb6uXdGPwXtACQ", align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %51, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"go/types.(*Basic).Info", 2
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"go/types.(*Basic).Info", 3
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, i64 2, i64 8, i64 0, i64 0)
  %56 = load ptr, ptr @"_llgo_func$Bvh59c_tFOFatOUQ4-E6traW4XxY5SobLlwi5r9hl10", align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 0, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 0, 2
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %63 = getelementptr ptr, ptr %62, i64 0
  store ptr %55, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %62, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 1, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 2
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %67)
  store ptr %67, ptr @"_llgo_func$Bvh59c_tFOFatOUQ4-E6traW4XxY5SobLlwi5r9hl10", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %68 = load ptr, ptr @"_llgo_func$Bvh59c_tFOFatOUQ4-E6traW4XxY5SobLlwi5r9hl10", align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %68, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %69, ptr @"go/types.(*Basic).Kind", 2
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %70, ptr @"go/types.(*Basic).Kind", 3
  %72 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 0, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 0, 2
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %80 = getelementptr ptr, ptr %79, i64 0
  store ptr %78, ptr %80, align 8
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %79, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, i64 1, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 1, 2
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %84)
  store ptr %84, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %85 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %85, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"go/types.(*Basic).Name", 2
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr @"go/types.(*Basic).Name", 3
  %89 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %89, 1
  %91 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %90, ptr @"go/types.(*Basic).String", 2
  %92 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %91, ptr @"go/types.(*Basic).String", 3
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 })
  %94 = load ptr, ptr @"_llgo_go/types.Type", align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  store ptr %93, ptr @"_llgo_go/types.Type", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %96 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 })
  %98 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %100, 0
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i64 0, 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, i64 0, 2
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %105 = getelementptr ptr, ptr %104, i64 0
  store ptr %97, ptr %105, align 8
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %104, 0
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, i64 1, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 1, 2
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %109)
  store ptr %109, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %110 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  br i1 %95, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %96, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 10 }, ptr undef }, ptr %110, 1
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %114 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %113, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %111, ptr %114, align 8
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %113, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %112, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %113, 0
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, i64 2, 1
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %93, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %119 = load ptr, ptr @"_llgo_go/types.Type", align 8
  %120 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %120, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %121, ptr @"go/types.(*Basic).Underlying", 2
  %123 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %122, ptr @"go/types.(*Basic).Underlying", 3
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 200)
  %125 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %124, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr %125, align 8
  %126 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %124, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %71, ptr %126, align 8
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %124, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %124, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %92, ptr %128, align 8
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %124, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %123, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %124, 0
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, i64 5, 1
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, i64 5, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %34, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %132)
  br label %_llgo_16

_llgo_29:                                         ; preds = %_llgo_16
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %133)
  store ptr %133, ptr @"*_llgo_go/types.Basic", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_16
  %134 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %135 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %136 = load ptr, ptr @"_llgo_iface$aoV1AKboWw04nH6VUQif4ZQWVUEmtYoEx3kmS57mUoc", align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %138 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %134, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 10 }, ptr undef }, ptr %135, 1
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %141 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %140, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %138, ptr %141, align 8
  %142 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %140, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %139, ptr %142, align 8
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %140, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 2, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i64 2, 2
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %145)
  store ptr %146, ptr @"_llgo_iface$aoV1AKboWw04nH6VUQif4ZQWVUEmtYoEx3kmS57mUoc", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 3 }, i64 25, i64 88, i64 0, i64 23)
  %148 = load ptr, ptr @"_llgo_go/types.Var", align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  store ptr %147, ptr @"_llgo_go/types.Var", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %150 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, i64 25, i64 72, i64 0, i64 18)
  store ptr %150, ptr @"_llgo_go/types.object", align 8
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %152 = load ptr, ptr @"_llgo_go/types.Scope", align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  store ptr %151, ptr @"_llgo_go/types.Scope", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %155 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %154)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %157)
  store ptr %157, ptr @"*_llgo_go/types.Scope", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %158 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %159 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %161 = load ptr, ptr @"[]*_llgo_go/types.Scope", align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %160)
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %163)
  store ptr %164, ptr @"[]*_llgo_go/types.Scope", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %165 = load ptr, ptr @"[]*_llgo_go/types.Scope", align 8
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %167 = load ptr, ptr @"_llgo_go/types.Object", align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  store ptr %166, ptr @"_llgo_go/types.Object", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %169 = load ptr, ptr @_llgo_bool, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %171, ptr @_llgo_bool, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %172 = load ptr, ptr @_llgo_bool, align 8
  %173 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %174 = icmp eq ptr %173, null
  br i1 %174, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %175, 0
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %176, i64 0, 1
  %178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %177, i64 0, 2
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %181 = getelementptr ptr, ptr %180, i64 0
  store ptr %179, ptr %181, align 8
  %182 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %180, 0
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182, i64 1, 1
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, i64 1, 2
  %185 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %178, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %184, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %185)
  store ptr %185, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %186 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %187 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %188 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %189 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %191 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %194 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %193, 0
  %195 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, i64 0, 1
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, i64 0, 2
  %197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %190)
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %199 = getelementptr ptr, ptr %198, i64 0
  store ptr %197, ptr %199, align 8
  %200 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %198, 0
  %201 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %200, i64 1, 1
  %202 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %201, i64 1, 2
  %203 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %202, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %203)
  store ptr %203, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %204 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %206 = load ptr, ptr @"_llgo_go/types.Package", align 8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  store ptr %205, ptr @"_llgo_go/types.Package", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %208 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %210 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %209)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %212)
  store ptr %212, ptr @"*_llgo_go/types.Package", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %213 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %214 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %215 = load ptr, ptr @"[]*_llgo_go/types.Package", align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %217 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %214)
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %217)
  store ptr %218, ptr @"[]*_llgo_go/types.Package", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %219 = load ptr, ptr @"[]*_llgo_go/types.Package", align 8
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %223 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %222, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %224 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %225 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %224, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %220)
  %227 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr %226, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %221)
  %229 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %228)
  %230 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr %229, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %231 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %232 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr %231, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %234 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr %233, i64 65, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %236 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 3 }, ptr %235, i64 66, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %238 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 9 }, ptr %237, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %239 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 448)
  %240 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %223, ptr %240, align 8
  %241 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %225, ptr %241, align 8
  %242 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %227, ptr %242, align 8
  %243 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %230, ptr %243, align 8
  %244 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %232, ptr %244, align 8
  %245 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %234, ptr %245, align 8
  %246 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %236, ptr %246, align 8
  %247 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %239, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %238, ptr %247, align 8
  %248 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %239, 0
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248, i64 8, 1
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %249, i64 8, 2
  %251 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %250)
  store ptr %251, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$poNArTEcKkTlIAxIqV2hAy3ZVEFpV2Ts6-ouuE-7A4I", align 8
  %252 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$poNArTEcKkTlIAxIqV2hAy3ZVEFpV2Ts6-ouuE-7A4I", align 8
  br i1 %207, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %253 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %254 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %253, 1
  %255 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %254, ptr @"go/types.(*Package).Complete", 2
  %256 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %255, ptr @"go/types.(*Package).Complete", 3
  %257 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %258 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %257, 1
  %259 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %258, ptr @"go/types.(*Package).GoVersion", 2
  %260 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %259, ptr @"go/types.(*Package).GoVersion", 3
  %261 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %262 = load ptr, ptr @"[]*_llgo_go/types.Package", align 8
  %263 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %264 = load ptr, ptr @"_llgo_func$fQ0IHrfyLUOt9JiKczw9IsP7HzMD-ONp8Q8kvcDfMts", align 8
  %265 = icmp eq ptr %264, null
  br i1 %265, label %_llgo_57, label %_llgo_58

_llgo_56:                                         ; preds = %_llgo_64, %_llgo_54
  %266 = load ptr, ptr @"_llgo_go/types.Package", align 8
  %267 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %268 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %269 = load ptr, ptr @"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs", align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %_llgo_65, label %_llgo_66

_llgo_57:                                         ; preds = %_llgo_55
  %271 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %272 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %271, 0
  %273 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %272, i64 0, 1
  %274 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %273, i64 0, 2
  %275 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %263)
  %276 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %275)
  %277 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %278 = getelementptr ptr, ptr %277, i64 0
  store ptr %276, ptr %278, align 8
  %279 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %277, 0
  %280 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %279, i64 1, 1
  %281 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, i64 1, 2
  %282 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %281, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %282)
  store ptr %282, ptr @"_llgo_func$fQ0IHrfyLUOt9JiKczw9IsP7HzMD-ONp8Q8kvcDfMts", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_55
  %283 = load ptr, ptr @"_llgo_func$fQ0IHrfyLUOt9JiKczw9IsP7HzMD-ONp8Q8kvcDfMts", align 8
  %284 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %283, 1
  %285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %284, ptr @"go/types.(*Package).Imports", 2
  %286 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %285, ptr @"go/types.(*Package).Imports", 3
  %287 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %288 = icmp eq ptr %287, null
  br i1 %288, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %289 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %290 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %289, 0
  %291 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %290, i64 0, 1
  %292 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %291, i64 0, 2
  %293 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %294 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %293, 0
  %295 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %294, i64 0, 1
  %296 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %295, i64 0, 2
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %292, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %296, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %297)
  store ptr %297, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %298 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %299 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %298, 1
  %300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %299, ptr @"go/types.(*Package).MarkComplete", 2
  %301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %300, ptr @"go/types.(*Package).MarkComplete", 3
  %302 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %303 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %302, 1
  %304 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %303, ptr @"go/types.(*Package).Name", 2
  %305 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %304, ptr @"go/types.(*Package).Name", 3
  %306 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %307 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %306, 1
  %308 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %307, ptr @"go/types.(*Package).Path", 2
  %309 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %308, ptr @"go/types.(*Package).Path", 3
  %310 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %311 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %311, 1
  %313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %312, ptr @"go/types.(*Package).Scope", 2
  %314 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %313, ptr @"go/types.(*Package).Scope", 3
  %315 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %316 = load ptr, ptr @"[]*_llgo_go/types.Package", align 8
  %317 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %318 = load ptr, ptr @"_llgo_func$32WZjICifIWEucoyS5Q14toQ5izCqGF5lm2PPlJYsM8", align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %320 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %317)
  %321 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %320)
  %322 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %323 = getelementptr ptr, ptr %322, i64 0
  store ptr %321, ptr %323, align 8
  %324 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %322, 0
  %325 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %324, i64 1, 1
  %326 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %325, i64 1, 2
  %327 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %328 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %327, 0
  %329 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %328, i64 0, 1
  %330 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %329, i64 0, 2
  %331 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %326, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %330, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %331)
  store ptr %331, ptr @"_llgo_func$32WZjICifIWEucoyS5Q14toQ5izCqGF5lm2PPlJYsM8", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %332 = load ptr, ptr @"_llgo_func$32WZjICifIWEucoyS5Q14toQ5izCqGF5lm2PPlJYsM8", align 8
  %333 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %332, 1
  %334 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %333, ptr @"go/types.(*Package).SetImports", 2
  %335 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %334, ptr @"go/types.(*Package).SetImports", 3
  %336 = load ptr, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA", align 8
  %337 = icmp eq ptr %336, null
  br i1 %337, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %338 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %339 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %340 = getelementptr ptr, ptr %339, i64 0
  store ptr %338, ptr %340, align 8
  %341 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %339, 0
  %342 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %341, i64 1, 1
  %343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %342, i64 1, 2
  %344 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %345 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %344, 0
  %346 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %345, i64 0, 1
  %347 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %346, i64 0, 2
  %348 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %343, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %347, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %348)
  store ptr %348, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %349 = load ptr, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA", align 8
  %350 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %349, 1
  %351 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %350, ptr @"go/types.(*Package).SetName", 2
  %352 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %351, ptr @"go/types.(*Package).SetName", 3
  %353 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %354 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %353, 1
  %355 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %354, ptr @"go/types.(*Package).String", 2
  %356 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %355, ptr @"go/types.(*Package).String", 3
  %357 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 400)
  %358 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %256, ptr %358, align 8
  %359 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %260, ptr %359, align 8
  %360 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %286, ptr %360, align 8
  %361 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %301, ptr %361, align 8
  %362 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %305, ptr %362, align 8
  %363 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %309, ptr %363, align 8
  %364 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %314, ptr %364, align 8
  %365 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %335, ptr %365, align 8
  %366 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %352, ptr %366, align 8
  %367 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %357, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %356, ptr %367, align 8
  %368 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %357, 0
  %369 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %368, i64 10, 1
  %370 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %369, i64 10, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %205, ptr %252, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %370)
  br label %_llgo_56

_llgo_65:                                         ; preds = %_llgo_56
  %371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %372 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %371, 0
  %373 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %372, i64 0, 1
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %373, i64 0, 2
  %375 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %268)
  %376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %377 = getelementptr ptr, ptr %376, i64 0
  store ptr %375, ptr %377, align 8
  %378 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %376, 0
  %379 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %378, i64 1, 1
  %380 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %379, i64 1, 2
  %381 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %380, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %381)
  store ptr %381, ptr @"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_56
  %382 = load ptr, ptr @"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs", align 8
  %383 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %384 = load ptr, ptr @"_llgo_go/token.Pos", align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %_llgo_67, label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_66
  store ptr %383, ptr @"_llgo_go/token.Pos", align 8
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %386 = load ptr, ptr @_llgo_int, align 8
  br i1 %385, label %_llgo_69, label %_llgo_70

_llgo_69:                                         ; preds = %_llgo_68
  %387 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %388 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %387, 1
  %389 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %388, ptr @"go/token.(*Pos).IsValid", 2
  %390 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %389, ptr @"go/token.(*Pos).IsValid", 3
  %391 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %387, 1
  %392 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %391, ptr @"go/token.(*Pos).IsValid", 2
  %393 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %392, ptr @"go/token.Pos.IsValid", 3
  %394 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %395 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %394, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %393, ptr %395, align 8
  %396 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %394, 0
  %397 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, i64 1, 1
  %398 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %397, i64 1, 2
  %399 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %400 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %399, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %390, ptr %400, align 8
  %401 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %399, 0
  %402 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %401, i64 1, 1
  %403 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %402, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %383, ptr %386, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %398, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %403)
  br label %_llgo_70

_llgo_70:                                         ; preds = %_llgo_69, %_llgo_68
  %404 = load ptr, ptr @"_llgo_go/token.Pos", align 8
  %405 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %406 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %407 = icmp eq ptr %406, null
  br i1 %407, label %_llgo_71, label %_llgo_72

_llgo_71:                                         ; preds = %_llgo_70
  %408 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %409 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %408, 0
  %410 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %409, i64 0, 1
  %411 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %410, i64 0, 2
  %412 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %413 = getelementptr ptr, ptr %412, i64 0
  store ptr %405, ptr %413, align 8
  %414 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %412, 0
  %415 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %414, i64 1, 1
  %416 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %415, i64 1, 2
  %417 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %411, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %416, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %417)
  store ptr %417, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  br label %_llgo_72

_llgo_72:                                         ; preds = %_llgo_71, %_llgo_70
  %418 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %419 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %420 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %421 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, i64 10, i64 4, i64 1, i64 1)
  store ptr %421, ptr @"_llgo_go/types.color", align 8
  %422 = load ptr, ptr @_llgo_uint32, align 8
  %423 = icmp eq ptr %422, null
  br i1 %423, label %_llgo_73, label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_72
  %424 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %424, ptr @_llgo_uint32, align 8
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %425 = load ptr, ptr @_llgo_uint32, align 8
  %426 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %427 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %426, 1
  %428 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %427, ptr @"go/types.(*color).String", 2
  %429 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %428, ptr @"go/types.(*color).String", 3
  %430 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %426, 1
  %431 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %430, ptr @"go/types.(*color).String", 2
  %432 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %431, ptr @"go/types.color.String", 3
  %433 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %434 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %433, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %432, ptr %434, align 8
  %435 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %433, 0
  %436 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %435, i64 1, 1
  %437 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %436, i64 1, 2
  %438 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %438, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %429, ptr %439, align 8
  %440 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %438, 0
  %441 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %440, i64 1, 1
  %442 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %441, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %421, ptr %425, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %437, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %442)
  %443 = load ptr, ptr @"_llgo_go/types.color", align 8
  %444 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, i64 10, i64 4, i64 1, i64 1)
  %445 = load ptr, ptr @"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs", align 8
  %446 = icmp eq ptr %445, null
  br i1 %446, label %_llgo_75, label %_llgo_76

_llgo_75:                                         ; preds = %_llgo_74
  %447 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %448 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %447, 0
  %449 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %448, i64 0, 1
  %450 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %449, i64 0, 2
  %451 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %452 = getelementptr ptr, ptr %451, i64 0
  store ptr %444, ptr %452, align 8
  %453 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %451, 0
  %454 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %453, i64 1, 1
  %455 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %454, i64 1, 2
  %456 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %450, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %455, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %456)
  store ptr %456, ptr @"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs", align 8
  br label %_llgo_76

_llgo_76:                                         ; preds = %_llgo_75, %_llgo_74
  %457 = load ptr, ptr @"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs", align 8
  %458 = load ptr, ptr @"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck", align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %_llgo_77, label %_llgo_78

_llgo_77:                                         ; preds = %_llgo_76
  %460 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %461 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %460, 0
  %462 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %461, i64 0, 1
  %463 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %462, i64 0, 2
  %464 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %465 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %466 = getelementptr ptr, ptr %465, i64 0
  store ptr %464, ptr %466, align 8
  %467 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %465, 0
  %468 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %467, i64 1, 1
  %469 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %468, i64 1, 2
  %470 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %463, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %469, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %470)
  store ptr %470, ptr @"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck", align 8
  br label %_llgo_78

_llgo_78:                                         ; preds = %_llgo_77, %_llgo_76
  %471 = load ptr, ptr @"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck", align 8
  %472 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %473 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %474 = load ptr, ptr @"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8", align 8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %_llgo_79, label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_78
  %476 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %473)
  %477 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %478 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %479 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %480 = getelementptr ptr, ptr %479, i64 0
  store ptr %476, ptr %480, align 8
  %481 = getelementptr ptr, ptr %479, i64 1
  store ptr %477, ptr %481, align 8
  %482 = getelementptr ptr, ptr %479, i64 2
  store ptr %478, ptr %482, align 8
  %483 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %479, 0
  %484 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %483, i64 3, 1
  %485 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %484, i64 3, 2
  %486 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %487 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %488 = getelementptr ptr, ptr %487, i64 0
  store ptr %486, ptr %488, align 8
  %489 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %487, 0
  %490 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %489, i64 1, 1
  %491 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %490, i64 1, 2
  %492 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %485, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %491, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %492)
  store ptr %492, ptr @"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8", align 8
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %493 = load ptr, ptr @"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8", align 8
  %494 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %495 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, i64 10, i64 4, i64 1, i64 1)
  %496 = load ptr, ptr @"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4", align 8
  %497 = icmp eq ptr %496, null
  br i1 %497, label %_llgo_81, label %_llgo_82

_llgo_81:                                         ; preds = %_llgo_80
  %498 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %499 = getelementptr ptr, ptr %498, i64 0
  store ptr %495, ptr %499, align 8
  %500 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %498, 0
  %501 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %500, i64 1, 1
  %502 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %501, i64 1, 2
  %503 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %504 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %503, 0
  %505 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %504, i64 0, 1
  %506 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %505, i64 0, 2
  %507 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %502, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %506, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %507)
  store ptr %507, ptr @"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4", align 8
  br label %_llgo_82

_llgo_82:                                         ; preds = %_llgo_81, %_llgo_80
  %508 = load ptr, ptr @"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4", align 8
  %509 = load ptr, ptr @"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU", align 8
  %510 = icmp eq ptr %509, null
  br i1 %510, label %_llgo_83, label %_llgo_84

_llgo_83:                                         ; preds = %_llgo_82
  %511 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %512 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %513 = getelementptr ptr, ptr %512, i64 0
  store ptr %511, ptr %513, align 8
  %514 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %512, 0
  %515 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %514, i64 1, 1
  %516 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %515, i64 1, 2
  %517 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %518 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %517, 0
  %519 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %518, i64 0, 1
  %520 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %519, i64 0, 2
  %521 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %516, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %520, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %521)
  store ptr %521, ptr @"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU", align 8
  br label %_llgo_84

_llgo_84:                                         ; preds = %_llgo_83, %_llgo_82
  %522 = load ptr, ptr @"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU", align 8
  %523 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %524 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %525 = load ptr, ptr @"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24", align 8
  %526 = icmp eq ptr %525, null
  br i1 %526, label %_llgo_85, label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_84
  %527 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %524)
  %528 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %529 = getelementptr ptr, ptr %528, i64 0
  store ptr %527, ptr %529, align 8
  %530 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %528, 0
  %531 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %530, i64 1, 1
  %532 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %531, i64 1, 2
  %533 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %534 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %533, 0
  %535 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %534, i64 0, 1
  %536 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %535, i64 0, 2
  %537 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %532, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %536, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %537)
  store ptr %537, ptr @"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24", align 8
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %538 = load ptr, ptr @"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24", align 8
  %539 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %540 = load ptr, ptr @"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs", align 8
  %541 = icmp eq ptr %540, null
  br i1 %541, label %_llgo_87, label %_llgo_88

_llgo_87:                                         ; preds = %_llgo_86
  %542 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %543 = getelementptr ptr, ptr %542, i64 0
  store ptr %539, ptr %543, align 8
  %544 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %542, 0
  %545 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %544, i64 1, 1
  %546 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %545, i64 1, 2
  %547 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %548 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %547, 0
  %549 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %548, i64 0, 1
  %550 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %549, i64 0, 2
  %551 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %546, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %550, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %551)
  store ptr %551, ptr @"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs", align 8
  br label %_llgo_88

_llgo_88:                                         ; preds = %_llgo_87, %_llgo_86
  %552 = load ptr, ptr @"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs", align 8
  %553 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 })
  %554 = load ptr, ptr @"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As", align 8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %_llgo_89, label %_llgo_90

_llgo_89:                                         ; preds = %_llgo_88
  %556 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %557 = getelementptr ptr, ptr %556, i64 0
  store ptr %553, ptr %557, align 8
  %558 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %556, 0
  %559 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %558, i64 1, 1
  %560 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %559, i64 1, 2
  %561 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %562 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %561, 0
  %563 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %562, i64 0, 1
  %564 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %563, i64 0, 2
  %565 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %560, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %564, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %565)
  store ptr %565, ptr @"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As", align 8
  br label %_llgo_90

_llgo_90:                                         ; preds = %_llgo_89, %_llgo_88
  %566 = load ptr, ptr @"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As", align 8
  br i1 %168, label %_llgo_91, label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_90
  %567 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr undef }, ptr %186, 1
  %568 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr undef }, ptr %187, 1
  %569 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %188, 1
  %570 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr undef }, ptr %204, 1
  %571 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr undef }, ptr %382, 1
  %572 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr undef }, ptr %418, 1
  %573 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %419, 1
  %574 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 }, ptr undef }, ptr %420, 1
  %575 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 14 }, ptr undef }, ptr %457, 1
  %576 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr undef }, ptr %471, 1
  %577 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 15 }, ptr undef }, ptr %493, 1
  %578 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 17 }, ptr undef }, ptr %494, 1
  %579 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 17 }, ptr undef }, ptr %508, 1
  %580 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 17 }, ptr undef }, ptr %522, 1
  %581 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 18 }, ptr undef }, ptr %538, 1
  %582 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 20 }, ptr undef }, ptr %552, 1
  %583 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 16 }, ptr undef }, ptr %566, 1
  %584 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 408)
  %585 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %567, ptr %585, align 8
  %586 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %568, ptr %586, align 8
  %587 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %569, ptr %587, align 8
  %588 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %570, ptr %588, align 8
  %589 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %571, ptr %589, align 8
  %590 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %572, ptr %590, align 8
  %591 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %573, ptr %591, align 8
  %592 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %574, ptr %592, align 8
  %593 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %575, ptr %593, align 8
  %594 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %576, ptr %594, align 8
  %595 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %577, ptr %595, align 8
  %596 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %578, ptr %596, align 8
  %597 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %579, ptr %597, align 8
  %598 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %580, ptr %598, align 8
  %599 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %581, ptr %599, align 8
  %600 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %582, ptr %600, align 8
  %601 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %584, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %583, ptr %601, align 8
  %602 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %584, 0
  %603 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %602, i64 17, 1
  %604 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %603, i64 17, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %166, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %604)
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %605 = load ptr, ptr @"_llgo_go/types.Object", align 8
  %606 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %607 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %608 = load ptr, ptr @"map[_llgo_string]_llgo_go/types.Object", align 8
  %609 = icmp eq ptr %608, null
  br i1 %609, label %_llgo_93, label %_llgo_94

_llgo_93:                                         ; preds = %_llgo_92
  %610 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %611 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %612 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %611)
  %613 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 7 }, ptr %612, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %614 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %615 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %614)
  %616 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr %615, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %617 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %607)
  %618 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 5 }, ptr %617, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %619 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %620 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 8 }, ptr %619, i64 264, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %621 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %622 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %621, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %613, ptr %622, align 8
  %623 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %621, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %616, ptr %623, align 8
  %624 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %621, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %618, ptr %624, align 8
  %625 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %621, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %620, ptr %625, align 8
  %626 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %621, 0
  %627 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %626, i64 4, 1
  %628 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %627, i64 4, 2
  %629 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 272, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %628)
  %630 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %610, ptr %606, ptr %629, i64 12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %630)
  store ptr %630, ptr @"map[_llgo_string]_llgo_go/types.Object", align 8
  br label %_llgo_94

_llgo_94:                                         ; preds = %_llgo_93, %_llgo_92
  %631 = load ptr, ptr @"map[_llgo_string]_llgo_go/types.Object", align 8
  %632 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %633 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %634 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %635 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %636 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %637 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %638 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %632)
  %639 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr %638, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %640 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %633)
  %641 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %640)
  %642 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 8 }, ptr %641, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %643 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %644 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 6 }, ptr %643, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %645 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %646 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %647 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %646)
  %648 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 7 }, ptr %647, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %649 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %650 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %649)
  %651 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 4 }, ptr %650, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %652 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %635)
  %653 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 5 }, ptr %652, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %654 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %655 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 8 }, ptr %654, i64 264, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %656 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %657 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %656, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %648, ptr %657, align 8
  %658 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %656, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %651, ptr %658, align 8
  %659 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %656, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %653, ptr %659, align 8
  %660 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %656, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %655, ptr %660, align 8
  %661 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %656, 0
  %662 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %661, i64 4, 1
  %663 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %662, i64 4, 2
  %664 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 272, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %663)
  %665 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %645, ptr %634, ptr %664, i64 12)
  %666 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 5 }, ptr %665, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %667 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 3 }, ptr %636, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %668 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 3 }, ptr %637, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %669 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %670 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 7 }, ptr %669, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %671 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %672 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 6 }, ptr %671, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %673 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 448)
  %674 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %639, ptr %674, align 8
  %675 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %642, ptr %675, align 8
  %676 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %644, ptr %676, align 8
  %677 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %666, ptr %677, align 8
  %678 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %667, ptr %678, align 8
  %679 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %668, ptr %679, align 8
  %680 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %670, ptr %680, align 8
  %681 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %673, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %672, ptr %681, align 8
  %682 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %673, 0
  %683 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %682, i64 8, 1
  %684 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %683, i64 8, 2
  %685 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %684)
  store ptr %685, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$nGYAB04LB1CZJ9DlyY8EWzP8alYO0Azz-KwekNVX6Go", align 8
  %686 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$nGYAB04LB1CZJ9DlyY8EWzP8alYO0Azz-KwekNVX6Go", align 8
  br i1 %153, label %_llgo_95, label %_llgo_96

_llgo_95:                                         ; preds = %_llgo_94
  %687 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %688 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %689 = load ptr, ptr @"_llgo_func$nO0mnkFgY6rMOlipeV7t6fGtS4syjNCFGrlUw6uqDZw", align 8
  %690 = icmp eq ptr %689, null
  br i1 %690, label %_llgo_97, label %_llgo_98

_llgo_96:                                         ; preds = %_llgo_148, %_llgo_94
  %691 = load ptr, ptr @"_llgo_go/types.Scope", align 8
  %692 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %693 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %694 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %695 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %696 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 7 }, i64 25, i64 88, i64 0, i64 10)
  %697 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 })
  %698 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 5 }, i64 10, i64 4, i64 1, i64 1)
  %699 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %700 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %694)
  %701 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr %700, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %702 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 3 }, ptr %695, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %703 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %696)
  %704 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 3 }, ptr %703, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %705 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %706 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %705, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %707 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 3 }, ptr %697, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %708 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  %709 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 6 }, ptr %708, i64 56, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %710 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 6 }, ptr %698, i64 60, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %711 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 9 }, ptr %699, i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %712 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 448)
  %713 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %701, ptr %713, align 8
  %714 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %702, ptr %714, align 8
  %715 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %704, ptr %715, align 8
  %716 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %706, ptr %716, align 8
  %717 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %707, ptr %717, align 8
  %718 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 5
  store %"github.com/goplus/llgo/runtime/abi.StructField" %709, ptr %718, align 8
  %719 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 6
  store %"github.com/goplus/llgo/runtime/abi.StructField" %710, ptr %719, align 8
  %720 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %712, i64 7
  store %"github.com/goplus/llgo/runtime/abi.StructField" %711, ptr %720, align 8
  %721 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %712, 0
  %722 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %721, i64 8, 1
  %723 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %722, i64 8, 2
  %724 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %723)
  store ptr %724, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$GCHijofxUzEXxr663Q0n8BRh9Lp9SKvH3KXTp9IMXsA", align 8
  %725 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$GCHijofxUzEXxr663Q0n8BRh9Lp9SKvH3KXTp9IMXsA", align 8
  %726 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %727 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %726, 1
  %728 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %727, ptr @"go/types.(*object).Exported", 2
  %729 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %728, ptr @"go/types.(*object).Exported", 3
  %730 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %731 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %730, 1
  %732 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %731, ptr @"go/types.(*object).Id", 2
  %733 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %732, ptr @"go/types.(*object).Id", 3
  %734 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %735 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %734, 1
  %736 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %735, ptr @"go/types.(*object).Name", 2
  %737 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %736, ptr @"go/types.(*object).Name", 3
  %738 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %739 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %740 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %739, 1
  %741 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %740, ptr @"go/types.(*object).Parent", 2
  %742 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %741, ptr @"go/types.(*object).Parent", 3
  %743 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %744 = load ptr, ptr @"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs", align 8
  %745 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %744, 1
  %746 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %745, ptr @"go/types.(*object).Pkg", 2
  %747 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %746, ptr @"go/types.(*object).Pkg", 3
  %748 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %749 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %748, 1
  %750 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %749, ptr @"go/types.(*object).Pos", 2
  %751 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %750, ptr @"go/types.(*object).Pos", 3
  %752 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %753 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %752, 1
  %754 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %753, ptr @"go/types.(*object).String", 2
  %755 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %754, ptr @"go/types.(*object).String", 3
  %756 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %757 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %756, 1
  %758 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %757, ptr @"go/types.(*object).Type", 2
  %759 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %758, ptr @"go/types.(*object).Type", 3
  %760 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, i64 25, i64 72, i64 0, i64 18)
  %761 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %760)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %761)
  store ptr %761, ptr @"*_llgo_go/types.object", align 8
  %762 = load ptr, ptr @"*_llgo_go/types.object", align 8
  %763 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, i64 25, i64 72, i64 0, i64 18)
  %764 = load ptr, ptr @"_llgo_func$FXObRiLTDP4rC2sqO_IiB37Vi35MEL5_jHzXtNajtAw", align 8
  %765 = icmp eq ptr %764, null
  br i1 %765, label %_llgo_149, label %_llgo_150

_llgo_97:                                         ; preds = %_llgo_95
  %766 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %767 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %768 = getelementptr ptr, ptr %767, i64 0
  store ptr %766, ptr %768, align 8
  %769 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %767, 0
  %770 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %769, i64 1, 1
  %771 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %770, i64 1, 2
  %772 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %688)
  %773 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %774 = getelementptr ptr, ptr %773, i64 0
  store ptr %772, ptr %774, align 8
  %775 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %773, 0
  %776 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %775, i64 1, 1
  %777 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %776, i64 1, 2
  %778 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %771, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %777, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %778)
  store ptr %778, ptr @"_llgo_func$nO0mnkFgY6rMOlipeV7t6fGtS4syjNCFGrlUw6uqDZw", align 8
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_95
  %779 = load ptr, ptr @"_llgo_func$nO0mnkFgY6rMOlipeV7t6fGtS4syjNCFGrlUw6uqDZw", align 8
  %780 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %779, 1
  %781 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %780, ptr @"go/types.(*Scope).Child", 2
  %782 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %781, ptr @"go/types.(*Scope).Child", 3
  %783 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 20 }, i64 25, i64 24, i64 0, i64 0)
  %784 = load ptr, ptr @"_llgo_iter.Seq[*go/types.Scope]", align 8
  %785 = icmp eq ptr %784, null
  br i1 %785, label %_llgo_99, label %_llgo_100

_llgo_99:                                         ; preds = %_llgo_98
  store ptr %783, ptr @"_llgo_iter.Seq[*go/types.Scope]", align 8
  br label %_llgo_100

_llgo_100:                                        ; preds = %_llgo_99, %_llgo_98
  %786 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %787 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %788 = load ptr, ptr @"_llgo_func$Jzp0ywi_4NekBrk_wFydAAYqp1OSKQnXLRvFZJlYaqI", align 8
  %789 = icmp eq ptr %788, null
  br i1 %789, label %_llgo_101, label %_llgo_102

_llgo_101:                                        ; preds = %_llgo_100
  %790 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %787)
  %791 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %792 = getelementptr ptr, ptr %791, i64 0
  store ptr %790, ptr %792, align 8
  %793 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %791, 0
  %794 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %793, i64 1, 1
  %795 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %794, i64 1, 2
  %796 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %797 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %798 = getelementptr ptr, ptr %797, i64 0
  store ptr %796, ptr %798, align 8
  %799 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %797, 0
  %800 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %799, i64 1, 1
  %801 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %800, i64 1, 2
  %802 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %795, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %801, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %802)
  store ptr %802, ptr @"_llgo_func$Jzp0ywi_4NekBrk_wFydAAYqp1OSKQnXLRvFZJlYaqI", align 8
  br label %_llgo_102

_llgo_102:                                        ; preds = %_llgo_101, %_llgo_100
  %803 = load ptr, ptr @"_llgo_func$Jzp0ywi_4NekBrk_wFydAAYqp1OSKQnXLRvFZJlYaqI", align 8
  %804 = load ptr, ptr @_llgo_Pointer, align 8
  %805 = icmp eq ptr %804, null
  br i1 %805, label %_llgo_103, label %_llgo_104

_llgo_103:                                        ; preds = %_llgo_102
  %806 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %806)
  store ptr %806, ptr @_llgo_Pointer, align 8
  br label %_llgo_104

_llgo_104:                                        ; preds = %_llgo_103, %_llgo_102
  %807 = load ptr, ptr @_llgo_Pointer, align 8
  %808 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %809 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %808)
  %810 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %811 = getelementptr ptr, ptr %810, i64 0
  store ptr %809, ptr %811, align 8
  %812 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %810, 0
  %813 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %812, i64 1, 1
  %814 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %813, i64 1, 2
  %815 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %816 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %817 = getelementptr ptr, ptr %816, i64 0
  store ptr %815, ptr %817, align 8
  %818 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %816, 0
  %819 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %818, i64 1, 1
  %820 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %819, i64 1, 2
  %821 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %814, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %820, i1 false)
  %822 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 2 }, ptr %821, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %823 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %824 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr %823, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %825 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %826 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %825, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %822, ptr %826, align 8
  %827 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %825, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %824, ptr %827, align 8
  %828 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %825, 0
  %829 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %828, i64 2, 1
  %830 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %829, i64 2, 2
  %831 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %830)
  store ptr %831, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$Vte4JWLQuAoSzUe_ATm_2EUMfNIA-GUbuRWLCMCu00A", align 8
  %832 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$Vte4JWLQuAoSzUe_ATm_2EUMfNIA-GUbuRWLCMCu00A", align 8
  %833 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %834 = load ptr, ptr @"_llgo_func$ULVlOy2QBVp29VENPIgOcULdAvYuVX1MkWTx7emFTws", align 8
  %835 = icmp eq ptr %834, null
  br i1 %835, label %_llgo_105, label %_llgo_106

_llgo_105:                                        ; preds = %_llgo_104
  %836 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %833)
  %837 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %838 = getelementptr ptr, ptr %837, i64 0
  store ptr %836, ptr %838, align 8
  %839 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %837, 0
  %840 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %839, i64 1, 1
  %841 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %840, i64 1, 2
  %842 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %843 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %844 = getelementptr ptr, ptr %843, i64 0
  store ptr %842, ptr %844, align 8
  %845 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %843, 0
  %846 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %845, i64 1, 1
  %847 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %846, i64 1, 2
  %848 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %841, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %847, i1 false)
  %849 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 2 }, ptr %848, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %850 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %851 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr %850, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %852 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %853 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %852, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %849, ptr %853, align 8
  %854 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %852, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %851, ptr %854, align 8
  %855 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %852, 0
  %856 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %855, i64 2, 1
  %857 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %856, i64 2, 2
  %858 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %857)
  %859 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %860 = getelementptr ptr, ptr %859, i64 0
  store ptr %858, ptr %860, align 8
  %861 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %859, 0
  %862 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %861, i64 1, 1
  %863 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %862, i64 1, 2
  %864 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %865 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %864, 0
  %866 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %865, i64 0, 1
  %867 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %866, i64 0, 2
  %868 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %863, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %867, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %868)
  store ptr %868, ptr @"_llgo_func$ULVlOy2QBVp29VENPIgOcULdAvYuVX1MkWTx7emFTws", align 8
  br label %_llgo_106

_llgo_106:                                        ; preds = %_llgo_105, %_llgo_104
  %869 = load ptr, ptr @"_llgo_func$ULVlOy2QBVp29VENPIgOcULdAvYuVX1MkWTx7emFTws", align 8
  %870 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %871 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %870)
  %872 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %873 = getelementptr ptr, ptr %872, i64 0
  store ptr %871, ptr %873, align 8
  %874 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %872, 0
  %875 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %874, i64 1, 1
  %876 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %875, i64 1, 2
  %877 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %878 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %879 = getelementptr ptr, ptr %878, i64 0
  store ptr %877, ptr %879, align 8
  %880 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %878, 0
  %881 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %880, i64 1, 1
  %882 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %881, i64 1, 2
  %883 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %876, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %882, i1 false)
  %884 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 2 }, ptr %883, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %885 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %886 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr %885, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %887 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %888 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %887, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %884, ptr %888, align 8
  %889 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %887, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %886, ptr %889, align 8
  %890 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %887, 0
  %891 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %890, i64 2, 1
  %892 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %891, i64 2, 2
  %893 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %892)
  %894 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %895 = getelementptr ptr, ptr %894, i64 0
  store ptr %893, ptr %895, align 8
  %896 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %894, 0
  %897 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %896, i64 1, 1
  %898 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %897, i64 1, 2
  %899 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %900 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %899, 0
  %901 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %900, i64 0, 1
  %902 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %901, i64 0, 2
  %903 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %898, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %902, i1 false)
  %904 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 2 }, ptr %903, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %905 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %906 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr %905, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %907 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %908 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %907, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %904, ptr %908, align 8
  %909 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %907, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %906, ptr %909, align 8
  %910 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %907, 0
  %911 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %910, i64 2, 1
  %912 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %911, i64 2, 2
  %913 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %912)
  store ptr %913, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$51cJB4_3k4Xbdt5chH6LnecY9pP2ApbN8CwaSiVn-ZI", align 8
  %914 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$51cJB4_3k4Xbdt5chH6LnecY9pP2ApbN8CwaSiVn-ZI", align 8
  br i1 %785, label %_llgo_107, label %_llgo_108

_llgo_107:                                        ; preds = %_llgo_106
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %783, ptr %914, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_108

_llgo_108:                                        ; preds = %_llgo_107, %_llgo_106
  %915 = load ptr, ptr @"_llgo_iter.Seq[*go/types.Scope]", align 8
  %916 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 20 }, i64 25, i64 24, i64 0, i64 0)
  %917 = load ptr, ptr @"_llgo_func$THm8qmPTkKxcAMaVpV47fAmuYGhuVrK5Y_lxLY96R5M", align 8
  %918 = icmp eq ptr %917, null
  br i1 %918, label %_llgo_109, label %_llgo_110

_llgo_109:                                        ; preds = %_llgo_108
  %919 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %920 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %919, 0
  %921 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %920, i64 0, 1
  %922 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %921, i64 0, 2
  %923 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %924 = getelementptr ptr, ptr %923, i64 0
  store ptr %916, ptr %924, align 8
  %925 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %923, 0
  %926 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %925, i64 1, 1
  %927 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %926, i64 1, 2
  %928 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %922, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %927, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %928)
  store ptr %928, ptr @"_llgo_func$THm8qmPTkKxcAMaVpV47fAmuYGhuVrK5Y_lxLY96R5M", align 8
  br label %_llgo_110

_llgo_110:                                        ; preds = %_llgo_109, %_llgo_108
  %929 = load ptr, ptr @"_llgo_func$THm8qmPTkKxcAMaVpV47fAmuYGhuVrK5Y_lxLY96R5M", align 8
  %930 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %929, 1
  %931 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %930, ptr @"go/types.(*Scope).Children", 2
  %932 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %931, ptr @"go/types.(*Scope).Children", 3
  %933 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %934 = load ptr, ptr @"_llgo_func$rgwdu5FfiowFLJadtOxkFT8pjPAsP0MaWhOMNMv35L8", align 8
  %935 = icmp eq ptr %934, null
  br i1 %935, label %_llgo_111, label %_llgo_112

_llgo_111:                                        ; preds = %_llgo_110
  %936 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %937 = getelementptr ptr, ptr %936, i64 0
  store ptr %933, ptr %937, align 8
  %938 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %936, 0
  %939 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %938, i64 1, 1
  %940 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %939, i64 1, 2
  %941 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %942 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %943 = getelementptr ptr, ptr %942, i64 0
  store ptr %941, ptr %943, align 8
  %944 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %942, 0
  %945 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %944, i64 1, 1
  %946 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %945, i64 1, 2
  %947 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %940, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %946, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %947)
  store ptr %947, ptr @"_llgo_func$rgwdu5FfiowFLJadtOxkFT8pjPAsP0MaWhOMNMv35L8", align 8
  br label %_llgo_112

_llgo_112:                                        ; preds = %_llgo_111, %_llgo_110
  %948 = load ptr, ptr @"_llgo_func$rgwdu5FfiowFLJadtOxkFT8pjPAsP0MaWhOMNMv35L8", align 8
  %949 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %948, 1
  %950 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %949, ptr @"go/types.(*Scope).Contains", 2
  %951 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %950, ptr @"go/types.(*Scope).Contains", 3
  %952 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %953 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %952, 1
  %954 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %953, ptr @"go/types.(*Scope).End", 2
  %955 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %954, ptr @"go/types.(*Scope).End", 3
  %956 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %957 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %958 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %959 = load ptr, ptr @"_llgo_func$TeFzo_SS49LpoAapuy-WCaRBIw3kF44ctzNUpO4kAE0", align 8
  %960 = icmp eq ptr %959, null
  br i1 %960, label %_llgo_113, label %_llgo_114

_llgo_113:                                        ; preds = %_llgo_112
  %961 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %962 = getelementptr ptr, ptr %961, i64 0
  store ptr %957, ptr %962, align 8
  %963 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %961, 0
  %964 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %963, i64 1, 1
  %965 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %964, i64 1, 2
  %966 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %958)
  %967 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %968 = getelementptr ptr, ptr %967, i64 0
  store ptr %966, ptr %968, align 8
  %969 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %967, 0
  %970 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %969, i64 1, 1
  %971 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %970, i64 1, 2
  %972 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %965, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %971, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %972)
  store ptr %972, ptr @"_llgo_func$TeFzo_SS49LpoAapuy-WCaRBIw3kF44ctzNUpO4kAE0", align 8
  br label %_llgo_114

_llgo_114:                                        ; preds = %_llgo_113, %_llgo_112
  %973 = load ptr, ptr @"_llgo_func$TeFzo_SS49LpoAapuy-WCaRBIw3kF44ctzNUpO4kAE0", align 8
  %974 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %973, 1
  %975 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %974, ptr @"go/types.(*Scope).Innermost", 2
  %976 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %975, ptr @"go/types.(*Scope).Innermost", 3
  %977 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %978 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %979 = load ptr, ptr @"_llgo_func$enWcobWxIMmOVsFV77daZUctDRVrqRTZJcLhP4Uv7TA", align 8
  %980 = icmp eq ptr %979, null
  br i1 %980, label %_llgo_115, label %_llgo_116

_llgo_115:                                        ; preds = %_llgo_114
  %981 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %982 = getelementptr ptr, ptr %981, i64 0
  store ptr %977, ptr %982, align 8
  %983 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %981, 0
  %984 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %983, i64 1, 1
  %985 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %984, i64 1, 2
  %986 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %987 = getelementptr ptr, ptr %986, i64 0
  store ptr %978, ptr %987, align 8
  %988 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %986, 0
  %989 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %988, i64 1, 1
  %990 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %989, i64 1, 2
  %991 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %985, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %990, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %991)
  store ptr %991, ptr @"_llgo_func$enWcobWxIMmOVsFV77daZUctDRVrqRTZJcLhP4Uv7TA", align 8
  br label %_llgo_116

_llgo_116:                                        ; preds = %_llgo_115, %_llgo_114
  %992 = load ptr, ptr @"_llgo_func$enWcobWxIMmOVsFV77daZUctDRVrqRTZJcLhP4Uv7TA", align 8
  %993 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %992, 1
  %994 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %993, ptr @"go/types.(*Scope).Insert", 2
  %995 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %994, ptr @"go/types.(*Scope).Insert", 3
  %996 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %997 = icmp eq ptr %996, null
  br i1 %997, label %_llgo_117, label %_llgo_118

_llgo_117:                                        ; preds = %_llgo_116
  %998 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %999 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %998, 0
  %1000 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %999, i64 0, 1
  %1001 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1000, i64 0, 2
  %1002 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %1003 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1004 = getelementptr ptr, ptr %1003, i64 0
  store ptr %1002, ptr %1004, align 8
  %1005 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1003, 0
  %1006 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1005, i64 1, 1
  %1007 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1006, i64 1, 2
  %1008 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1001, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1007, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1008)
  store ptr %1008, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_118

_llgo_118:                                        ; preds = %_llgo_117, %_llgo_116
  %1009 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1010 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1009, 1
  %1011 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1010, ptr @"go/types.(*Scope).Len", 2
  %1012 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1011, ptr @"go/types.(*Scope).Len", 3
  %1013 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %1014 = load ptr, ptr @"_llgo_func$onaewC21l11Vj-jqyVtlfJBd7YbSfpZXLfQYSh-7dO8", align 8
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %_llgo_119, label %_llgo_120

_llgo_119:                                        ; preds = %_llgo_118
  %1016 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1017 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1018 = getelementptr ptr, ptr %1017, i64 0
  store ptr %1016, ptr %1018, align 8
  %1019 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1017, 0
  %1020 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1019, i64 1, 1
  %1021 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1020, i64 1, 2
  %1022 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1023 = getelementptr ptr, ptr %1022, i64 0
  store ptr %1013, ptr %1023, align 8
  %1024 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1022, 0
  %1025 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1024, i64 1, 1
  %1026 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1025, i64 1, 2
  %1027 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1021, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1026, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1027)
  store ptr %1027, ptr @"_llgo_func$onaewC21l11Vj-jqyVtlfJBd7YbSfpZXLfQYSh-7dO8", align 8
  br label %_llgo_120

_llgo_120:                                        ; preds = %_llgo_119, %_llgo_118
  %1028 = load ptr, ptr @"_llgo_func$onaewC21l11Vj-jqyVtlfJBd7YbSfpZXLfQYSh-7dO8", align 8
  %1029 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1028, 1
  %1030 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1029, ptr @"go/types.(*Scope).Lookup", 2
  %1031 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1030, ptr @"go/types.(*Scope).Lookup", 3
  %1032 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %1033 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, i64 2, i64 8, i64 1, i64 1)
  %1034 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, i64 25, i64 88, i64 0, i64 17)
  %1035 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %1036 = load ptr, ptr @"_llgo_func$uG85uSY5ZveTNzl6omKvET0EG95SB1LqUPbrZ8R9VVQ", align 8
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %_llgo_121, label %_llgo_122

_llgo_121:                                        ; preds = %_llgo_120
  %1038 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1039 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1040 = getelementptr ptr, ptr %1039, i64 0
  store ptr %1038, ptr %1040, align 8
  %1041 = getelementptr ptr, ptr %1039, i64 1
  store ptr %1033, ptr %1041, align 8
  %1042 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1039, 0
  %1043 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1042, i64 2, 1
  %1044 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1043, i64 2, 2
  %1045 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1034)
  %1046 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1047 = getelementptr ptr, ptr %1046, i64 0
  store ptr %1045, ptr %1047, align 8
  %1048 = getelementptr ptr, ptr %1046, i64 1
  store ptr %1035, ptr %1048, align 8
  %1049 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1046, 0
  %1050 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1049, i64 2, 1
  %1051 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1050, i64 2, 2
  %1052 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1044, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1051, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1052)
  store ptr %1052, ptr @"_llgo_func$uG85uSY5ZveTNzl6omKvET0EG95SB1LqUPbrZ8R9VVQ", align 8
  br label %_llgo_122

_llgo_122:                                        ; preds = %_llgo_121, %_llgo_120
  %1053 = load ptr, ptr @"_llgo_func$uG85uSY5ZveTNzl6omKvET0EG95SB1LqUPbrZ8R9VVQ", align 8
  %1054 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1053, 1
  %1055 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1054, ptr @"go/types.(*Scope).LookupParent", 2
  %1056 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1055, ptr @"go/types.(*Scope).LookupParent", 3
  %1057 = load ptr, ptr @"[]_llgo_string", align 8
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %_llgo_123, label %_llgo_124

_llgo_123:                                        ; preds = %_llgo_122
  %1059 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1060 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1059)
  store ptr %1060, ptr @"[]_llgo_string", align 8
  br label %_llgo_124

_llgo_124:                                        ; preds = %_llgo_123, %_llgo_122
  %1061 = load ptr, ptr @"[]_llgo_string", align 8
  %1062 = load ptr, ptr @"_llgo_func$jFdj6SlA_UPRf9U7evLht6nta0zR3HqjCKsWXmn7jik", align 8
  %1063 = icmp eq ptr %1062, null
  br i1 %1063, label %_llgo_125, label %_llgo_126

_llgo_125:                                        ; preds = %_llgo_124
  %1064 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1065 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1064, 0
  %1066 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1065, i64 0, 1
  %1067 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1066, i64 0, 2
  %1068 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1069 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1068)
  %1070 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1071 = getelementptr ptr, ptr %1070, i64 0
  store ptr %1069, ptr %1071, align 8
  %1072 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1070, 0
  %1073 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1072, i64 1, 1
  %1074 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1073, i64 1, 2
  %1075 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1067, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1074, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1075)
  store ptr %1075, ptr @"_llgo_func$jFdj6SlA_UPRf9U7evLht6nta0zR3HqjCKsWXmn7jik", align 8
  br label %_llgo_126

_llgo_126:                                        ; preds = %_llgo_125, %_llgo_124
  %1076 = load ptr, ptr @"_llgo_func$jFdj6SlA_UPRf9U7evLht6nta0zR3HqjCKsWXmn7jik", align 8
  %1077 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %1076, 1
  %1078 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1077, ptr @"go/types.(*Scope).Names", 2
  %1079 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1078, ptr @"go/types.(*Scope).Names", 3
  %1080 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1081 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 11 }, ptr undef, ptr undef, ptr undef }, ptr %1080, 1
  %1082 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1081, ptr @"go/types.(*Scope).NumChildren", 2
  %1083 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1082, ptr @"go/types.(*Scope).NumChildren", 3
  %1084 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %1085 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %1086 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1085, 1
  %1087 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1086, ptr @"go/types.(*Scope).Parent", 2
  %1088 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1087, ptr @"go/types.(*Scope).Parent", 3
  %1089 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %1090 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1089, 1
  %1091 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1090, ptr @"go/types.(*Scope).Pos", 2
  %1092 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1091, ptr @"go/types.(*Scope).Pos", 3
  %1093 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1094 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1093, 1
  %1095 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1094, ptr @"go/types.(*Scope).String", 2
  %1096 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1095, ptr @"go/types.(*Scope).String", 3
  %1097 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 6 })
  %1098 = load ptr, ptr @_llgo_io.Writer, align 8
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %_llgo_127, label %_llgo_128

_llgo_127:                                        ; preds = %_llgo_126
  store ptr %1097, ptr @_llgo_io.Writer, align 8
  br label %_llgo_128

_llgo_128:                                        ; preds = %_llgo_127, %_llgo_126
  %1100 = load ptr, ptr @_llgo_uint8, align 8
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %_llgo_129, label %_llgo_130

_llgo_129:                                        ; preds = %_llgo_128
  %1102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %1102, ptr @_llgo_uint8, align 8
  br label %_llgo_130

_llgo_130:                                        ; preds = %_llgo_129, %_llgo_128
  %1103 = load ptr, ptr @_llgo_uint8, align 8
  %1104 = load ptr, ptr @"[]_llgo_uint8", align 8
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %_llgo_131, label %_llgo_132

_llgo_131:                                        ; preds = %_llgo_130
  %1106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %1107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1106)
  store ptr %1107, ptr @"[]_llgo_uint8", align 8
  br label %_llgo_132

_llgo_132:                                        ; preds = %_llgo_131, %_llgo_130
  %1108 = load ptr, ptr @"[]_llgo_uint8", align 8
  %1109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 })
  %1110 = load ptr, ptr @_llgo_error, align 8
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %_llgo_133, label %_llgo_134

_llgo_133:                                        ; preds = %_llgo_132
  store ptr %1109, ptr @_llgo_error, align 8
  br label %_llgo_134

_llgo_134:                                        ; preds = %_llgo_133, %_llgo_132
  %1112 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %1111, label %_llgo_135, label %_llgo_136

_llgo_135:                                        ; preds = %_llgo_134
  %1113 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 5 }, ptr undef }, ptr %1112, 1
  %1114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %1115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1114, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1113, ptr %1115, align 8
  %1116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1114, 0
  %1117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1116, i64 1, 1
  %1118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1117, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %1109, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1118)
  br label %_llgo_136

_llgo_136:                                        ; preds = %_llgo_135, %_llgo_134
  %1119 = load ptr, ptr @_llgo_error, align 8
  %1120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 5 })
  %1121 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %_llgo_137, label %_llgo_138

_llgo_137:                                        ; preds = %_llgo_136
  %1123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %1124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %1123)
  %1125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1126 = getelementptr ptr, ptr %1125, i64 0
  store ptr %1124, ptr %1126, align 8
  %1127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1125, 0
  %1128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1127, i64 1, 1
  %1129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1128, i64 1, 2
  %1130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %1131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1132 = getelementptr ptr, ptr %1131, i64 0
  store ptr %1130, ptr %1132, align 8
  %1133 = getelementptr ptr, ptr %1131, i64 1
  store ptr %1120, ptr %1133, align 8
  %1134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1131, 0
  %1135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1134, i64 2, 1
  %1136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1135, i64 2, 2
  %1137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1129, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1136, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1137)
  store ptr %1137, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br label %_llgo_138

_llgo_138:                                        ; preds = %_llgo_137, %_llgo_136
  %1138 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %1099, label %_llgo_139, label %_llgo_140

_llgo_139:                                        ; preds = %_llgo_138
  %1139 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 5 }, ptr undef }, ptr %1138, 1
  %1140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %1141 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1140, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1139, ptr %1141, align 8
  %1142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1140, 0
  %1143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1142, i64 1, 1
  %1144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1143, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %1097, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1144)
  br label %_llgo_140

_llgo_140:                                        ; preds = %_llgo_139, %_llgo_138
  %1145 = load ptr, ptr @_llgo_io.Writer, align 8
  %1146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 6 })
  %1147 = load ptr, ptr @"_llgo_func$GGSQnVnXseCfBGhr7YtS6bq19bhH3EZ-NgxL74cZ5cE", align 8
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %_llgo_141, label %_llgo_142

_llgo_141:                                        ; preds = %_llgo_140
  %1149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %1150 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %1152 = getelementptr ptr, ptr %1151, i64 0
  store ptr %1146, ptr %1152, align 8
  %1153 = getelementptr ptr, ptr %1151, i64 1
  store ptr %1149, ptr %1153, align 8
  %1154 = getelementptr ptr, ptr %1151, i64 2
  store ptr %1150, ptr %1154, align 8
  %1155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1151, 0
  %1156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1155, i64 3, 1
  %1157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1156, i64 3, 2
  %1158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1158, 0
  %1160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1159, i64 0, 1
  %1161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1160, i64 0, 2
  %1162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1157, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1161, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1162)
  store ptr %1162, ptr @"_llgo_func$GGSQnVnXseCfBGhr7YtS6bq19bhH3EZ-NgxL74cZ5cE", align 8
  br label %_llgo_142

_llgo_142:                                        ; preds = %_llgo_141, %_llgo_140
  %1163 = load ptr, ptr @"_llgo_func$GGSQnVnXseCfBGhr7YtS6bq19bhH3EZ-NgxL74cZ5cE", align 8
  %1164 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1163, 1
  %1165 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1164, ptr @"go/types.(*Scope).WriteTo", 2
  %1166 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1165, ptr @"go/types.(*Scope).WriteTo", 3
  %1167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %1168 = load ptr, ptr @"_llgo_func$H760U2L-B0NynRORKLxeVLKpymtwvk_jVfIrf-7cIw0", align 8
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %_llgo_143, label %_llgo_144

_llgo_143:                                        ; preds = %_llgo_142
  %1170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1170, 0
  %1172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1171, i64 0, 1
  %1173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1172, i64 0, 2
  %1174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1175 = getelementptr ptr, ptr %1174, i64 0
  store ptr %1167, ptr %1175, align 8
  %1176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1174, 0
  %1177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1176, i64 1, 1
  %1178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1177, i64 1, 2
  %1179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1173, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1178, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1179)
  store ptr %1179, ptr @"_llgo_func$H760U2L-B0NynRORKLxeVLKpymtwvk_jVfIrf-7cIw0", align 8
  br label %_llgo_144

_llgo_144:                                        ; preds = %_llgo_143, %_llgo_142
  %1180 = load ptr, ptr @"_llgo_func$H760U2L-B0NynRORKLxeVLKpymtwvk_jVfIrf-7cIw0", align 8
  %1181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %1182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1182, 0
  %1184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1183, i64 0, 1
  %1185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1184, i64 0, 2
  %1186 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1187 = getelementptr ptr, ptr %1186, i64 0
  store ptr %1181, ptr %1187, align 8
  %1188 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1186, 0
  %1189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1188, i64 1, 1
  %1190 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1189, i64 1, 2
  %1191 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1185, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1190, i1 false)
  %1192 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 2 }, ptr %1191, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %1194 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr %1193, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %1196 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1195, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1192, ptr %1196, align 8
  %1197 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1195, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1194, ptr %1197, align 8
  %1198 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1195, 0
  %1199 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1198, i64 2, 1
  %1200 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1199, i64 2, 2
  %1201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1200)
  store ptr %1201, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$LyNc7qQwNT69rAsd40-hWpKrofn8YbkhaXpwhewoqv0", align 8
  %1202 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$LyNc7qQwNT69rAsd40-hWpKrofn8YbkhaXpwhewoqv0", align 8
  %1203 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %1204 = load ptr, ptr @"_llgo_func$9K7lSulbOo3VM9i4KUGt1GYcpOgkPoFD-M051Eho4T0", align 8
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %_llgo_145, label %_llgo_146

_llgo_145:                                        ; preds = %_llgo_144
  %1206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1207 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1207, 0
  %1209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1208, i64 0, 1
  %1210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1209, i64 0, 2
  %1211 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1212 = getelementptr ptr, ptr %1211, i64 0
  store ptr %1203, ptr %1212, align 8
  %1213 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1211, 0
  %1214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1213, i64 1, 1
  %1215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1214, i64 1, 2
  %1216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1210, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1215, i1 false)
  %1217 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 2 }, ptr %1216, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %1219 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 5 }, ptr %1218, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %1221 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1220, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1217, ptr %1221, align 8
  %1222 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1220, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1219, ptr %1222, align 8
  %1223 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1220, 0
  %1224 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1223, i64 2, 1
  %1225 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1224, i64 2, 2
  %1226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1225)
  %1227 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1228 = getelementptr ptr, ptr %1227, i64 0
  store ptr %1206, ptr %1228, align 8
  %1229 = getelementptr ptr, ptr %1227, i64 1
  store ptr %1226, ptr %1229, align 8
  %1230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1227, 0
  %1231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1230, i64 2, 1
  %1232 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1231, i64 2, 2
  %1233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1235 = getelementptr ptr, ptr %1234, i64 0
  store ptr %1233, ptr %1235, align 8
  %1236 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1234, 0
  %1237 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1236, i64 1, 1
  %1238 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1237, i64 1, 2
  %1239 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1232, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1238, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1239)
  store ptr %1239, ptr @"_llgo_func$9K7lSulbOo3VM9i4KUGt1GYcpOgkPoFD-M051Eho4T0", align 8
  br label %_llgo_146

_llgo_146:                                        ; preds = %_llgo_145, %_llgo_144
  %1240 = load ptr, ptr @"_llgo_func$9K7lSulbOo3VM9i4KUGt1GYcpOgkPoFD-M051Eho4T0", align 8
  %1241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 20 }, ptr undef, ptr undef, ptr undef }, ptr %1240, 1
  %1242 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1241, ptr @"go/types.(*Scope)._InsertLazy", 2
  %1243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1242, ptr @"go/types.(*Scope)._InsertLazy", 3
  %1244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 })
  %1245 = load ptr, ptr @"_llgo_func$RlmKDEV44-QYDfX3Opw2KMN7qTzZmyHMmWP_8A6k184", align 8
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %_llgo_147, label %_llgo_148

_llgo_147:                                        ; preds = %_llgo_146
  %1247 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %1248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %1249 = getelementptr ptr, ptr %1248, i64 0
  store ptr %1247, ptr %1249, align 8
  %1250 = getelementptr ptr, ptr %1248, i64 1
  store ptr %1244, ptr %1250, align 8
  %1251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1248, 0
  %1252 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1251, i64 2, 1
  %1253 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1252, i64 2, 2
  %1254 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1255 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1254, 0
  %1256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1255, i64 0, 1
  %1257 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1256, i64 0, 2
  %1258 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1253, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1257, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1258)
  store ptr %1258, ptr @"_llgo_func$RlmKDEV44-QYDfX3Opw2KMN7qTzZmyHMmWP_8A6k184", align 8
  br label %_llgo_148

_llgo_148:                                        ; preds = %_llgo_147, %_llgo_146
  %1259 = load ptr, ptr @"_llgo_func$RlmKDEV44-QYDfX3Opw2KMN7qTzZmyHMmWP_8A6k184", align 8
  %1260 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1259, 1
  %1261 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1260, ptr @"go/types.(*Scope).insert", 2
  %1262 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1261, ptr @"go/types.(*Scope).insert", 3
  %1263 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 680)
  %1264 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %782, ptr %1264, align 8
  %1265 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %932, ptr %1265, align 8
  %1266 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %951, ptr %1266, align 8
  %1267 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %955, ptr %1267, align 8
  %1268 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %976, ptr %1268, align 8
  %1269 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %995, ptr %1269, align 8
  %1270 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1012, ptr %1270, align 8
  %1271 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1031, ptr %1271, align 8
  %1272 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1056, ptr %1272, align 8
  %1273 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1079, ptr %1273, align 8
  %1274 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1083, ptr %1274, align 8
  %1275 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1088, ptr %1275, align 8
  %1276 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1092, ptr %1276, align 8
  %1277 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1096, ptr %1277, align 8
  %1278 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1166, ptr %1278, align 8
  %1279 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1243, ptr %1279, align 8
  %1280 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1263, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1262, ptr %1280, align 8
  %1281 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1263, 0
  %1282 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1281, i64 17, 1
  %1283 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1282, i64 17, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %151, ptr %686, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1283)
  br label %_llgo_96

_llgo_149:                                        ; preds = %_llgo_96
  %1284 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %763)
  %1285 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1286 = getelementptr ptr, ptr %1285, i64 0
  store ptr %1284, ptr %1286, align 8
  %1287 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1285, 0
  %1288 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1287, i64 1, 1
  %1289 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1288, i64 1, 2
  %1290 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %1291 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1292 = getelementptr ptr, ptr %1291, i64 0
  store ptr %1290, ptr %1292, align 8
  %1293 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1291, 0
  %1294 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1293, i64 1, 1
  %1295 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1294, i64 1, 2
  %1296 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1289, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1295, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1296)
  store ptr %1296, ptr @"_llgo_func$FXObRiLTDP4rC2sqO_IiB37Vi35MEL5_jHzXtNajtAw", align 8
  br label %_llgo_150

_llgo_150:                                        ; preds = %_llgo_149, %_llgo_96
  %1297 = load ptr, ptr @"_llgo_func$FXObRiLTDP4rC2sqO_IiB37Vi35MEL5_jHzXtNajtAw", align 8
  %1298 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1297, 1
  %1299 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1298, ptr @"go/types.(*object).cmp", 2
  %1300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1299, ptr @"go/types.(*object).cmp", 3
  %1301 = load ptr, ptr @"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs", align 8
  %1302 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %1301, 1
  %1303 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1302, ptr @"go/types.(*object).color", 2
  %1304 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1303, ptr @"go/types.(*object).color", 3
  %1305 = load ptr, ptr @"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck", align 8
  %1306 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %1305, 1
  %1307 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1306, ptr @"go/types.(*object).order", 2
  %1308 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1307, ptr @"go/types.(*object).order", 3
  %1309 = load ptr, ptr @"*_llgo_go/types.Package", align 8
  %1310 = load ptr, ptr @"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8", align 8
  %1311 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1310, 1
  %1312 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1311, ptr @"go/types.(*object).sameId", 2
  %1313 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1312, ptr @"go/types.(*object).sameId", 3
  %1314 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %1315 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 17 }, ptr undef, ptr undef, ptr undef }, ptr %1314, 1
  %1316 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1315, ptr @"go/types.(*object).scopePos", 2
  %1317 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1316, ptr @"go/types.(*object).scopePos", 3
  %1318 = load ptr, ptr @"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4", align 8
  %1319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 17 }, ptr undef, ptr undef, ptr undef }, ptr %1318, 1
  %1320 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1319, ptr @"go/types.(*object).setColor", 2
  %1321 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1320, ptr @"go/types.(*object).setColor", 3
  %1322 = load ptr, ptr @"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU", align 8
  %1323 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 17 }, ptr undef, ptr undef, ptr undef }, ptr %1322, 1
  %1324 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1323, ptr @"go/types.(*object).setOrder", 2
  %1325 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1324, ptr @"go/types.(*object).setOrder", 3
  %1326 = load ptr, ptr @"*_llgo_go/types.Scope", align 8
  %1327 = load ptr, ptr @"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24", align 8
  %1328 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 18 }, ptr undef, ptr undef, ptr undef }, ptr %1327, 1
  %1329 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1328, ptr @"go/types.(*object).setParent", 2
  %1330 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1329, ptr @"go/types.(*object).setParent", 3
  %1331 = load ptr, ptr @"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs", align 8
  %1332 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 20 }, ptr undef, ptr undef, ptr undef }, ptr %1331, 1
  %1333 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1332, ptr @"go/types.(*object).setScopePos", 2
  %1334 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1333, ptr @"go/types.(*object).setScopePos", 3
  %1335 = load ptr, ptr @"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As", align 8
  %1336 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 16 }, ptr undef, ptr undef, ptr undef }, ptr %1335, 1
  %1337 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1336, ptr @"go/types.(*object).setType", 2
  %1338 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1337, ptr @"go/types.(*object).setType", 3
  %1339 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 720)
  %1340 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %729, ptr %1340, align 8
  %1341 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %733, ptr %1341, align 8
  %1342 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %737, ptr %1342, align 8
  %1343 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %742, ptr %1343, align 8
  %1344 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %747, ptr %1344, align 8
  %1345 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %751, ptr %1345, align 8
  %1346 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %755, ptr %1346, align 8
  %1347 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %759, ptr %1347, align 8
  %1348 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1300, ptr %1348, align 8
  %1349 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1304, ptr %1349, align 8
  %1350 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1308, ptr %1350, align 8
  %1351 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1313, ptr %1351, align 8
  %1352 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1317, ptr %1352, align 8
  %1353 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1321, ptr %1353, align 8
  %1354 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1325, ptr %1354, align 8
  %1355 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1330, ptr %1355, align 8
  %1356 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1334, ptr %1356, align 8
  %1357 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1339, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1338, ptr %1357, align 8
  %1358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1339, 0
  %1359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1358, i64 18, 1
  %1360 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1359, i64 18, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %150, ptr %725, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1360)
  %1361 = load ptr, ptr @"_llgo_go/types.object", align 8
  %1362 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 3 }, i64 25, i64 88, i64 0, i64 23)
  %1363 = load ptr, ptr @"*_llgo_go/types.Var", align 8
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %_llgo_151, label %_llgo_152

_llgo_151:                                        ; preds = %_llgo_150
  %1365 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1362)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1365)
  store ptr %1365, ptr @"*_llgo_go/types.Var", align 8
  br label %_llgo_152

_llgo_152:                                        ; preds = %_llgo_151, %_llgo_150
  %1366 = load ptr, ptr @"*_llgo_go/types.Var", align 8
  %1367 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, i64 25, i64 72, i64 0, i64 18)
  %1368 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 3 }, i64 25, i64 88, i64 0, i64 23)
  %1369 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 6 }, ptr %1367, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %1370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1368)
  %1371 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 6 }, ptr %1370, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1372 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1373 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 8 }, ptr %1372, i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1374 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1375 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 7 }, ptr %1374, i64 81, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %1377 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 7 }, ptr %1376, i64 82, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %1378 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %1379 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1378, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1369, ptr %1379, align 8
  %1380 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1378, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1371, ptr %1380, align 8
  %1381 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1378, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1373, ptr %1381, align 8
  %1382 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1378, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1375, ptr %1382, align 8
  %1383 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1378, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1377, ptr %1383, align 8
  %1384 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1378, 0
  %1385 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1384, i64 5, 1
  %1386 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1385, i64 5, 2
  %1387 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 48 }, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1386)
  store ptr %1387, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$ZjBRlpUs3uHsKXeTSrDvSFnwhn75vb_EAAl3NLFFCGU", align 8
  %1388 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.struct$ZjBRlpUs3uHsKXeTSrDvSFnwhn75vb_EAAl3NLFFCGU", align 8
  br i1 %149, label %_llgo_153, label %_llgo_154

_llgo_153:                                        ; preds = %_llgo_152
  %1389 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1390 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %1389, 1
  %1391 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1390, ptr @"go/types.(*Var).Anonymous", 2
  %1392 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1391, ptr @"go/types.(*Var).Anonymous", 3
  %1393 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1394 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1393, 1
  %1395 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1394, ptr @"go/types.(*Var).Embedded", 2
  %1396 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1395, ptr @"go/types.(*Var).Embedded", 3
  %1397 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1398 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %1397, 1
  %1399 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1398, ptr @"go/types.(*Var).Exported", 2
  %1400 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1399, ptr @"go/types.(*Var).Exported", 3
  %1401 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1402 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %1401, 1
  %1403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1402, ptr @"go/types.(*Var).Id", 2
  %1404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1403, ptr @"go/types.(*Var).Id", 3
  %1405 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1406 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %1405, 1
  %1407 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1406, ptr @"go/types.(*Var).IsField", 2
  %1408 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1407, ptr @"go/types.(*Var).IsField", 3
  %1409 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1410 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1409, 1
  %1411 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1410, ptr @"go/types.(*Var).Name", 2
  %1412 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1411, ptr @"go/types.(*Var).Name", 3
  %1413 = load ptr, ptr @"*_llgo_go/types.Var", align 8
  %1414 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 3 }, i64 25, i64 88, i64 0, i64 23)
  %1415 = load ptr, ptr @"_llgo_func$fU95FOBSYY7fQZzRBD74_Zbxkiqcz1l7v3tKqcKJvdI", align 8
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %_llgo_155, label %_llgo_156

_llgo_154:                                        ; preds = %_llgo_156, %_llgo_152
  %1417 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1418 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1419 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1420 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %1421 = load ptr, ptr @"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs", align 8
  %1422 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %1423 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1424 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %1425 = load ptr, ptr @"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs", align 8
  %1426 = load ptr, ptr @"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck", align 8
  %1427 = load ptr, ptr @"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8", align 8
  %1428 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %1429 = load ptr, ptr @"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4", align 8
  %1430 = load ptr, ptr @"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU", align 8
  %1431 = load ptr, ptr @"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24", align 8
  %1432 = load ptr, ptr @"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs", align 8
  %1433 = load ptr, ptr @"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As", align 8
  %1434 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 8 }, ptr undef }, ptr %1417, 1
  %1435 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 2 }, ptr undef }, ptr %1418, 1
  %1436 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %1419, 1
  %1437 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr undef }, ptr %1420, 1
  %1438 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr undef }, ptr %1421, 1
  %1439 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr undef }, ptr %1422, 1
  %1440 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef }, ptr %1423, 1
  %1441 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 }, ptr undef }, ptr %1424, 1
  %1442 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 14 }, ptr undef }, ptr %1425, 1
  %1443 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr undef }, ptr %1426, 1
  %1444 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 15 }, ptr undef }, ptr %1427, 1
  %1445 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 17 }, ptr undef }, ptr %1428, 1
  %1446 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 17 }, ptr undef }, ptr %1429, 1
  %1447 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 17 }, ptr undef }, ptr %1430, 1
  %1448 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 18 }, ptr undef }, ptr %1431, 1
  %1449 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 20 }, ptr undef }, ptr %1432, 1
  %1450 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 16 }, ptr undef }, ptr %1433, 1
  %1451 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 408)
  %1452 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1434, ptr %1452, align 8
  %1453 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1435, ptr %1453, align 8
  %1454 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1436, ptr %1454, align 8
  %1455 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1437, ptr %1455, align 8
  %1456 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1438, ptr %1456, align 8
  %1457 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1439, ptr %1457, align 8
  %1458 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1440, ptr %1458, align 8
  %1459 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1441, ptr %1459, align 8
  %1460 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1442, ptr %1460, align 8
  %1461 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1443, ptr %1461, align 8
  %1462 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1444, ptr %1462, align 8
  %1463 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1445, ptr %1463, align 8
  %1464 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1446, ptr %1464, align 8
  %1465 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1447, ptr %1465, align 8
  %1466 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1448, ptr %1466, align 8
  %1467 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1449, ptr %1467, align 8
  %1468 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1451, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %1450, ptr %1468, align 8
  %1469 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1451, 0
  %1470 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1469, i64 17, 1
  %1471 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1470, i64 17, 2
  %1472 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1471)
  store ptr %1472, ptr @"github.com/goplus/llgo/cl/_testdata/gotypesissue.iface$ThkdgnELWFa9iYfc3Uaw23Mg3vAQt7dPrCxauyN5u8g", align 8
  ret void

_llgo_155:                                        ; preds = %_llgo_153
  %1473 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %1474 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1473, 0
  %1475 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1474, i64 0, 1
  %1476 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1475, i64 0, 2
  %1477 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %1414)
  %1478 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %1479 = getelementptr ptr, ptr %1478, i64 0
  store ptr %1477, ptr %1479, align 8
  %1480 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1478, 0
  %1481 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1480, i64 1, 1
  %1482 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1481, i64 1, 2
  %1483 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1476, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1482, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %1483)
  store ptr %1483, ptr @"_llgo_func$fU95FOBSYY7fQZzRBD74_Zbxkiqcz1l7v3tKqcKJvdI", align 8
  br label %_llgo_156

_llgo_156:                                        ; preds = %_llgo_155, %_llgo_153
  %1484 = load ptr, ptr @"_llgo_func$fU95FOBSYY7fQZzRBD74_Zbxkiqcz1l7v3tKqcKJvdI", align 8
  %1485 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1484, 1
  %1486 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1485, ptr @"go/types.(*Var).Origin", 2
  %1487 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1486, ptr @"go/types.(*Var).Origin", 3
  %1488 = load ptr, ptr @"_llgo_func$RmRTu_tgtvsFC3dDdmmK3d_v4vzPllC2Fzjr6t8gw_s", align 8
  %1489 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1488, 1
  %1490 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1489, ptr @"go/types.(*Var).Parent", 2
  %1491 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1490, ptr @"go/types.(*Var).Parent", 3
  %1492 = load ptr, ptr @"_llgo_func$529AVNUnUylb8VA5KsUrq7Y00py7bkm94u5C9rzZUqs", align 8
  %1493 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1492, 1
  %1494 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1493, ptr @"go/types.(*Var).Pkg", 2
  %1495 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1494, ptr @"go/types.(*Var).Pkg", 3
  %1496 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %1497 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %1496, 1
  %1498 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1497, ptr @"go/types.(*Var).Pos", 2
  %1499 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1498, ptr @"go/types.(*Var).Pos", 3
  %1500 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1501 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %1500, 1
  %1502 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1501, ptr @"go/types.(*Var).String", 2
  %1503 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1502, ptr @"go/types.(*Var).String", 3
  %1504 = load ptr, ptr @"_llgo_func$zj5Euph9Zeu4fGp1lJE__x_-mF2DndAT4D2mX5nD4Nk", align 8
  %1505 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %1504, 1
  %1506 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1505, ptr @"go/types.(*Var).Type", 2
  %1507 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1506, ptr @"go/types.(*Var).Type", 3
  %1508 = load ptr, ptr @"_llgo_func$FXObRiLTDP4rC2sqO_IiB37Vi35MEL5_jHzXtNajtAw", align 8
  %1509 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 12 }, ptr undef, ptr undef, ptr undef }, ptr %1508, 1
  %1510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1509, ptr @"go/types.(*object).cmp", 2
  %1511 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1510, ptr @"go/types.(*object).cmp", 3
  %1512 = load ptr, ptr @"_llgo_func$6goqImIrukhXekMn5ePHOX8-Ft_ZMdVaq5fNxipbWPs", align 8
  %1513 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %1512, 1
  %1514 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1513, ptr @"go/types.(*object).color", 2
  %1515 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1514, ptr @"go/types.(*object).color", 3
  %1516 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %1517 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 21 }, ptr undef, ptr undef, ptr undef }, ptr %1516, 1
  %1518 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1517, ptr @"go/types.(*Var).isDependency", 2
  %1519 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1518, ptr @"go/types.(*Var).isDependency", 3
  %1520 = load ptr, ptr @"_llgo_func$52rhmQLi2jA8oY0S3Lw4RGQuY8QYZ5cgIg10OZtyXck", align 8
  %1521 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 14 }, ptr undef, ptr undef, ptr undef }, ptr %1520, 1
  %1522 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1521, ptr @"go/types.(*object).order", 2
  %1523 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1522, ptr @"go/types.(*object).order", 3
  %1524 = load ptr, ptr @"_llgo_func$rO86YYPWHVaIFYTkw8T5C8qt_HI7v2SrFZz8cCPbEe8", align 8
  %1525 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 15 }, ptr undef, ptr undef, ptr undef }, ptr %1524, 1
  %1526 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1525, ptr @"go/types.(*object).sameId", 2
  %1527 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1526, ptr @"go/types.(*object).sameId", 3
  %1528 = load ptr, ptr @"_llgo_func$CJFKsfrtVsmWyEEPXCTr-THQYm4CSPEiO6h57SNQxKU", align 8
  %1529 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 17 }, ptr undef, ptr undef, ptr undef }, ptr %1528, 1
  %1530 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1529, ptr @"go/types.(*object).scopePos", 2
  %1531 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1530, ptr @"go/types.(*object).scopePos", 3
  %1532 = load ptr, ptr @"_llgo_func$Uj1PTDUL0Ragjj8m9lFkuezPmrv0J0k6sxFLv03bXf4", align 8
  %1533 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 17 }, ptr undef, ptr undef, ptr undef }, ptr %1532, 1
  %1534 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1533, ptr @"go/types.(*object).setColor", 2
  %1535 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1534, ptr @"go/types.(*object).setColor", 3
  %1536 = load ptr, ptr @"_llgo_func$8g2xq3-W5PyMUnKAWTQ8lvIyJbfBcV8HB7an1aSH1HU", align 8
  %1537 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 17 }, ptr undef, ptr undef, ptr undef }, ptr %1536, 1
  %1538 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1537, ptr @"go/types.(*object).setOrder", 2
  %1539 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1538, ptr @"go/types.(*object).setOrder", 3
  %1540 = load ptr, ptr @"_llgo_func$yTFLR-q-n6hw0YFmdYJx7f5ri2BOsEaJIwtwU8VA-24", align 8
  %1541 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 18 }, ptr undef, ptr undef, ptr undef }, ptr %1540, 1
  %1542 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1541, ptr @"go/types.(*object).setParent", 2
  %1543 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1542, ptr @"go/types.(*object).setParent", 3
  %1544 = load ptr, ptr @"_llgo_func$JFyKRVXPNWokmCE0BNtf_toUj6Rxnj77o6aN1TtnlPs", align 8
  %1545 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 20 }, ptr undef, ptr undef, ptr undef }, ptr %1544, 1
  %1546 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1545, ptr @"go/types.(*object).setScopePos", 2
  %1547 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1546, ptr @"go/types.(*object).setScopePos", 3
  %1548 = load ptr, ptr @"_llgo_func$PcOqHA9DV_bfBOWM3Y_1b0djaX38LDLw0dZbD9t80As", align 8
  %1549 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 16 }, ptr undef, ptr undef, ptr undef }, ptr %1548, 1
  %1550 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1549, ptr @"go/types.(*object).setType", 2
  %1551 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %1550, ptr @"go/types.(*object).setType", 3
  %1552 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 920)
  %1553 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %1392, ptr %1553, align 8
  %1554 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %1396, ptr %1554, align 8
  %1555 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %1400, ptr %1555, align 8
  %1556 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %1404, ptr %1556, align 8
  %1557 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %1408, ptr %1557, align 8
  %1558 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %1412, ptr %1558, align 8
  %1559 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %1487, ptr %1559, align 8
  %1560 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %1491, ptr %1560, align 8
  %1561 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %1495, ptr %1561, align 8
  %1562 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %1499, ptr %1562, align 8
  %1563 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 10
  store %"github.com/goplus/llgo/runtime/abi.Method" %1503, ptr %1563, align 8
  %1564 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 11
  store %"github.com/goplus/llgo/runtime/abi.Method" %1507, ptr %1564, align 8
  %1565 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 12
  store %"github.com/goplus/llgo/runtime/abi.Method" %1511, ptr %1565, align 8
  %1566 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 13
  store %"github.com/goplus/llgo/runtime/abi.Method" %1515, ptr %1566, align 8
  %1567 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 14
  store %"github.com/goplus/llgo/runtime/abi.Method" %1519, ptr %1567, align 8
  %1568 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 15
  store %"github.com/goplus/llgo/runtime/abi.Method" %1523, ptr %1568, align 8
  %1569 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 16
  store %"github.com/goplus/llgo/runtime/abi.Method" %1527, ptr %1569, align 8
  %1570 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 17
  store %"github.com/goplus/llgo/runtime/abi.Method" %1531, ptr %1570, align 8
  %1571 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 18
  store %"github.com/goplus/llgo/runtime/abi.Method" %1535, ptr %1571, align 8
  %1572 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 19
  store %"github.com/goplus/llgo/runtime/abi.Method" %1539, ptr %1572, align 8
  %1573 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 20
  store %"github.com/goplus/llgo/runtime/abi.Method" %1543, ptr %1573, align 8
  %1574 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 21
  store %"github.com/goplus/llgo/runtime/abi.Method" %1547, ptr %1574, align 8
  %1575 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %1552, i64 22
  store %"github.com/goplus/llgo/runtime/abi.Method" %1551, ptr %1575, align 8
  %1576 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1552, 0
  %1577 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1576, i64 23, 1
  %1578 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1577, i64 23, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %147, ptr %1388, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1578)
  br label %_llgo_154
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare i64 @"go/types.(*Basic).Info"(ptr)

declare i64 @"go/types.(*Basic).Kind"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Basic).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Basic).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*Basic).Underlying"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*Scope).Insert"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare i1 @"go/types.(*Package).Complete"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Package).GoVersion"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"go/types.(*Package).Imports"(ptr)

declare void @"go/types.(*Package).MarkComplete"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Package).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Package).Path"(ptr)

declare void @"go/types.(*Package).SetImports"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"go/types.(*Package).SetName"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Package).String"(ptr)

declare i1 @"go/token.(*Pos).IsValid"(ptr)

declare i1 @"go/token.Pos.IsValid"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*color).String"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.color.String"(i32)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"go/types.(*Scope).Child"(ptr, i64)

declare %"iter.Seq[*go/types.Scope]" @"go/types.(*Scope).Children"(ptr)

declare i1 @"go/types.(*Scope).Contains"(ptr, i64)

declare i64 @"go/types.(*Scope).End"(ptr)

declare ptr @"go/types.(*Scope).Innermost"(ptr, i64)

declare i64 @"go/types.(*Scope).Len"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*Scope).Lookup"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"go/types.(*Scope).LookupParent"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"go/types.(*Scope).Names"(ptr)

declare i64 @"go/types.(*Scope).NumChildren"(ptr)

declare ptr @"go/types.(*Scope).Parent"(ptr)

declare i64 @"go/types.(*Scope).Pos"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Scope).String"(ptr)

declare void @"go/types.(*Scope).WriteTo"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface", i64, i1)

declare i1 @"go/types.(*Scope)._InsertLazy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", { ptr, ptr })

declare void @"go/types.(*Scope).insert"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"go/types.(*object).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*object).Id"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*object).Name"(ptr)

declare ptr @"go/types.(*object).Parent"(ptr)

declare ptr @"go/types.(*object).Pkg"(ptr)

declare i64 @"go/types.(*object).Pos"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*object).String"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*object).Type"(ptr)

declare i64 @"go/types.(*object).cmp"(ptr, ptr)

declare i32 @"go/types.(*object).color"(ptr)

declare i32 @"go/types.(*object).order"(ptr)

declare i1 @"go/types.(*object).sameId"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare i64 @"go/types.(*object).scopePos"(ptr)

declare void @"go/types.(*object).setColor"(ptr, i32)

declare void @"go/types.(*object).setOrder"(ptr, i32)

declare void @"go/types.(*object).setParent"(ptr, ptr)

declare void @"go/types.(*object).setScopePos"(ptr, i64)

declare void @"go/types.(*object).setType"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"go/types.(*Var).Anonymous"(ptr)

declare i1 @"go/types.(*Var).Embedded"(ptr)

declare i1 @"go/types.(*Var).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Var).Id"(ptr)

declare i1 @"go/types.(*Var).IsField"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Var).Name"(ptr)

declare ptr @"go/types.(*Var).Origin"(ptr)

declare ptr @"go/types.(*Var).Parent"(ptr)

declare ptr @"go/types.(*Var).Pkg"(ptr)

declare i64 @"go/types.(*Var).Pos"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"go/types.(*Var).String"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"go/types.(*Var).Type"(ptr)

declare void @"go/types.(*Var).isDependency"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")
