; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%main.nopCloserWriterTo = type { %"github.com/goplus/llgo/internal/runtime.iface" }
%main.nopCloser = type { %"github.com/goplus/llgo/internal/runtime.iface" }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.errorString = type { %"github.com/goplus/llgo/internal/runtime.String" }
%main.stringReader = type { %"github.com/goplus/llgo/internal/runtime.String", i64, i64 }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@main.EOF = global %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, align 8
@main.ErrShortWrite = global %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, align 8
@"main.init$guard" = global i1 false, align 1
@_llgo_main.WriterTo = linkonce global ptr null, align 8
@"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk" = linkonce global ptr null, align 8
@_llgo_main.Writer = linkonce global ptr null, align 8
@"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY" = linkonce global ptr null, align 8
@_llgo_byte = linkonce global ptr null, align 8
@"[]_llgo_byte" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"Error", align 1
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [5 x i8] c"error", align 1
@3 = private unnamed_addr constant [5 x i8] c"Write", align 1
@4 = private unnamed_addr constant [11 x i8] c"main.Writer", align 1
@_llgo_int64 = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@6 = private unnamed_addr constant [13 x i8] c"main.WriterTo", align 1
@"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk" = linkonce global ptr null, align 8
@_llgo_main.nopCloserWriterTo = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [22 x i8] c"main.nopCloserWriterTo", align 1
@_llgo_main.Reader = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [4 x i8] c"Read", align 1
@9 = private unnamed_addr constant [11 x i8] c"main.Reader", align 1
@"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@11 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [17 x i8] c"nopCloserWriterTo", align 1
@"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I" = linkonce global ptr null, align 8
@_llgo_main.nopCloser = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [14 x i8] c"main.nopCloser", align 1
@14 = private unnamed_addr constant [9 x i8] c"nopCloser", align 1
@_llgo_main.StringWriter = linkonce global ptr null, align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@16 = private unnamed_addr constant [17 x i8] c"main.StringWriter", align 1
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@18 = private unnamed_addr constant [11 x i8] c"short write", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@19 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@_llgo_main.stringReader = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [17 x i8] c"main.stringReader", align 1
@"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk" = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [1 x i8] c"s", align 1
@22 = private unnamed_addr constant [1 x i8] c"i", align 1
@23 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@24 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null, align 8
@_llgo_rune = linkonce global ptr null, align 8
@28 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@31 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@32 = private unnamed_addr constant [12 x i8] c"stringReader", align 1
@"*_llgo_main.stringReader" = linkonce global ptr null, align 8
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@_llgo_main.errorString = linkonce global ptr null, align 8
@33 = private unnamed_addr constant [16 x i8] c"main.errorString", align 1
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@34 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"*_llgo_main.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@35 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@36 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@37 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@38 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@39 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@40 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@41 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@42 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

define %"github.com/goplus/llgo/internal/runtime.iface" @main.NopCloser(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %2 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %3 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %2, ptr %1)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %4 = alloca %main.nopCloserWriterTo, align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %main.nopCloserWriterTo, ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %5, align 8
  %6 = load %main.nopCloserWriterTo, ptr %4, align 8
  %7 = load ptr, ptr @_llgo_main.nopCloserWriterTo, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloserWriterTo %6, ptr %8, align 8
  %9 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %9, ptr %7)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, i32 0, i32 1
  store ptr %8, ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %14

_llgo_2:                                          ; preds = %_llgo_5
  %15 = alloca %main.nopCloser, align 8
  call void @llvm.memset(ptr %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %main.nopCloser, ptr %15, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %16, align 8
  %17 = load %main.nopCloser, ptr %15, align 8
  %18 = load ptr, ptr @_llgo_main.nopCloser, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloser %17, ptr %19, align 8
  %20 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %20, ptr %18)
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %22, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %22, i32 0, i32 1
  store ptr %19, ptr %24, align 8
  %25 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %22, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %25

_llgo_3:                                          ; preds = %_llgo_0
  %26 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %27 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %27, ptr %1)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %29, i32 0, i32 1
  store ptr %26, ptr %31, align 8
  %32 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %29, align 8
  %33 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %34 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %33, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %32, ptr %34, align 8
  %35 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %33, i32 0, i32 1
  store i1 true, ptr %35, align 1
  %36 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %33, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %37 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %38 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %37, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %38, align 8
  %39 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %37, i32 0, i32 1
  store i1 false, ptr %39, align 1
  %40 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %37, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %41 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %36, %_llgo_3 ], [ %40, %_llgo_4 ]
  %42 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %41, 0
  %43 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %41, 1
  br i1 %43, label %_llgo_1, label %_llgo_2
}

define { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } @main.ReadAll(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 512)
  %2 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 512, i64 0, i64 0, i64 512)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_3, %_llgo_0
  %3 = phi %"github.com/goplus/llgo/internal/runtime.Slice" [ %2, %_llgo_0 ], [ %26, %_llgo_3 ], [ %75, %_llgo_6 ]
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 1
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 2
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 2
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 0
  %8 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %7, i64 1, i64 %6, i64 %4, i64 %5, i64 %6)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %10 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = alloca { ptr, ptr }, align 8
  %14 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, ptr }, ptr %13, i32 0, i32 1
  store ptr %9, ptr %15, align 8
  %16 = load { ptr, ptr }, ptr %13, align 8
  %17 = extractvalue { ptr, ptr } %16, 1
  %18 = extractvalue { ptr, ptr } %16, 0
  %19 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %18(ptr %17, %"github.com/goplus/llgo/internal/runtime.Slice" %8)
  %20 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %19, 0
  %21 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %19, 1
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 1
  %23 = add i64 %22, %20
  %24 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 2
  %25 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 0
  %26 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %25, i64 1, i64 %24, i64 0, i64 %23, i64 %24)
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %21)
  %28 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %21, 1
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 0
  store ptr %27, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, i32 0, i32 1
  store ptr %28, ptr %31, align 8
  %32 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %29, align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, i32 0, i32 0
  store ptr %33, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, i32 0, i32 1
  store ptr null, ptr %36, align 8
  %37 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, align 8
  %38 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %32, %"github.com/goplus/llgo/internal/runtime.eface" %37)
  %39 = xor i1 %38, true
  br i1 %39, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %40 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %21)
  %42 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %21, 1
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 0
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 1
  store ptr %42, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %40)
  %48 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %40, 1
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, i32 0, i32 0
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, i32 0, i32 1
  store ptr %48, ptr %51, align 8
  %52 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, align 8
  %53 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %46, %"github.com/goplus/llgo/internal/runtime.eface" %52)
  br i1 %53, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %54 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 1
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 2
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %_llgo_6, label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  %57 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ %21, %_llgo_2 ], [ zeroinitializer, %_llgo_4 ]
  %58 = alloca { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %59 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %58, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.Slice" %26, ptr %59, align 8
  %60 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %58, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %57, ptr %60, align 8
  %61 = load { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %58, align 8
  ret { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %61

_llgo_6:                                          ; preds = %_llgo_3
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 1)
  %63 = getelementptr inbounds i8, ptr %62, i64 0
  store i8 0, ptr %63, align 1
  %64 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, i32 0, i32 0
  store ptr %62, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, i32 0, i32 1
  store i64 1, ptr %66, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, i32 0, i32 2
  store i64 1, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, align 8
  %69 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %68, 0
  %70 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %68, 1
  %71 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %26, ptr %69, i64 %70, i64 1)
  %72 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 1
  %73 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %71, 2
  %74 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %71, 0
  %75 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %74, i64 1, i64 %73, i64 0, i64 %72, i64 %73)
  br label %_llgo_1
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.WriteString(%"github.com/goplus/llgo/internal/runtime.iface" %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %3 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %4 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %3, ptr %2)
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %56)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %56, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14(ptr %13, %"github.com/goplus/llgo/internal/runtime.String" %1)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 1
  %18 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %19 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 0
  store i64 %16, ptr %19, align 4
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %17, ptr %20, align 8
  %21 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21

_llgo_2:                                          ; preds = %_llgo_5
  %22 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %24 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %25 = getelementptr ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = alloca { ptr, ptr }, align 8
  %28 = getelementptr inbounds { ptr, ptr }, ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8
  %29 = getelementptr inbounds { ptr, ptr }, ptr %27, i32 0, i32 1
  store ptr %23, ptr %29, align 8
  %30 = load { ptr, ptr }, ptr %27, align 8
  %31 = extractvalue { ptr, ptr } %30, 1
  %32 = extractvalue { ptr, ptr } %30, 0
  %33 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %32(ptr %31, %"github.com/goplus/llgo/internal/runtime.Slice" %22)
  %34 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %33, 0
  %35 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %33, 1
  %36 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %37 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %36, i32 0, i32 0
  store i64 %34, ptr %37, align 4
  %38 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %36, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %35, ptr %38, align 8
  %39 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %36, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %39

_llgo_3:                                          ; preds = %_llgo_0
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %41 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %41, ptr %2)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %43, i32 0, i32 1
  store ptr %40, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %43, align 8
  %47 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %48 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %47, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %46, ptr %48, align 8
  %49 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %47, i32 0, i32 1
  store i1 true, ptr %49, align 1
  %50 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %47, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %51 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %52 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %52, align 8
  %53 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, i32 0, i32 1
  store i1 false, ptr %53, align 1
  %54 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %55 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %50, %_llgo_3 ], [ %54, %_llgo_4 ]
  %56 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %55, 0
  %57 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %55, 1
  br i1 %57, label %_llgo_1, label %_llgo_2
}

define %"github.com/goplus/llgo/internal/runtime.String" @"main.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.errorString, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %2
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"unicode/utf8.init"()
  call void @"main.init$after"()
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @17, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 3, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %5, ptr @main.EOF, align 8
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @18, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 11, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  %10 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %9)
  store %"github.com/goplus/llgo/internal/runtime.iface" %10, ptr @main.ErrShortWrite, align 8
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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 32)
  %3 = getelementptr inbounds %main.stringReader, ptr %2, i32 0, i32 0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @19, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 11, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %3, align 8
  %8 = load ptr, ptr @"*_llgo_main.stringReader", align 8
  %9 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %9, ptr %8)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, i32 0, i32 1
  store ptr %2, ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, align 8
  %15 = call { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } @main.ReadAll(%"github.com/goplus/llgo/internal/runtime.iface" %14)
  %16 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %15, 0
  %17 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %15, 1
  %18 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.errorString, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %4 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %4, ptr %3)
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i32 0, i32 1
  store ptr %1, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %9
}

define %"github.com/goplus/llgo/internal/runtime.iface" @main.nopCloser.Close(%main.nopCloser %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloser.Read(%main.nopCloser %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca %main.nopCloser, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %main.nopCloser %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.nopCloser, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14(ptr %13, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 1
  %18 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %19 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 0
  store i64 %16, ptr %19, align 4
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %17, ptr %20, align 8
  %21 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"main.(*nopCloser).Close"(ptr %0) {
_llgo_0:
  %1 = load %main.nopCloser, ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.nopCloser.Close(%main.nopCloser %1)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %2
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*nopCloser).Read"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %main.nopCloser, ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = alloca { ptr, ptr }, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1
  store ptr %4, ptr %10, align 8
  %11 = load { ptr, ptr }, ptr %8, align 8
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13(ptr %12, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %15 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14, 0
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14, 1
  %17 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %18 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %17, i32 0, i32 0
  store i64 %15, ptr %18, align 4
  %19 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %17, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %16, ptr %19, align 8
  %20 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %17, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %20
}

define %"github.com/goplus/llgo/internal/runtime.iface" @main.nopCloserWriterTo.Close(%main.nopCloserWriterTo %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloserWriterTo.Read(%main.nopCloserWriterTo %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca %main.nopCloserWriterTo, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %main.nopCloserWriterTo %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.nopCloserWriterTo, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14(ptr %13, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 1
  %18 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %19 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 0
  store i64 %16, ptr %19, align 4
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %17, ptr %20, align 8
  %21 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloserWriterTo.WriteTo(%main.nopCloserWriterTo %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca %main.nopCloserWriterTo, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %main.nopCloserWriterTo %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.nopCloserWriterTo, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %7 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %6, ptr %5)
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 1
  %9 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %9, ptr %5)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, i32 0, i32 1
  store ptr %8, ptr %13, align 8
  %14 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %11, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %14)
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %14, 0
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = alloca { ptr, ptr }, align 8
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %15, ptr %21, align 8
  %22 = load { ptr, ptr }, ptr %19, align 8
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %24(ptr %23, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %26 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %25, 0
  %27 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %25, 1
  %28 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %29 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %28, i32 0, i32 0
  store i64 %26, ptr %29, align 4
  %30 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %28, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %27, ptr %30, align 8
  %31 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %28, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %31

_llgo_2:                                          ; preds = %_llgo_0
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @35, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 21, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = load ptr, ptr @_llgo_string, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %35, ptr %37, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %36, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr %37, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %41)
  unreachable
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"main.(*nopCloserWriterTo).Close"(ptr %0) {
_llgo_0:
  %1 = load %main.nopCloserWriterTo, ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.nopCloserWriterTo.Close(%main.nopCloserWriterTo %1)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %2
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*nopCloserWriterTo).Read"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %main.nopCloserWriterTo, ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = alloca { ptr, ptr }, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1
  store ptr %4, ptr %10, align 8
  %11 = load { ptr, ptr }, ptr %8, align 8
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13(ptr %12, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %15 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14, 0
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %14, 1
  %17 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %18 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %17, i32 0, i32 0
  store i64 %15, ptr %18, align 4
  %19 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %17, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %16, ptr %19, align 8
  %20 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %17, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %20
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*nopCloserWriterTo).WriteTo"(ptr %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load %main.nopCloserWriterTo, ptr %0, align 8
  %3 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloserWriterTo.WriteTo(%main.nopCloserWriterTo %2, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %4 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %3, 1
  %6 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %7 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %6, i32 0, i32 0
  store i64 %4, ptr %7, align 4
  %8 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %6, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %5, ptr %8, align 8
  %9 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %6, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %9
}

define i64 @"main.(*stringReader).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %4, 1
  %6 = icmp sge i64 %2, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 0

_llgo_2:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %9 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %8, 1
  %10 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = sub i64 %9, %11
  ret i64 %12
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).Read"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %9 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %10 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 0
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %11, align 8
  %12 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12

_llgo_2:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %13, align 4
  %14 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %16 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 4
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 1
  %19 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %15, i64 %17, i64 %18)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %19, 0
  %21 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %19, 1
  %22 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %1, ptr %20, i64 %21, i64 1)
  %23 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = add i64 %24, %22
  %26 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %25, ptr %26, align 4
  %27 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %28 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %27, i32 0, i32 0
  store i64 %22, ptr %28, align 4
  %29 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %27, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %29, align 8
  %30 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %27, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %30
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).ReadAt"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1, i64 %2) {
_llgo_0:
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @36, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 37, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %7)
  %9 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %10 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 0
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %11, align 8
  %12 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12

_llgo_2:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %14, 1
  %16 = icmp sge i64 %2, %15
  br i1 %16, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %17 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %18 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %19 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 0
  store i64 0, ptr %19, align 4
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %17, ptr %20, align 8
  %21 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %18, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21

_llgo_4:                                          ; preds = %_llgo_2
  %22 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %24 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %23, 1
  %25 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %23, i64 %2, i64 %24)
  %26 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %25, 0
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %25, 1
  %28 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %1, ptr %26, i64 %27, i64 1)
  %29 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 1
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %31 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %32 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %31, %_llgo_5 ]
  %33 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %34 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %33, i32 0, i32 0
  store i64 %28, ptr %34, align 4
  %35 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %33, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %32, ptr %35, align 8
  %36 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %33, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %36
}

define { i8, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).ReadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %1, align 4
  %2 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %9 = alloca { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %10 = getelementptr inbounds { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 0
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %11, align 8
  %12 = load { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, align 8
  ret { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %12

_llgo_2:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %16, 0
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %16, 1
  %19 = icmp slt i64 %14, 0
  %20 = icmp sge i64 %14, %18
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %21)
  %22 = getelementptr inbounds i8, ptr %17, i64 %14
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %26, ptr %27, align 4
  %28 = alloca { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %29 = getelementptr inbounds { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %28, i32 0, i32 0
  store i8 %23, ptr %29, align 1
  %30 = getelementptr inbounds { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %28, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %30, align 8
  %31 = load { i8, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %28, align 8
  ret { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %31
}

define { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).ReadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %4, 1
  %6 = icmp sge i64 %2, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %9 = alloca { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %10 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 0
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 1
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %12, align 8
  %13 = load { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, align 8
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13

_llgo_2:                                          ; preds = %_llgo_0
  %14 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 %15, ptr %16, align 4
  %17 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %21 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %20, 0
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %20, 1
  %23 = icmp slt i64 %18, 0
  %24 = icmp sge i64 %18, %22
  %25 = or i1 %24, %23
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %25)
  %26 = getelementptr inbounds i8, ptr %21, i64 %18
  %27 = load i8, ptr %26, align 1
  %28 = icmp ult i8 %27, -128
  br i1 %28, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %29 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %30 = load i64, ptr %29, align 4
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %31, ptr %32, align 4
  %33 = sext i8 %27 to i32
  %34 = alloca { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %35 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %34, i32 0, i32 0
  store i32 %33, ptr %35, align 4
  %36 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %34, i32 0, i32 1
  store i64 1, ptr %36, align 4
  %37 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %34, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %37, align 8
  %38 = load { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %34, align 8
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %38

_llgo_4:                                          ; preds = %_llgo_2
  %39 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %39, align 8
  %41 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %42 = load i64, ptr %41, align 4
  %43 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %40, 1
  %44 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %40, i64 %42, i64 %43)
  %45 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %44)
  %46 = extractvalue { i32, i64 } %45, 0
  %47 = extractvalue { i32, i64 } %45, 1
  %48 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %49 = load i64, ptr %48, align 4
  %50 = add i64 %49, %47
  %51 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %50, ptr %51, align 4
  %52 = alloca { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %53 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %52, i32 0, i32 0
  store i32 %46, ptr %53, align 4
  %54 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %52, i32 0, i32 1
  store i64 %47, ptr %54, align 4
  %55 = getelementptr inbounds { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %52, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %55, align 8
  %56 = load { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %52, align 8
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %56
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).Seek"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %3, align 4
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %_llgo_2, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  %5 = phi i64 [ %1, %_llgo_2 ], [ %9, %_llgo_3 ], [ %14, %_llgo_5 ]
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_4
  %7 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %8, %1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %10 = icmp eq i64 %2, 1
  br i1 %10, label %_llgo_3, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_6
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %12, 1
  %14 = add i64 %13, %1
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_4
  %15 = icmp eq i64 %2, 2
  br i1 %15, label %_llgo_5, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @37, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 34, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %19)
  %21 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %22 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %21, i32 0, i32 0
  store i64 0, ptr %22, align 4
  %23 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %21, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %20, ptr %23, align 8
  %24 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %21, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %24

_llgo_8:                                          ; preds = %_llgo_1
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @38, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 37, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %28)
  %30 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %31 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %30, i32 0, i32 0
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %30, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %29, ptr %32, align 8
  %33 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %30, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %33

_llgo_9:                                          ; preds = %_llgo_1
  %34 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %5, ptr %34, align 4
  %35 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %36 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %35, i32 0, i32 0
  store i64 %5, ptr %36, align 4
  %37 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %35, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %37, align 8
  %38 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %35, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %38
}

define i64 @"main.(*stringReader).Size"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %2, 1
  ret i64 %3
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"main.(*stringReader).UnreadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @39, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 48, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %7)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %8

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %9, align 4
  %10 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = sub i64 %11, 1
  %13 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %12, ptr %13, align 4
  ret %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"main.(*stringReader).UnreadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @40, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 49, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %7)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %8

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @41, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 62, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %15)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %16

_llgo_4:                                          ; preds = %_llgo_2
  %17 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  %18 = load i64, ptr %17, align 4
  %19 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %18, ptr %19, align 4
  %20 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %20, align 4
  ret %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).WriteTo"(ptr %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %2, align 4
  %3 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %6, 1
  %8 = icmp sge i64 %4, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %10 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 0
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %11, align 8
  %12 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %9, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12

_llgo_2:                                          ; preds = %_llgo_0
  %13 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %15 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %14, 1
  %18 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %14, i64 %16, i64 %17)
  %19 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.WriteString(%"github.com/goplus/llgo/internal/runtime.iface" %1, %"github.com/goplus/llgo/internal/runtime.String" %18)
  %20 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %19, 0
  %21 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %19, 1
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %18, 1
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @42, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 48, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = load ptr, ptr @_llgo_string, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %27, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 0
  store ptr %28, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 1
  store ptr %29, ptr %32, align 8
  %33 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %33)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %34 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %35 = load i64, ptr %34, align 4
  %36 = add i64 %35, %20
  %37 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %36, ptr %37, align 4
  %38 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %18, 1
  %39 = icmp ne i64 %20, %38
  br i1 %39, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  %40 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.ErrShortWrite, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %41 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ %21, %_llgo_4 ], [ %21, %_llgo_7 ], [ %40, %_llgo_5 ]
  %42 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %43 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %42, i32 0, i32 0
  store i64 %20, ptr %43, align 4
  %44 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %42, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %41, ptr %44, align 8
  %45 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %42, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %45

_llgo_7:                                          ; preds = %_llgo_4
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %21)
  %47 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %21, 1
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 1
  store ptr %47, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  %57 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %51, %"github.com/goplus/llgo/internal/runtime.eface" %56)
  br i1 %57, label %_llgo_5, label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_byte, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %2, ptr @_llgo_byte, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_byte, align 8
  %4 = load ptr, ptr @"[]_llgo_byte", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %6)
  store ptr %7, ptr @"[]_llgo_byte", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @"[]_llgo_byte", align 8
  %9 = load ptr, ptr @_llgo_int, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %11, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = load ptr, ptr @_llgo_string, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %15, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %20, i32 0, i32 1
  store i64 0, ptr %22, align 4
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %20, i32 0, i32 2
  store i64 0, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %20, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %26 = getelementptr ptr, ptr %25, i64 0
  store ptr %16, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 0
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 1
  store i64 1, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 2
  store i64 1, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %24, %"github.com/goplus/llgo/internal/runtime.Slice" %31, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %32)
  store ptr %32, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %33 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %34 = load ptr, ptr @_llgo_error, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr @0, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 5, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %40, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %39, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %40, i32 0, i32 1
  store ptr %33, ptr %42, align 8
  %43 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %40, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %45 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %44, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %43, ptr %45, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 0
  store ptr %44, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 1
  store i64 1, ptr %48, align 4
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, i32 0, i32 2
  store i64 1, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %46, align 8
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 0
  store ptr @1, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 1
  store i64 4, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %51, align 8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @2, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 5, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %54, %"github.com/goplus/llgo/internal/runtime.String" %58, %"github.com/goplus/llgo/internal/runtime.Slice" %50)
  store ptr %59, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %60 = load ptr, ptr @_llgo_error, align 8
  %61 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %64 = getelementptr ptr, ptr %63, i64 0
  store ptr %8, ptr %64, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 0
  store ptr %63, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 1
  store i64 1, ptr %67, align 4
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, i32 0, i32 2
  store i64 1, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %65, align 8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %71 = getelementptr ptr, ptr %70, i64 0
  store ptr %12, ptr %71, align 8
  %72 = getelementptr ptr, ptr %70, i64 1
  store ptr %60, ptr %72, align 8
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 0
  store ptr %70, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 1
  store i64 2, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 2
  store i64 2, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, align 8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %69, %"github.com/goplus/llgo/internal/runtime.Slice" %77, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %78)
  store ptr %78, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %79 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %80 = load ptr, ptr @_llgo_main.Writer, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @3, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 5, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %86, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %85, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %86, i32 0, i32 1
  store ptr %79, ptr %88, align 8
  %89 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %86, align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %91 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %89, ptr %91, align 8
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, i32 0, i32 0
  store ptr %90, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, i32 0, i32 1
  store i64 1, ptr %94, align 4
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, i32 0, i32 2
  store i64 1, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %92, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 0
  store ptr @1, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 1
  store i64 4, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @4, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 11, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %100, %"github.com/goplus/llgo/internal/runtime.String" %104, %"github.com/goplus/llgo/internal/runtime.Slice" %96)
  store ptr %105, ptr @_llgo_main.Writer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %106 = load ptr, ptr @_llgo_main.Writer, align 8
  %107 = load ptr, ptr @_llgo_int64, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %109, ptr @_llgo_int64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %110 = load ptr, ptr @_llgo_int64, align 8
  %111 = load ptr, ptr @_llgo_error, align 8
  %112 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %115 = getelementptr ptr, ptr %114, i64 0
  store ptr %106, ptr %115, align 8
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %116, i32 0, i32 0
  store ptr %114, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %116, i32 0, i32 1
  store i64 1, ptr %118, align 4
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %116, i32 0, i32 2
  store i64 1, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %116, align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %122 = getelementptr ptr, ptr %121, i64 0
  store ptr %110, ptr %122, align 8
  %123 = getelementptr ptr, ptr %121, i64 1
  store ptr %111, ptr %123, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 0
  store ptr %121, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 1
  store i64 2, ptr %126, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 2
  store i64 2, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, align 8
  %129 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %120, %"github.com/goplus/llgo/internal/runtime.Slice" %128, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %129)
  store ptr %129, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %130 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %131 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 0
  store ptr @5, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %133, i32 0, i32 1
  store i64 7, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %133, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %137, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %136, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %137, i32 0, i32 1
  store ptr %130, ptr %139, align 8
  %140 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %137, align 8
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %142 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %141, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %140, ptr %142, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, i32 0, i32 0
  store ptr %141, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, i32 0, i32 1
  store i64 1, ptr %145, align 4
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, i32 0, i32 2
  store i64 1, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %143, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr @1, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 4, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr @6, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 13, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %151, %"github.com/goplus/llgo/internal/runtime.String" %155, %"github.com/goplus/llgo/internal/runtime.Slice" %147)
  store ptr %156, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %157 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %158 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @5, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 7, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %163, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, i32 0, i32 1
  store ptr %157, ptr %166, align 8
  %167 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, align 8
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %169 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %168, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %167, ptr %169, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, i32 0, i32 0
  store ptr %168, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, i32 0, i32 1
  store i64 1, ptr %172, align 4
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, i32 0, i32 2
  store i64 1, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %170, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 0
  store ptr @1, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 1
  store i64 4, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %175, align 8
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 0
  store ptr null, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %179, i32 0, i32 1
  store i64 0, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %179, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %178, %"github.com/goplus/llgo/internal/runtime.String" %182, %"github.com/goplus/llgo/internal/runtime.Slice" %174)
  store ptr %183, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 0
  store ptr @7, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 1
  store i64 22, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %184, align 8
  %188 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %187, i64 25, i64 16, i64 3, i64 3)
  store ptr %188, ptr @_llgo_main.nopCloserWriterTo, align 8
  %189 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %190 = load ptr, ptr @_llgo_main.Reader, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 0
  store ptr @8, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 1
  store i64 4, ptr %194, align 4
  %195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %192, align 8
  %196 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %196, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %195, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %196, i32 0, i32 1
  store ptr %189, ptr %198, align 8
  %199 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %196, align 8
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %201 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %200, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %199, ptr %201, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 0
  store ptr %200, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 1
  store i64 1, ptr %204, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 2
  store i64 1, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, align 8
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 0
  store ptr @1, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 1
  store i64 4, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %207, align 8
  %211 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 0
  store ptr @9, ptr %212, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 1
  store i64 11, ptr %213, align 4
  %214 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %211, align 8
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %210, %"github.com/goplus/llgo/internal/runtime.String" %214, %"github.com/goplus/llgo/internal/runtime.Slice" %206)
  store ptr %215, ptr @_llgo_main.Reader, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %216 = load ptr, ptr @_llgo_main.Reader, align 8
  %217 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %218 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %220 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 0
  store ptr @10, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %220, i32 0, i32 1
  store i64 6, ptr %222, align 4
  %223 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %220, align 8
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr null, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 0, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr @8, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 4, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %232, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %231, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %232, i32 0, i32 1
  store ptr %217, ptr %234, align 8
  %235 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %232, align 8
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %237 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %236, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %235, ptr %237, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 0
  store ptr %236, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 1
  store i64 1, ptr %240, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 2
  store i64 1, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 0
  store ptr @1, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 1
  store i64 4, ptr %245, align 4
  %246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %243, align 8
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 0
  store ptr @9, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 1
  store i64 11, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %246, %"github.com/goplus/llgo/internal/runtime.String" %250, %"github.com/goplus/llgo/internal/runtime.Slice" %242)
  %252 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %223, ptr %251, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %227, i1 true)
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 0
  store ptr @1, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 1
  store i64 4, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %253, align 8
  %257 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %258 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %257, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %252, ptr %258, align 8
  %259 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %259, i32 0, i32 0
  store ptr %257, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %259, i32 0, i32 1
  store i64 1, ptr %261, align 4
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %259, i32 0, i32 2
  store i64 1, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %259, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %256, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %263)
  store ptr %264, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %265 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 0
  store ptr @11, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 1
  store i64 5, ptr %268, align 4
  %269 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %266, align 8
  %270 = load ptr, ptr @_llgo_error, align 8
  %271 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %274 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %274, i32 0, i32 0
  store ptr %273, ptr %275, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %274, i32 0, i32 1
  store i64 0, ptr %276, align 4
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %274, i32 0, i32 2
  store i64 0, ptr %277, align 4
  %278 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %274, align 8
  %279 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %280 = getelementptr ptr, ptr %279, i64 0
  store ptr %270, ptr %280, align 8
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 0
  store ptr %279, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 1
  store i64 1, ptr %283, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 2
  store i64 1, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %278, %"github.com/goplus/llgo/internal/runtime.Slice" %285, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %286)
  store ptr %286, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %287 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %288 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %269, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 1
  store ptr %287, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %292, align 8
  %293 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %288, align 8
  %294 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %294, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %269, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %294, i32 0, i32 1
  store ptr %287, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %294, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %294, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %298, align 8
  %299 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %294, align 8
  %300 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %300, i32 0, i32 0
  store ptr @8, ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %300, i32 0, i32 1
  store i64 4, ptr %302, align 4
  %303 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %300, align 8
  %304 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %305 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %303, ptr %306, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 1
  store ptr %304, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %309, align 8
  %310 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %305, align 8
  %311 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %303, ptr %312, align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 1
  store ptr %304, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %315, align 8
  %316 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %311, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr @5, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 7, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  %321 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %322 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %320, ptr %323, align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i32 0, i32 1
  store ptr %321, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %326, align 8
  %327 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %322, align 8
  %328 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %320, ptr %329, align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i32 0, i32 1
  store ptr %321, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %328, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %332, align 8
  %333 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %328, align 8
  %334 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %335 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %334, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %299, ptr %335, align 8
  %336 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %334, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %316, ptr %336, align 8
  %337 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %334, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %333, ptr %337, align 8
  %338 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, i32 0, i32 0
  store ptr %334, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, i32 0, i32 1
  store i64 3, ptr %340, align 4
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, i32 0, i32 2
  store i64 3, ptr %341, align 4
  %342 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, align 8
  %343 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %293, ptr %344, align 8
  %345 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %310, ptr %345, align 8
  %346 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %343, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %327, ptr %346, align 8
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 0
  store ptr %343, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 1
  store i64 3, ptr %349, align 4
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 2
  store i64 3, ptr %350, align 4
  %351 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, align 8
  %352 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 0
  store ptr @1, ptr %353, align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 1
  store i64 4, ptr %354, align 4
  %355 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %352, align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr @12, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 17, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %188, %"github.com/goplus/llgo/internal/runtime.String" %355, %"github.com/goplus/llgo/internal/runtime.String" %359, ptr %265, %"github.com/goplus/llgo/internal/runtime.Slice" %342, %"github.com/goplus/llgo/internal/runtime.Slice" %351)
  %360 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %361 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %362 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %363 = icmp eq ptr %362, null
  br i1 %363, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %364 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 0
  store ptr @11, ptr %365, align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 1
  store i64 5, ptr %366, align 4
  %367 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %364, align 8
  %368 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %368, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %367, ptr %369, align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %368, i32 0, i32 1
  store ptr %360, ptr %370, align 8
  %371 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %368, align 8
  %372 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %372, i32 0, i32 0
  store ptr @8, ptr %373, align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %372, i32 0, i32 1
  store i64 4, ptr %374, align 4
  %375 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %372, align 8
  %376 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %376, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %375, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %376, i32 0, i32 1
  store ptr %361, ptr %378, align 8
  %379 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %376, align 8
  %380 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %381 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %380, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %371, ptr %381, align 8
  %382 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %380, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %379, ptr %382, align 8
  %383 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %383, i32 0, i32 0
  store ptr %380, ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %383, i32 0, i32 1
  store i64 2, ptr %385, align 4
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %383, i32 0, i32 2
  store i64 2, ptr %386, align 4
  %387 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %383, align 8
  %388 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %388, i32 0, i32 0
  store ptr @1, ptr %389, align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %388, i32 0, i32 1
  store i64 4, ptr %390, align 4
  %391 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %388, align 8
  %392 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %392, i32 0, i32 0
  store ptr null, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %392, i32 0, i32 1
  store i64 0, ptr %394, align 4
  %395 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %392, align 8
  %396 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %391, %"github.com/goplus/llgo/internal/runtime.String" %395, %"github.com/goplus/llgo/internal/runtime.Slice" %387)
  store ptr %396, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 0
  store ptr @13, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 1
  store i64 14, ptr %399, align 4
  %400 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %397, align 8
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %400, i64 25, i64 16, i64 2, i64 2)
  store ptr %401, ptr @_llgo_main.nopCloser, align 8
  %402 = load ptr, ptr @_llgo_main.Reader, align 8
  %403 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 0
  store ptr @11, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 1
  store i64 5, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %404, align 8
  %408 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %409 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %407, ptr %410, align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 1
  store ptr %408, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %412, align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %413, align 8
  %414 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %409, align 8
  %415 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %407, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 1
  store ptr %408, ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %419, align 8
  %420 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %415, align 8
  %421 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 0
  store ptr @8, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 1
  store i64 4, ptr %423, align 4
  %424 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %421, align 8
  %425 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %426 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %426, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %424, ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %426, i32 0, i32 1
  store ptr %425, ptr %428, align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %426, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %429, align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %426, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %430, align 8
  %431 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %426, align 8
  %432 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %424, ptr %433, align 8
  %434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 1
  store ptr %425, ptr %434, align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %436, align 8
  %437 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %432, align 8
  %438 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %439 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %438, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %420, ptr %439, align 8
  %440 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %438, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %437, ptr %440, align 8
  %441 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 0
  store ptr %438, ptr %442, align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 1
  store i64 2, ptr %443, align 4
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 2
  store i64 2, ptr %444, align 4
  %445 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, align 8
  %446 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %447 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %446, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %414, ptr %447, align 8
  %448 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %446, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %431, ptr %448, align 8
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, i32 0, i32 0
  store ptr %446, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, i32 0, i32 1
  store i64 2, ptr %451, align 4
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, i32 0, i32 2
  store i64 2, ptr %452, align 4
  %453 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, align 8
  %454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 0
  store ptr @1, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 1
  store i64 4, ptr %456, align 4
  %457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %454, align 8
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr @14, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 9, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %401, %"github.com/goplus/llgo/internal/runtime.String" %457, %"github.com/goplus/llgo/internal/runtime.String" %461, ptr %403, %"github.com/goplus/llgo/internal/runtime.Slice" %445, %"github.com/goplus/llgo/internal/runtime.Slice" %453)
  %462 = load ptr, ptr @_llgo_string, align 8
  %463 = load ptr, ptr @_llgo_int, align 8
  %464 = load ptr, ptr @_llgo_error, align 8
  %465 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %466 = icmp eq ptr %465, null
  br i1 %466, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %467 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %468 = getelementptr ptr, ptr %467, i64 0
  store ptr %462, ptr %468, align 8
  %469 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %469, i32 0, i32 0
  store ptr %467, ptr %470, align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %469, i32 0, i32 1
  store i64 1, ptr %471, align 4
  %472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %469, i32 0, i32 2
  store i64 1, ptr %472, align 4
  %473 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %469, align 8
  %474 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %475 = getelementptr ptr, ptr %474, i64 0
  store ptr %463, ptr %475, align 8
  %476 = getelementptr ptr, ptr %474, i64 1
  store ptr %464, ptr %476, align 8
  %477 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, i32 0, i32 0
  store ptr %474, ptr %478, align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, i32 0, i32 1
  store i64 2, ptr %479, align 4
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, i32 0, i32 2
  store i64 2, ptr %480, align 4
  %481 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %477, align 8
  %482 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %473, %"github.com/goplus/llgo/internal/runtime.Slice" %481, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %482)
  store ptr %482, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %483 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %484 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %485 = icmp eq ptr %484, null
  br i1 %485, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 0
  store ptr @15, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 1
  store i64 11, ptr %488, align 4
  %489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %486, align 8
  %490 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %490, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %489, ptr %491, align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %490, i32 0, i32 1
  store ptr %483, ptr %492, align 8
  %493 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %490, align 8
  %494 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %495 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %494, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %493, ptr %495, align 8
  %496 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %496, i32 0, i32 0
  store ptr %494, ptr %497, align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %496, i32 0, i32 1
  store i64 1, ptr %498, align 4
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %496, i32 0, i32 2
  store i64 1, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %496, align 8
  %501 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 0
  store ptr @1, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 1
  store i64 4, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %501, align 8
  %505 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %505, i32 0, i32 0
  store ptr @16, ptr %506, align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %505, i32 0, i32 1
  store i64 17, ptr %507, align 4
  %508 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %505, align 8
  %509 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %504, %"github.com/goplus/llgo/internal/runtime.String" %508, %"github.com/goplus/llgo/internal/runtime.Slice" %500)
  store ptr %509, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %510 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %511 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %512 = icmp eq ptr %511, null
  br i1 %512, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 0
  store ptr @15, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 1
  store i64 11, ptr %515, align 4
  %516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %513, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %517, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %516, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %517, i32 0, i32 1
  store ptr %510, ptr %519, align 8
  %520 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %517, align 8
  %521 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %522 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %521, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %520, ptr %522, align 8
  %523 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %523, i32 0, i32 0
  store ptr %521, ptr %524, align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %523, i32 0, i32 1
  store i64 1, ptr %525, align 4
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %523, i32 0, i32 2
  store i64 1, ptr %526, align 4
  %527 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %523, align 8
  %528 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 0
  store ptr @1, ptr %529, align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 1
  store i64 4, ptr %530, align 4
  %531 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %528, align 8
  %532 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 0
  store ptr null, ptr %533, align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %532, i32 0, i32 1
  store i64 0, ptr %534, align 4
  %535 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %532, align 8
  %536 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %531, %"github.com/goplus/llgo/internal/runtime.String" %535, %"github.com/goplus/llgo/internal/runtime.Slice" %527)
  store ptr %536, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %537 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %537, i32 0, i32 0
  store ptr @20, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %537, i32 0, i32 1
  store i64 17, ptr %539, align 4
  %540 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %537, align 8
  %541 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %540, i64 25, i64 32, i64 0, i64 10)
  store ptr %541, ptr @_llgo_main.stringReader, align 8
  %542 = load ptr, ptr @_llgo_string, align 8
  %543 = load ptr, ptr @_llgo_int64, align 8
  %544 = load ptr, ptr @_llgo_int, align 8
  %545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 0
  store ptr @21, ptr %546, align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 1
  store i64 1, ptr %547, align 4
  %548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %545, align 8
  %549 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %549, i32 0, i32 0
  store ptr null, ptr %550, align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %549, i32 0, i32 1
  store i64 0, ptr %551, align 4
  %552 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %549, align 8
  %553 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %554 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %548, ptr %553, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %552, i1 false)
  %555 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %555, i32 0, i32 0
  store ptr @22, ptr %556, align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %555, i32 0, i32 1
  store i64 1, ptr %557, align 4
  %558 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %555, align 8
  %559 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %559, i32 0, i32 0
  store ptr null, ptr %560, align 8
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %559, i32 0, i32 1
  store i64 0, ptr %561, align 4
  %562 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %559, align 8
  %563 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %564 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %558, ptr %563, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %562, i1 false)
  %565 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 0
  store ptr @23, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %565, i32 0, i32 1
  store i64 8, ptr %567, align 4
  %568 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %565, align 8
  %569 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %569, i32 0, i32 0
  store ptr null, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %569, i32 0, i32 1
  store i64 0, ptr %571, align 4
  %572 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %569, align 8
  %573 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %574 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %568, ptr %573, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %572, i1 false)
  %575 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %575, i32 0, i32 0
  store ptr @1, ptr %576, align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %575, i32 0, i32 1
  store i64 4, ptr %577, align 4
  %578 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %575, align 8
  %579 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %580 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %579, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %554, ptr %580, align 8
  %581 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %579, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %564, ptr %581, align 8
  %582 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %579, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %574, ptr %582, align 8
  %583 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %583, i32 0, i32 0
  store ptr %579, ptr %584, align 8
  %585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %583, i32 0, i32 1
  store i64 3, ptr %585, align 4
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %583, i32 0, i32 2
  store i64 3, ptr %586, align 4
  %587 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %583, align 8
  %588 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %578, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %587)
  store ptr %588, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %589 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %590 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %590, i32 0, i32 0
  store ptr @24, ptr %591, align 8
  %592 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %590, i32 0, i32 1
  store i64 3, ptr %592, align 4
  %593 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %590, align 8
  %594 = load ptr, ptr @_llgo_int, align 8
  %595 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %597 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %598 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, i32 0, i32 0
  store ptr %597, ptr %599, align 8
  %600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, i32 0, i32 1
  store i64 0, ptr %600, align 4
  %601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, i32 0, i32 2
  store i64 0, ptr %601, align 4
  %602 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, align 8
  %603 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %604 = getelementptr ptr, ptr %603, i64 0
  store ptr %594, ptr %604, align 8
  %605 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %606 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %605, i32 0, i32 0
  store ptr %603, ptr %606, align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %605, i32 0, i32 1
  store i64 1, ptr %607, align 4
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %605, i32 0, i32 2
  store i64 1, ptr %608, align 4
  %609 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %605, align 8
  %610 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %602, %"github.com/goplus/llgo/internal/runtime.Slice" %609, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %610)
  store ptr %610, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %611 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %612 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %612, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %593, ptr %613, align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %612, i32 0, i32 1
  store ptr %611, ptr %614, align 8
  %615 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %612, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %615, align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %612, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %616, align 8
  %617 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %612, align 8
  %618 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 0
  store ptr @8, ptr %619, align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 1
  store i64 4, ptr %620, align 4
  %621 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %618, align 8
  %622 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %623 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %623, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %621, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %623, i32 0, i32 1
  store ptr %622, ptr %625, align 8
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %623, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %626, align 8
  %627 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %623, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %627, align 8
  %628 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %623, align 8
  %629 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %629, i32 0, i32 0
  store ptr @25, ptr %630, align 8
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %629, i32 0, i32 1
  store i64 6, ptr %631, align 4
  %632 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %629, align 8
  %633 = load ptr, ptr @_llgo_byte, align 8
  %634 = load ptr, ptr @"[]_llgo_byte", align 8
  %635 = load ptr, ptr @_llgo_int64, align 8
  %636 = load ptr, ptr @_llgo_int, align 8
  %637 = load ptr, ptr @_llgo_error, align 8
  %638 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %639 = icmp eq ptr %638, null
  br i1 %639, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %640 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %641 = getelementptr ptr, ptr %640, i64 0
  store ptr %634, ptr %641, align 8
  %642 = getelementptr ptr, ptr %640, i64 1
  store ptr %635, ptr %642, align 8
  %643 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %643, i32 0, i32 0
  store ptr %640, ptr %644, align 8
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %643, i32 0, i32 1
  store i64 2, ptr %645, align 4
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %643, i32 0, i32 2
  store i64 2, ptr %646, align 4
  %647 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %643, align 8
  %648 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %649 = getelementptr ptr, ptr %648, i64 0
  store ptr %636, ptr %649, align 8
  %650 = getelementptr ptr, ptr %648, i64 1
  store ptr %637, ptr %650, align 8
  %651 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %651, i32 0, i32 0
  store ptr %648, ptr %652, align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %651, i32 0, i32 1
  store i64 2, ptr %653, align 4
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %651, i32 0, i32 2
  store i64 2, ptr %654, align 4
  %655 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %651, align 8
  %656 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %647, %"github.com/goplus/llgo/internal/runtime.Slice" %655, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %656)
  store ptr %656, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %657 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %658 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %632, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 1
  store ptr %657, ptr %660, align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %661, align 8
  %662 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %658, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %662, align 8
  %663 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %658, align 8
  %664 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %664, i32 0, i32 0
  store ptr @26, ptr %665, align 8
  %666 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %664, i32 0, i32 1
  store i64 8, ptr %666, align 4
  %667 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %664, align 8
  %668 = load ptr, ptr @_llgo_byte, align 8
  %669 = load ptr, ptr @_llgo_error, align 8
  %670 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %671 = icmp eq ptr %670, null
  br i1 %671, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %672 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %673 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %674 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, i32 0, i32 0
  store ptr %672, ptr %674, align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, i32 0, i32 1
  store i64 0, ptr %675, align 4
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, i32 0, i32 2
  store i64 0, ptr %676, align 4
  %677 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, align 8
  %678 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %679 = getelementptr ptr, ptr %678, i64 0
  store ptr %668, ptr %679, align 8
  %680 = getelementptr ptr, ptr %678, i64 1
  store ptr %669, ptr %680, align 8
  %681 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %682 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %681, i32 0, i32 0
  store ptr %678, ptr %682, align 8
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %681, i32 0, i32 1
  store i64 2, ptr %683, align 4
  %684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %681, i32 0, i32 2
  store i64 2, ptr %684, align 4
  %685 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %681, align 8
  %686 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %677, %"github.com/goplus/llgo/internal/runtime.Slice" %685, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %686)
  store ptr %686, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %687 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %688 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %689 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %688, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %667, ptr %689, align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %688, i32 0, i32 1
  store ptr %687, ptr %690, align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %688, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %691, align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %688, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %692, align 8
  %693 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %688, align 8
  %694 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %695 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %694, i32 0, i32 0
  store ptr @27, ptr %695, align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %694, i32 0, i32 1
  store i64 8, ptr %696, align 4
  %697 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %694, align 8
  %698 = load ptr, ptr @_llgo_rune, align 8
  %699 = icmp eq ptr %698, null
  br i1 %699, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %700 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %700, ptr @_llgo_rune, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %701 = load ptr, ptr @_llgo_rune, align 8
  %702 = load ptr, ptr @_llgo_int, align 8
  %703 = load ptr, ptr @_llgo_error, align 8
  %704 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %705 = icmp eq ptr %704, null
  br i1 %705, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %706 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %707 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %708 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %707, i32 0, i32 0
  store ptr %706, ptr %708, align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %707, i32 0, i32 1
  store i64 0, ptr %709, align 4
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %707, i32 0, i32 2
  store i64 0, ptr %710, align 4
  %711 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %707, align 8
  %712 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %713 = getelementptr ptr, ptr %712, i64 0
  store ptr %701, ptr %713, align 8
  %714 = getelementptr ptr, ptr %712, i64 1
  store ptr %702, ptr %714, align 8
  %715 = getelementptr ptr, ptr %712, i64 2
  store ptr %703, ptr %715, align 8
  %716 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, i32 0, i32 0
  store ptr %712, ptr %717, align 8
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, i32 0, i32 1
  store i64 3, ptr %718, align 4
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, i32 0, i32 2
  store i64 3, ptr %719, align 4
  %720 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, align 8
  %721 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %711, %"github.com/goplus/llgo/internal/runtime.Slice" %720, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %721)
  store ptr %721, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %722 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %723 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %697, ptr %724, align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 1
  store ptr %722, ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %727, align 8
  %728 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %723, align 8
  %729 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 0
  store ptr @28, ptr %730, align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 1
  store i64 4, ptr %731, align 4
  %732 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %729, align 8
  %733 = load ptr, ptr @_llgo_int64, align 8
  %734 = load ptr, ptr @_llgo_int, align 8
  %735 = load ptr, ptr @_llgo_int64, align 8
  %736 = load ptr, ptr @_llgo_error, align 8
  %737 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %738 = icmp eq ptr %737, null
  br i1 %738, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %739 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %740 = getelementptr ptr, ptr %739, i64 0
  store ptr %733, ptr %740, align 8
  %741 = getelementptr ptr, ptr %739, i64 1
  store ptr %734, ptr %741, align 8
  %742 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %742, i32 0, i32 0
  store ptr %739, ptr %743, align 8
  %744 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %742, i32 0, i32 1
  store i64 2, ptr %744, align 4
  %745 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %742, i32 0, i32 2
  store i64 2, ptr %745, align 4
  %746 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %742, align 8
  %747 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %748 = getelementptr ptr, ptr %747, i64 0
  store ptr %735, ptr %748, align 8
  %749 = getelementptr ptr, ptr %747, i64 1
  store ptr %736, ptr %749, align 8
  %750 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %750, i32 0, i32 0
  store ptr %747, ptr %751, align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %750, i32 0, i32 1
  store i64 2, ptr %752, align 4
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %750, i32 0, i32 2
  store i64 2, ptr %753, align 4
  %754 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %750, align 8
  %755 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %746, %"github.com/goplus/llgo/internal/runtime.Slice" %754, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %755)
  store ptr %755, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %756 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %757 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %757, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %732, ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %757, i32 0, i32 1
  store ptr %756, ptr %759, align 8
  %760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %757, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %760, align 8
  %761 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %757, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %761, align 8
  %762 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %757, align 8
  %763 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %763, i32 0, i32 0
  store ptr @29, ptr %764, align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %763, i32 0, i32 1
  store i64 4, ptr %765, align 4
  %766 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %763, align 8
  %767 = load ptr, ptr @_llgo_int64, align 8
  %768 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %769 = icmp eq ptr %768, null
  br i1 %769, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %770 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %771 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %771, i32 0, i32 0
  store ptr %770, ptr %772, align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %771, i32 0, i32 1
  store i64 0, ptr %773, align 4
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %771, i32 0, i32 2
  store i64 0, ptr %774, align 4
  %775 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %771, align 8
  %776 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %777 = getelementptr ptr, ptr %776, i64 0
  store ptr %767, ptr %777, align 8
  %778 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, i32 0, i32 0
  store ptr %776, ptr %779, align 8
  %780 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, i32 0, i32 1
  store i64 1, ptr %780, align 4
  %781 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, i32 0, i32 2
  store i64 1, ptr %781, align 4
  %782 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %778, align 8
  %783 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %775, %"github.com/goplus/llgo/internal/runtime.Slice" %782, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %783)
  store ptr %783, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %784 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %785 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %766, ptr %786, align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 1
  store ptr %784, ptr %787, align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %788, align 8
  %789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %789, align 8
  %790 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %785, align 8
  %791 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %791, i32 0, i32 0
  store ptr @30, ptr %792, align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %791, i32 0, i32 1
  store i64 10, ptr %793, align 4
  %794 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %791, align 8
  %795 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %796 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %797 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %796, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %794, ptr %797, align 8
  %798 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %796, i32 0, i32 1
  store ptr %795, ptr %798, align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %796, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %799, align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %796, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %800, align 8
  %801 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %796, align 8
  %802 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %803 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %802, i32 0, i32 0
  store ptr @31, ptr %803, align 8
  %804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %802, i32 0, i32 1
  store i64 10, ptr %804, align 4
  %805 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %802, align 8
  %806 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %807 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %807, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %805, ptr %808, align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %807, i32 0, i32 1
  store ptr %806, ptr %809, align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %807, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %810, align 8
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %807, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %811, align 8
  %812 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %807, align 8
  %813 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %813, i32 0, i32 0
  store ptr @5, ptr %814, align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %813, i32 0, i32 1
  store i64 7, ptr %815, align 4
  %816 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %813, align 8
  %817 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %818 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %818, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %816, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %818, i32 0, i32 1
  store ptr %817, ptr %820, align 8
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %818, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %821, align 8
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %818, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %822, align 8
  %823 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %818, align 8
  %824 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %825 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %617, ptr %825, align 8
  %826 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %628, ptr %826, align 8
  %827 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %663, ptr %827, align 8
  %828 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %693, ptr %828, align 8
  %829 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %728, ptr %829, align 8
  %830 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %762, ptr %830, align 8
  %831 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %790, ptr %831, align 8
  %832 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %801, ptr %832, align 8
  %833 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %812, ptr %833, align 8
  %834 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %824, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %823, ptr %834, align 8
  %835 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %835, i32 0, i32 0
  store ptr %824, ptr %836, align 8
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %835, i32 0, i32 1
  store i64 10, ptr %837, align 4
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %835, i32 0, i32 2
  store i64 10, ptr %838, align 4
  %839 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %835, align 8
  %840 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %840, i32 0, i32 0
  store ptr @1, ptr %841, align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %840, i32 0, i32 1
  store i64 4, ptr %842, align 4
  %843 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %840, align 8
  %844 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %844, i32 0, i32 0
  store ptr @32, ptr %845, align 8
  %846 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %844, i32 0, i32 1
  store i64 12, ptr %846, align 4
  %847 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %844, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %541, %"github.com/goplus/llgo/internal/runtime.String" %843, %"github.com/goplus/llgo/internal/runtime.String" %847, ptr %589, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %839)
  %848 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %848, i32 0, i32 0
  store ptr @20, ptr %849, align 8
  %850 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %848, i32 0, i32 1
  store i64 17, ptr %850, align 4
  %851 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %848, align 8
  %852 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %851, i64 25, i64 32, i64 0, i64 10)
  %853 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %852)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %853)
  store ptr %853, ptr @"*_llgo_main.stringReader", align 8
  %854 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %855 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %856 = icmp eq ptr %855, null
  br i1 %856, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %857 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %857, i32 0, i32 0
  store ptr @8, ptr %858, align 8
  %859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %857, i32 0, i32 1
  store i64 4, ptr %859, align 4
  %860 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %857, align 8
  %861 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %861, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %860, ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %861, i32 0, i32 1
  store ptr %854, ptr %863, align 8
  %864 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %861, align 8
  %865 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %866 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %865, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %864, ptr %866, align 8
  %867 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 0
  store ptr %865, ptr %868, align 8
  %869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 1
  store i64 1, ptr %869, align 4
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 2
  store i64 1, ptr %870, align 4
  %871 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, align 8
  %872 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %873 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %872, i32 0, i32 0
  store ptr @1, ptr %873, align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %872, i32 0, i32 1
  store i64 4, ptr %874, align 4
  %875 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %872, align 8
  %876 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %876, i32 0, i32 0
  store ptr null, ptr %877, align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %876, i32 0, i32 1
  store i64 0, ptr %878, align 4
  %879 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %876, align 8
  %880 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %875, %"github.com/goplus/llgo/internal/runtime.String" %879, %"github.com/goplus/llgo/internal/runtime.Slice" %871)
  store ptr %880, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %881 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %881, i32 0, i32 0
  store ptr @33, ptr %882, align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %881, i32 0, i32 1
  store i64 16, ptr %883, align 4
  %884 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %881, align 8
  %885 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %884, i64 25, i64 16, i64 0, i64 1)
  store ptr %885, ptr @_llgo_main.errorString, align 8
  %886 = load ptr, ptr @_llgo_string, align 8
  %887 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %887, i32 0, i32 0
  store ptr @21, ptr %888, align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %887, i32 0, i32 1
  store i64 1, ptr %889, align 4
  %890 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %887, align 8
  %891 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %892 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %891, i32 0, i32 0
  store ptr null, ptr %892, align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %891, i32 0, i32 1
  store i64 0, ptr %893, align 4
  %894 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %891, align 8
  %895 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %896 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %890, ptr %895, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %894, i1 false)
  %897 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %897, i32 0, i32 0
  store ptr @1, ptr %898, align 8
  %899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %897, i32 0, i32 1
  store i64 4, ptr %899, align 4
  %900 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %897, align 8
  %901 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %902 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %901, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %896, ptr %902, align 8
  %903 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, i32 0, i32 0
  store ptr %901, ptr %904, align 8
  %905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, i32 0, i32 1
  store i64 1, ptr %905, align 4
  %906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, i32 0, i32 2
  store i64 1, ptr %906, align 4
  %907 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, align 8
  %908 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %900, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %907)
  store ptr %908, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %909 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %910 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %910, i32 0, i32 0
  store ptr @0, ptr %911, align 8
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %910, i32 0, i32 1
  store i64 5, ptr %912, align 4
  %913 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %910, align 8
  %914 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %915 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %913, ptr %916, align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 1
  store ptr %914, ptr %917, align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %918, align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %915, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %919, align 8
  %920 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %915, align 8
  %921 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %922 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %921, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %920, ptr %922, align 8
  %923 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %924 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %923, i32 0, i32 0
  store ptr %921, ptr %924, align 8
  %925 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %923, i32 0, i32 1
  store i64 1, ptr %925, align 4
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %923, i32 0, i32 2
  store i64 1, ptr %926, align 4
  %927 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %923, align 8
  %928 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 0
  store ptr @1, ptr %929, align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %928, i32 0, i32 1
  store i64 4, ptr %930, align 4
  %931 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %928, align 8
  %932 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %932, i32 0, i32 0
  store ptr @34, ptr %933, align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %932, i32 0, i32 1
  store i64 11, ptr %934, align 4
  %935 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %932, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %885, %"github.com/goplus/llgo/internal/runtime.String" %931, %"github.com/goplus/llgo/internal/runtime.String" %935, ptr %909, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %927)
  %936 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %936, i32 0, i32 0
  store ptr @33, ptr %937, align 8
  %938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %936, i32 0, i32 1
  store i64 16, ptr %938, align 4
  %939 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %936, align 8
  %940 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %939, i64 25, i64 16, i64 0, i64 1)
  %941 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %940)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %941)
  store ptr %941, ptr @"*_llgo_main.errorString", align 8
  %942 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %943 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %944 = icmp eq ptr %943, null
  br i1 %944, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %945 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %946 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %945, i32 0, i32 0
  store ptr @0, ptr %946, align 8
  %947 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %945, i32 0, i32 1
  store i64 5, ptr %947, align 4
  %948 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %945, align 8
  %949 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %949, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %948, ptr %950, align 8
  %951 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %949, i32 0, i32 1
  store ptr %942, ptr %951, align 8
  %952 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %949, align 8
  %953 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %954 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %953, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %952, ptr %954, align 8
  %955 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %956 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, i32 0, i32 0
  store ptr %953, ptr %956, align 8
  %957 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, i32 0, i32 1
  store i64 1, ptr %957, align 4
  %958 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, i32 0, i32 2
  store i64 1, ptr %958, align 4
  %959 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %955, align 8
  %960 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %960, i32 0, i32 0
  store ptr @1, ptr %961, align 8
  %962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %960, i32 0, i32 1
  store i64 4, ptr %962, align 4
  %963 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %960, align 8
  %964 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %964, i32 0, i32 0
  store ptr null, ptr %965, align 8
  %966 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %964, i32 0, i32 1
  store i64 0, ptr %966, align 4
  %967 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %964, align 8
  %968 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %963, %"github.com/goplus/llgo/internal/runtime.String" %967, %"github.com/goplus/llgo/internal/runtime.Slice" %959)
  store ptr %968, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"unicode/utf8.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
