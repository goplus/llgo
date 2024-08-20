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
@"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@8 = private unnamed_addr constant [4 x i8] c"Read", align 1
@9 = private unnamed_addr constant [11 x i8] c"main.Reader", align 1
@10 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [17 x i8] c"nopCloserWriterTo", align 1
@"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I" = linkonce global ptr null, align 8
@_llgo_main.nopCloser = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [9 x i8] c"nopCloser", align 1
@_llgo_main.StringWriter = linkonce global ptr null, align 8
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@14 = private unnamed_addr constant [17 x i8] c"main.StringWriter", align 1
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@16 = private unnamed_addr constant [11 x i8] c"short write", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@17 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@_llgo_main.stringReader = linkonce global ptr null, align 8
@"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [1 x i8] c"s", align 1
@19 = private unnamed_addr constant [1 x i8] c"i", align 1
@20 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@21 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM" = linkonce global ptr null, align 8
@_llgo_byte = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null, align 8
@_llgo_rune = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@28 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@29 = private unnamed_addr constant [12 x i8] c"stringReader", align 1
@"*_llgo_main.stringReader" = linkonce global ptr null, align 8
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@_llgo_main.errorString = linkonce global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"*_llgo_main.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@32 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@33 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@34 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@35 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@36 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@37 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@38 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

define %"github.com/goplus/llgo/internal/runtime.iface" @main.NopCloser(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %2 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %3 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %2, ptr %1)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %4 = alloca %main.nopCloserWriterTo, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %4, i64 16)
  %6 = getelementptr inbounds %main.nopCloserWriterTo, ptr %5, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %6, align 8
  %7 = load %main.nopCloserWriterTo, ptr %5, align 8
  %8 = load ptr, ptr @_llgo_main.nopCloserWriterTo, align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloserWriterTo %7, ptr %9, align 8
  %10 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %8)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %9, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %15

_llgo_2:                                          ; preds = %_llgo_5
  %16 = alloca %main.nopCloser, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %16, i64 16)
  %18 = getelementptr inbounds %main.nopCloser, ptr %17, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %18, align 8
  %19 = load %main.nopCloser, ptr %17, align 8
  %20 = load ptr, ptr @_llgo_main.nopCloser, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloser %19, ptr %21, align 8
  %22 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %22, ptr %20)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %24, i32 0, i32 0
  store ptr %23, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %24, i32 0, i32 1
  store ptr %21, ptr %26, align 8
  %27 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %24, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %27

_llgo_3:                                          ; preds = %_llgo_0
  %28 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %29 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %29, ptr %1)
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %31, i32 0, i32 1
  store ptr %28, ptr %33, align 8
  %34 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %31, align 8
  %35 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %36 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %35, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %34, ptr %36, align 8
  %37 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %35, i32 0, i32 1
  store i1 true, ptr %37, align 1
  %38 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %35, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %39 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %40 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %40, align 8
  %41 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, i32 0, i32 1
  store i1 false, ptr %41, align 1
  %42 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %43 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %38, %_llgo_3 ], [ %42, %_llgo_4 ]
  %44 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %43, 0
  %45 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %43, 1
  br i1 %45, label %_llgo_1, label %_llgo_2
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
  store ptr @15, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 3, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %5, ptr @main.EOF, align 8
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @16, ptr %7, align 8
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
  store ptr @17, ptr %5, align 8
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
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  store %main.nopCloser %0, ptr %3, align 8
  %4 = getelementptr inbounds %main.nopCloser, ptr %3, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %4, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %5, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = alloca { ptr, ptr }, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 1
  store ptr %6, ptr %12, align 8
  %13 = load { ptr, ptr }, ptr %10, align 8
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15(ptr %14, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, 0
  %18 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, 1
  %19 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %19, i32 0, i32 0
  store i64 %17, ptr %20, align 4
  %21 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %19, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %18, ptr %21, align 8
  %22 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %19, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %22
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
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  store %main.nopCloserWriterTo %0, ptr %3, align 8
  %4 = getelementptr inbounds %main.nopCloserWriterTo, ptr %3, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %4, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %5, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = alloca { ptr, ptr }, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %10, i32 0, i32 1
  store ptr %6, ptr %12, align 8
  %13 = load { ptr, ptr }, ptr %10, align 8
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15(ptr %14, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, 0
  %18 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, 1
  %19 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %20 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %19, i32 0, i32 0
  store i64 %17, ptr %20, align 4
  %21 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %19, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %18, ptr %21, align 8
  %22 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %19, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %22
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloserWriterTo.WriteTo(%main.nopCloserWriterTo %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca %main.nopCloserWriterTo, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  store %main.nopCloserWriterTo %0, ptr %3, align 8
  %4 = getelementptr inbounds %main.nopCloserWriterTo, ptr %3, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %4, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %5)
  %7 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %8 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %7, ptr %6)
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %5, 1
  %10 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %6)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %9, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %15)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %15, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = alloca { ptr, ptr }, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 1
  store ptr %16, ptr %22, align 8
  %23 = load { ptr, ptr }, ptr %20, align 8
  %24 = extractvalue { ptr, ptr } %23, 1
  %25 = extractvalue { ptr, ptr } %23, 0
  %26 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %25(ptr %24, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %27 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %26, 0
  %28 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %26, 1
  %29 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %30 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %29, i32 0, i32 0
  store i64 %27, ptr %30, align 4
  %31 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %29, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %28, ptr %31, align 8
  %32 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %29, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %32

_llgo_2:                                          ; preds = %_llgo_0
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @31, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 21, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %36, ptr %38, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 0
  store ptr %37, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, i32 0, i32 1
  store ptr %38, ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %39, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %42)
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
  store ptr @32, ptr %5, align 8
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
  store ptr @33, ptr %17, align 8
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
  store ptr @34, ptr %26, align 8
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
  store ptr @35, ptr %5, align 8
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
  store ptr @36, ptr %5, align 8
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
  store ptr @37, ptr %13, align 8
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
  store ptr @38, ptr %25, align 8
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
  %0 = load ptr, ptr @"[]_llgo_byte", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_byte", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_byte", align 8
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %7, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %11, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 0, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %22 = getelementptr ptr, ptr %21, i64 0
  store ptr %12, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 0
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 1
  store i64 1, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 2
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %20, %"github.com/goplus/llgo/internal/runtime.Slice" %27, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %28)
  store ptr %28, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %29 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %30 = load ptr, ptr @_llgo_error, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @0, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 5, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %36, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %36, i32 0, i32 1
  store ptr %29, ptr %38, align 8
  %39 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %36, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %41 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %40, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %39, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 1, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @1, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 4, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 0
  store ptr @2, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %51, i32 0, i32 1
  store i64 5, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %51, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %50, %"github.com/goplus/llgo/internal/runtime.String" %54, %"github.com/goplus/llgo/internal/runtime.Slice" %46)
  store ptr %55, ptr @_llgo_error, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %56 = load ptr, ptr @_llgo_error, align 8
  %57 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %60 = getelementptr ptr, ptr %59, i64 0
  store ptr %4, ptr %60, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, i32 0, i32 0
  store ptr %59, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, i32 0, i32 1
  store i64 1, ptr %63, align 4
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, i32 0, i32 2
  store i64 1, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %61, align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %67 = getelementptr ptr, ptr %66, i64 0
  store ptr %8, ptr %67, align 8
  %68 = getelementptr ptr, ptr %66, i64 1
  store ptr %56, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 0
  store ptr %66, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 1
  store i64 2, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 2
  store i64 2, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %65, %"github.com/goplus/llgo/internal/runtime.Slice" %73, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %74)
  store ptr %74, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %75 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %76 = load ptr, ptr @_llgo_main.Writer, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @3, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 5, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %82, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %81, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %82, i32 0, i32 1
  store ptr %75, ptr %84, align 8
  %85 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %82, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %87 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %86, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %85, ptr %87, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 0
  store ptr %86, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 1
  store i64 1, ptr %90, align 4
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, i32 0, i32 2
  store i64 1, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %88, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @1, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 4, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 0
  store ptr @4, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %97, i32 0, i32 1
  store i64 11, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %97, align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %96, %"github.com/goplus/llgo/internal/runtime.String" %100, %"github.com/goplus/llgo/internal/runtime.Slice" %92)
  store ptr %101, ptr @_llgo_main.Writer, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %102 = load ptr, ptr @_llgo_main.Writer, align 8
  %103 = load ptr, ptr @_llgo_int64, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %105, ptr @_llgo_int64, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %106 = load ptr, ptr @_llgo_int64, align 8
  %107 = load ptr, ptr @_llgo_error, align 8
  %108 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %111 = getelementptr ptr, ptr %110, i64 0
  store ptr %102, ptr %111, align 8
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 0
  store ptr %110, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 1
  store i64 1, ptr %114, align 4
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, i32 0, i32 2
  store i64 1, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %112, align 8
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %118 = getelementptr ptr, ptr %117, i64 0
  store ptr %106, ptr %118, align 8
  %119 = getelementptr ptr, ptr %117, i64 1
  store ptr %107, ptr %119, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 0
  store ptr %117, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 1
  store i64 2, ptr %122, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 2
  store i64 2, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, align 8
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %116, %"github.com/goplus/llgo/internal/runtime.Slice" %124, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %125)
  store ptr %125, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %126 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %127 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 0
  store ptr @5, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 1
  store i64 7, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %129, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %132, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, i32 0, i32 1
  store ptr %126, ptr %135, align 8
  %136 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, align 8
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %138 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %137, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %136, ptr %138, align 8
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, i32 0, i32 0
  store ptr %137, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, i32 0, i32 1
  store i64 1, ptr %141, align 4
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, i32 0, i32 2
  store i64 1, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %139, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @1, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 4, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr @6, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 13, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %147, %"github.com/goplus/llgo/internal/runtime.String" %151, %"github.com/goplus/llgo/internal/runtime.Slice" %143)
  store ptr %152, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %153 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %154 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @5, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 7, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %160, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %160, i32 0, i32 1
  store ptr %153, ptr %162, align 8
  %163 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %160, align 8
  %164 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %165 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %163, ptr %165, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, i32 0, i32 0
  store ptr %164, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, i32 0, i32 1
  store i64 1, ptr %168, align 4
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, i32 0, i32 2
  store i64 1, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %166, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 0
  store ptr @1, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 1
  store i64 4, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %171, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 0
  store ptr null, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 1
  store i64 0, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %175, align 8
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %174, %"github.com/goplus/llgo/internal/runtime.String" %178, %"github.com/goplus/llgo/internal/runtime.Slice" %170)
  store ptr %179, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 3, i64 3)
  store ptr %180, ptr @_llgo_main.nopCloserWriterTo, align 8
  %181 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %182 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 0
  store ptr @7, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 1
  store i64 6, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %184, align 8
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 0
  store ptr null, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 1
  store i64 0, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %188, align 8
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
  store ptr %181, ptr %198, align 8
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
  %216 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %187, ptr %215, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %191, i1 true)
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr @1, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 4, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %222 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %221, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %216, ptr %222, align 8
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, i32 0, i32 0
  store ptr %221, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, i32 0, i32 1
  store i64 1, ptr %225, align 4
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, i32 0, i32 2
  store i64 1, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %223, align 8
  %228 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %220, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %227)
  store ptr %228, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %229 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %230 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 0
  store ptr @10, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 1
  store i64 5, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %230, align 8
  %234 = load ptr, ptr @_llgo_error, align 8
  %235 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %237 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 0
  store ptr %237, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 1
  store i64 0, ptr %240, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 2
  store i64 0, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, align 8
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %244 = getelementptr ptr, ptr %243, i64 0
  store ptr %234, ptr %244, align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, i32 0, i32 0
  store ptr %243, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, i32 0, i32 1
  store i64 1, ptr %247, align 4
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, i32 0, i32 2
  store i64 1, ptr %248, align 4
  %249 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, align 8
  %250 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %242, %"github.com/goplus/llgo/internal/runtime.Slice" %249, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %250)
  store ptr %250, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %251 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %252 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %252, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %233, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %252, i32 0, i32 1
  store ptr %251, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %252, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %252, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %256, align 8
  %257 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %252, align 8
  %258 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %233, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 1
  store ptr %251, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %262, align 8
  %263 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %258, align 8
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 0
  store ptr @8, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %264, i32 0, i32 1
  store i64 4, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %264, align 8
  %268 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %269 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %269, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %267, ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %269, i32 0, i32 1
  store ptr %268, ptr %271, align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %269, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %269, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %273, align 8
  %274 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %269, align 8
  %275 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %267, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 1
  store ptr %268, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %279, align 8
  %280 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %275, align 8
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %281, i32 0, i32 0
  store ptr @5, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %281, i32 0, i32 1
  store i64 7, ptr %283, align 4
  %284 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %281, align 8
  %285 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %286 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %286, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %284, ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %286, i32 0, i32 1
  store ptr %285, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %286, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %286, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %290, align 8
  %291 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %286, align 8
  %292 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %284, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 1
  store ptr %285, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %296, align 8
  %297 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %292, align 8
  %298 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %299 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %263, ptr %299, align 8
  %300 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %280, ptr %300, align 8
  %301 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %297, ptr %301, align 8
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, i32 0, i32 0
  store ptr %298, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, i32 0, i32 1
  store i64 3, ptr %304, align 4
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, i32 0, i32 2
  store i64 3, ptr %305, align 4
  %306 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, align 8
  %307 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %308 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %257, ptr %308, align 8
  %309 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %274, ptr %309, align 8
  %310 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %291, ptr %310, align 8
  %311 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, i32 0, i32 0
  store ptr %307, ptr %312, align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, i32 0, i32 1
  store i64 3, ptr %313, align 4
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, i32 0, i32 2
  store i64 3, ptr %314, align 4
  %315 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, align 8
  %316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 0
  store ptr @1, ptr %317, align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 1
  store i64 4, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %316, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 0
  store ptr @11, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 1
  store i64 17, ptr %322, align 4
  %323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %320, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %180, %"github.com/goplus/llgo/internal/runtime.String" %319, %"github.com/goplus/llgo/internal/runtime.String" %323, ptr %229, %"github.com/goplus/llgo/internal/runtime.Slice" %306, %"github.com/goplus/llgo/internal/runtime.Slice" %315)
  %324 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %325 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %326 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %328 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %328, i32 0, i32 0
  store ptr @10, ptr %329, align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %328, i32 0, i32 1
  store i64 5, ptr %330, align 4
  %331 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %328, align 8
  %332 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %332, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %331, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %332, i32 0, i32 1
  store ptr %324, ptr %334, align 8
  %335 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %332, align 8
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 0
  store ptr @8, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 1
  store i64 4, ptr %338, align 4
  %339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %336, align 8
  %340 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %340, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %339, ptr %341, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %340, i32 0, i32 1
  store ptr %325, ptr %342, align 8
  %343 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %340, align 8
  %344 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %345 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %344, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %335, ptr %345, align 8
  %346 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %344, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %343, ptr %346, align 8
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 0
  store ptr %344, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 1
  store i64 2, ptr %349, align 4
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 2
  store i64 2, ptr %350, align 4
  %351 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, align 8
  %352 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 0
  store ptr @1, ptr %353, align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 1
  store i64 4, ptr %354, align 4
  %355 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %352, align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr null, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 0, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %355, %"github.com/goplus/llgo/internal/runtime.String" %359, %"github.com/goplus/llgo/internal/runtime.Slice" %351)
  store ptr %360, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 2, i64 2)
  store ptr %361, ptr @_llgo_main.nopCloser, align 8
  %362 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %363 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 0
  store ptr @10, ptr %364, align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 1
  store i64 5, ptr %365, align 4
  %366 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %363, align 8
  %367 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %368 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %368, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %366, ptr %369, align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %368, i32 0, i32 1
  store ptr %367, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %368, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %368, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %372, align 8
  %373 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %368, align 8
  %374 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %366, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 1
  store ptr %367, ptr %376, align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %378, align 8
  %379 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %374, align 8
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr @8, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 4, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %385 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %383, ptr %386, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 1
  store ptr %384, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %388, align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %385, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %389, align 8
  %390 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %385, align 8
  %391 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %383, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 1
  store ptr %384, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %395, align 8
  %396 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %391, align 8
  %397 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %398 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %379, ptr %398, align 8
  %399 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %396, ptr %399, align 8
  %400 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, i32 0, i32 0
  store ptr %397, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, i32 0, i32 1
  store i64 2, ptr %402, align 4
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, i32 0, i32 2
  store i64 2, ptr %403, align 4
  %404 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %400, align 8
  %405 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %406 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %405, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %373, ptr %406, align 8
  %407 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %405, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %390, ptr %407, align 8
  %408 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, i32 0, i32 0
  store ptr %405, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, i32 0, i32 1
  store i64 2, ptr %410, align 4
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, i32 0, i32 2
  store i64 2, ptr %411, align 4
  %412 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, align 8
  %413 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %413, i32 0, i32 0
  store ptr @1, ptr %414, align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %413, i32 0, i32 1
  store i64 4, ptr %415, align 4
  %416 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %413, align 8
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 0
  store ptr @12, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 1
  store i64 9, ptr %419, align 4
  %420 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %417, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %361, %"github.com/goplus/llgo/internal/runtime.String" %416, %"github.com/goplus/llgo/internal/runtime.String" %420, ptr %362, %"github.com/goplus/llgo/internal/runtime.Slice" %404, %"github.com/goplus/llgo/internal/runtime.Slice" %412)
  %421 = load ptr, ptr @_llgo_string, align 8
  %422 = load ptr, ptr @_llgo_int, align 8
  %423 = load ptr, ptr @_llgo_error, align 8
  %424 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %425 = icmp eq ptr %424, null
  br i1 %425, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %426 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %427 = getelementptr ptr, ptr %426, i64 0
  store ptr %421, ptr %427, align 8
  %428 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %428, i32 0, i32 0
  store ptr %426, ptr %429, align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %428, i32 0, i32 1
  store i64 1, ptr %430, align 4
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %428, i32 0, i32 2
  store i64 1, ptr %431, align 4
  %432 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %428, align 8
  %433 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %434 = getelementptr ptr, ptr %433, i64 0
  store ptr %422, ptr %434, align 8
  %435 = getelementptr ptr, ptr %433, i64 1
  store ptr %423, ptr %435, align 8
  %436 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 0
  store ptr %433, ptr %437, align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 1
  store i64 2, ptr %438, align 4
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 2
  store i64 2, ptr %439, align 4
  %440 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, align 8
  %441 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %432, %"github.com/goplus/llgo/internal/runtime.Slice" %440, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %441)
  store ptr %441, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %442 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %443 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %444 = icmp eq ptr %443, null
  br i1 %444, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %445 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %445, i32 0, i32 0
  store ptr @13, ptr %446, align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %445, i32 0, i32 1
  store i64 11, ptr %447, align 4
  %448 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %445, align 8
  %449 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %449, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %448, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %449, i32 0, i32 1
  store ptr %442, ptr %451, align 8
  %452 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %449, align 8
  %453 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %454 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %453, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %452, ptr %454, align 8
  %455 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, i32 0, i32 0
  store ptr %453, ptr %456, align 8
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, i32 0, i32 1
  store i64 1, ptr %457, align 4
  %458 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, i32 0, i32 2
  store i64 1, ptr %458, align 4
  %459 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, align 8
  %460 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %460, i32 0, i32 0
  store ptr @1, ptr %461, align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %460, i32 0, i32 1
  store i64 4, ptr %462, align 4
  %463 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %460, align 8
  %464 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %464, i32 0, i32 0
  store ptr @14, ptr %465, align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %464, i32 0, i32 1
  store i64 17, ptr %466, align 4
  %467 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %464, align 8
  %468 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %463, %"github.com/goplus/llgo/internal/runtime.String" %467, %"github.com/goplus/llgo/internal/runtime.Slice" %459)
  store ptr %468, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %469 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %470 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %471 = icmp eq ptr %470, null
  br i1 %471, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %472 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %472, i32 0, i32 0
  store ptr @13, ptr %473, align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %472, i32 0, i32 1
  store i64 11, ptr %474, align 4
  %475 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %472, align 8
  %476 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %476, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %475, ptr %477, align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %476, i32 0, i32 1
  store ptr %469, ptr %478, align 8
  %479 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %476, align 8
  %480 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %481 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %480, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %479, ptr %481, align 8
  %482 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, i32 0, i32 0
  store ptr %480, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, i32 0, i32 1
  store i64 1, ptr %484, align 4
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, i32 0, i32 2
  store i64 1, ptr %485, align 4
  %486 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %482, align 8
  %487 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %487, i32 0, i32 0
  store ptr @1, ptr %488, align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %487, i32 0, i32 1
  store i64 4, ptr %489, align 4
  %490 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %487, align 8
  %491 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 0
  store ptr null, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 1
  store i64 0, ptr %493, align 4
  %494 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %491, align 8
  %495 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %490, %"github.com/goplus/llgo/internal/runtime.String" %494, %"github.com/goplus/llgo/internal/runtime.Slice" %486)
  store ptr %495, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %496 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 32, i64 0, i64 10)
  store ptr %496, ptr @_llgo_main.stringReader, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr @18, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 1, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 0
  store ptr null, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 1
  store i64 0, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %501, align 8
  %505 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %506 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %500, ptr %505, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %504, i1 false)
  %507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 0
  store ptr @19, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 1
  store i64 1, ptr %509, align 4
  %510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %507, align 8
  %511 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 0
  store ptr null, ptr %512, align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 1
  store i64 0, ptr %513, align 4
  %514 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %511, align 8
  %515 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %516 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %510, ptr %515, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %514, i1 false)
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr @20, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 8, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %521, i32 0, i32 0
  store ptr null, ptr %522, align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %521, i32 0, i32 1
  store i64 0, ptr %523, align 4
  %524 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %521, align 8
  %525 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %526 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %520, ptr %525, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %524, i1 false)
  %527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 0
  store ptr @1, ptr %528, align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 1
  store i64 4, ptr %529, align 4
  %530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %527, align 8
  %531 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %532 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %531, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %506, ptr %532, align 8
  %533 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %531, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %516, ptr %533, align 8
  %534 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %531, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %526, ptr %534, align 8
  %535 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %535, i32 0, i32 0
  store ptr %531, ptr %536, align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %535, i32 0, i32 1
  store i64 3, ptr %537, align 4
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %535, i32 0, i32 2
  store i64 3, ptr %538, align 4
  %539 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %535, align 8
  %540 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %530, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %539)
  store ptr %540, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %541 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %542 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %542, i32 0, i32 0
  store ptr @21, ptr %543, align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %542, i32 0, i32 1
  store i64 3, ptr %544, align 4
  %545 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %542, align 8
  %546 = load ptr, ptr @_llgo_int, align 8
  %547 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %548 = icmp eq ptr %547, null
  br i1 %548, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %549 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %550 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 0
  store ptr %549, ptr %551, align 8
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 1
  store i64 0, ptr %552, align 4
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 2
  store i64 0, ptr %553, align 4
  %554 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, align 8
  %555 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %556 = getelementptr ptr, ptr %555, i64 0
  store ptr %546, ptr %556, align 8
  %557 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, i32 0, i32 0
  store ptr %555, ptr %558, align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, i32 0, i32 1
  store i64 1, ptr %559, align 4
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, i32 0, i32 2
  store i64 1, ptr %560, align 4
  %561 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %557, align 8
  %562 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %554, %"github.com/goplus/llgo/internal/runtime.Slice" %561, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %562)
  store ptr %562, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %563 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %564 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %564, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %545, ptr %565, align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %564, i32 0, i32 1
  store ptr %563, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %564, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %567, align 8
  %568 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %564, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %568, align 8
  %569 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %564, align 8
  %570 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %570, i32 0, i32 0
  store ptr @8, ptr %571, align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %570, i32 0, i32 1
  store i64 4, ptr %572, align 4
  %573 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %570, align 8
  %574 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %575 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %575, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %573, ptr %576, align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %575, i32 0, i32 1
  store ptr %574, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %575, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %578, align 8
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %575, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %579, align 8
  %580 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %575, align 8
  %581 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %581, i32 0, i32 0
  store ptr @22, ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %581, i32 0, i32 1
  store i64 6, ptr %583, align 4
  %584 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %581, align 8
  %585 = load ptr, ptr @"[]_llgo_byte", align 8
  %586 = load ptr, ptr @_llgo_int64, align 8
  %587 = load ptr, ptr @_llgo_int, align 8
  %588 = load ptr, ptr @_llgo_error, align 8
  %589 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %590 = icmp eq ptr %589, null
  br i1 %590, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %591 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %592 = getelementptr ptr, ptr %591, i64 0
  store ptr %585, ptr %592, align 8
  %593 = getelementptr ptr, ptr %591, i64 1
  store ptr %586, ptr %593, align 8
  %594 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %594, i32 0, i32 0
  store ptr %591, ptr %595, align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %594, i32 0, i32 1
  store i64 2, ptr %596, align 4
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %594, i32 0, i32 2
  store i64 2, ptr %597, align 4
  %598 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %594, align 8
  %599 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %600 = getelementptr ptr, ptr %599, i64 0
  store ptr %587, ptr %600, align 8
  %601 = getelementptr ptr, ptr %599, i64 1
  store ptr %588, ptr %601, align 8
  %602 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, i32 0, i32 0
  store ptr %599, ptr %603, align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, i32 0, i32 1
  store i64 2, ptr %604, align 4
  %605 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, i32 0, i32 2
  store i64 2, ptr %605, align 4
  %606 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %602, align 8
  %607 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %598, %"github.com/goplus/llgo/internal/runtime.Slice" %606, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %607)
  store ptr %607, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %608 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %609 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %609, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %584, ptr %610, align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %609, i32 0, i32 1
  store ptr %608, ptr %611, align 8
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %609, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %612, align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %609, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %613, align 8
  %614 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %609, align 8
  %615 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %615, i32 0, i32 0
  store ptr @23, ptr %616, align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %615, i32 0, i32 1
  store i64 8, ptr %617, align 4
  %618 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %615, align 8
  %619 = load ptr, ptr @_llgo_byte, align 8
  %620 = icmp eq ptr %619, null
  br i1 %620, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %621 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %621, ptr @_llgo_byte, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %622 = load ptr, ptr @_llgo_byte, align 8
  %623 = load ptr, ptr @_llgo_error, align 8
  %624 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %625 = icmp eq ptr %624, null
  br i1 %625, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %626 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %627 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %627, i32 0, i32 0
  store ptr %626, ptr %628, align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %627, i32 0, i32 1
  store i64 0, ptr %629, align 4
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %627, i32 0, i32 2
  store i64 0, ptr %630, align 4
  %631 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %627, align 8
  %632 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %633 = getelementptr ptr, ptr %632, i64 0
  store ptr %622, ptr %633, align 8
  %634 = getelementptr ptr, ptr %632, i64 1
  store ptr %623, ptr %634, align 8
  %635 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %636 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %635, i32 0, i32 0
  store ptr %632, ptr %636, align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %635, i32 0, i32 1
  store i64 2, ptr %637, align 4
  %638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %635, i32 0, i32 2
  store i64 2, ptr %638, align 4
  %639 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %635, align 8
  %640 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %631, %"github.com/goplus/llgo/internal/runtime.Slice" %639, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %640)
  store ptr %640, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %641 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %642 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %642, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %618, ptr %643, align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %642, i32 0, i32 1
  store ptr %641, ptr %644, align 8
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %642, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %645, align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %642, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %646, align 8
  %647 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %642, align 8
  %648 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %648, i32 0, i32 0
  store ptr @24, ptr %649, align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %648, i32 0, i32 1
  store i64 8, ptr %650, align 4
  %651 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %648, align 8
  %652 = load ptr, ptr @_llgo_rune, align 8
  %653 = icmp eq ptr %652, null
  br i1 %653, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %654 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %654, ptr @_llgo_rune, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %655 = load ptr, ptr @_llgo_rune, align 8
  %656 = load ptr, ptr @_llgo_int, align 8
  %657 = load ptr, ptr @_llgo_error, align 8
  %658 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %659 = icmp eq ptr %658, null
  br i1 %659, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %660 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %661 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %661, i32 0, i32 0
  store ptr %660, ptr %662, align 8
  %663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %661, i32 0, i32 1
  store i64 0, ptr %663, align 4
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %661, i32 0, i32 2
  store i64 0, ptr %664, align 4
  %665 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %661, align 8
  %666 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %667 = getelementptr ptr, ptr %666, i64 0
  store ptr %655, ptr %667, align 8
  %668 = getelementptr ptr, ptr %666, i64 1
  store ptr %656, ptr %668, align 8
  %669 = getelementptr ptr, ptr %666, i64 2
  store ptr %657, ptr %669, align 8
  %670 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %671 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %670, i32 0, i32 0
  store ptr %666, ptr %671, align 8
  %672 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %670, i32 0, i32 1
  store i64 3, ptr %672, align 4
  %673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %670, i32 0, i32 2
  store i64 3, ptr %673, align 4
  %674 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %670, align 8
  %675 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %665, %"github.com/goplus/llgo/internal/runtime.Slice" %674, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %675)
  store ptr %675, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %676 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %677 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %677, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %651, ptr %678, align 8
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %677, i32 0, i32 1
  store ptr %676, ptr %679, align 8
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %677, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %680, align 8
  %681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %677, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %681, align 8
  %682 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %677, align 8
  %683 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %683, i32 0, i32 0
  store ptr @25, ptr %684, align 8
  %685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %683, i32 0, i32 1
  store i64 4, ptr %685, align 4
  %686 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %683, align 8
  %687 = load ptr, ptr @_llgo_int64, align 8
  %688 = load ptr, ptr @_llgo_int, align 8
  %689 = load ptr, ptr @_llgo_int64, align 8
  %690 = load ptr, ptr @_llgo_error, align 8
  %691 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %693 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %694 = getelementptr ptr, ptr %693, i64 0
  store ptr %687, ptr %694, align 8
  %695 = getelementptr ptr, ptr %693, i64 1
  store ptr %688, ptr %695, align 8
  %696 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %696, i32 0, i32 0
  store ptr %693, ptr %697, align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %696, i32 0, i32 1
  store i64 2, ptr %698, align 4
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %696, i32 0, i32 2
  store i64 2, ptr %699, align 4
  %700 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %696, align 8
  %701 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %702 = getelementptr ptr, ptr %701, i64 0
  store ptr %689, ptr %702, align 8
  %703 = getelementptr ptr, ptr %701, i64 1
  store ptr %690, ptr %703, align 8
  %704 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %705 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %704, i32 0, i32 0
  store ptr %701, ptr %705, align 8
  %706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %704, i32 0, i32 1
  store i64 2, ptr %706, align 4
  %707 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %704, i32 0, i32 2
  store i64 2, ptr %707, align 4
  %708 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %704, align 8
  %709 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %700, %"github.com/goplus/llgo/internal/runtime.Slice" %708, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %709)
  store ptr %709, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %710 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %711 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %686, ptr %712, align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 1
  store ptr %710, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %714, align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %715, align 8
  %716 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %711, align 8
  %717 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %717, i32 0, i32 0
  store ptr @26, ptr %718, align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %717, i32 0, i32 1
  store i64 4, ptr %719, align 4
  %720 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %717, align 8
  %721 = load ptr, ptr @_llgo_int64, align 8
  %722 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %723 = icmp eq ptr %722, null
  br i1 %723, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %724 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %725 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %725, i32 0, i32 0
  store ptr %724, ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %725, i32 0, i32 1
  store i64 0, ptr %727, align 4
  %728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %725, i32 0, i32 2
  store i64 0, ptr %728, align 4
  %729 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %725, align 8
  %730 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %731 = getelementptr ptr, ptr %730, i64 0
  store ptr %721, ptr %731, align 8
  %732 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %733 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %732, i32 0, i32 0
  store ptr %730, ptr %733, align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %732, i32 0, i32 1
  store i64 1, ptr %734, align 4
  %735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %732, i32 0, i32 2
  store i64 1, ptr %735, align 4
  %736 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %732, align 8
  %737 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %729, %"github.com/goplus/llgo/internal/runtime.Slice" %736, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %737)
  store ptr %737, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %738 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %739 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %740 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %739, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %720, ptr %740, align 8
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %739, i32 0, i32 1
  store ptr %738, ptr %741, align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %739, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %742, align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %739, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %743, align 8
  %744 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %739, align 8
  %745 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %745, i32 0, i32 0
  store ptr @27, ptr %746, align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %745, i32 0, i32 1
  store i64 10, ptr %747, align 4
  %748 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %745, align 8
  %749 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %750 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %751 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %750, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %748, ptr %751, align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %750, i32 0, i32 1
  store ptr %749, ptr %752, align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %750, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %750, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %754, align 8
  %755 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %750, align 8
  %756 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %757 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %756, i32 0, i32 0
  store ptr @28, ptr %757, align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %756, i32 0, i32 1
  store i64 10, ptr %758, align 4
  %759 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %756, align 8
  %760 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %761 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %762 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %761, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %759, ptr %762, align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %761, i32 0, i32 1
  store ptr %760, ptr %763, align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %761, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %764, align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %761, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %765, align 8
  %766 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %761, align 8
  %767 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %768 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %767, i32 0, i32 0
  store ptr @5, ptr %768, align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %767, i32 0, i32 1
  store i64 7, ptr %769, align 4
  %770 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %767, align 8
  %771 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %772 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %772, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %770, ptr %773, align 8
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %772, i32 0, i32 1
  store ptr %771, ptr %774, align 8
  %775 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %772, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %775, align 8
  %776 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %772, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %776, align 8
  %777 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %772, align 8
  %778 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %779 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %569, ptr %779, align 8
  %780 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %580, ptr %780, align 8
  %781 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %614, ptr %781, align 8
  %782 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %647, ptr %782, align 8
  %783 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %682, ptr %783, align 8
  %784 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %716, ptr %784, align 8
  %785 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %744, ptr %785, align 8
  %786 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %755, ptr %786, align 8
  %787 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %766, ptr %787, align 8
  %788 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %778, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %777, ptr %788, align 8
  %789 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %790 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %789, i32 0, i32 0
  store ptr %778, ptr %790, align 8
  %791 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %789, i32 0, i32 1
  store i64 10, ptr %791, align 4
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %789, i32 0, i32 2
  store i64 10, ptr %792, align 4
  %793 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %789, align 8
  %794 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %795 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %794, i32 0, i32 0
  store ptr @1, ptr %795, align 8
  %796 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %794, i32 0, i32 1
  store i64 4, ptr %796, align 4
  %797 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %794, align 8
  %798 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %799 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %798, i32 0, i32 0
  store ptr @29, ptr %799, align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %798, i32 0, i32 1
  store i64 12, ptr %800, align 4
  %801 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %798, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %496, %"github.com/goplus/llgo/internal/runtime.String" %797, %"github.com/goplus/llgo/internal/runtime.String" %801, ptr %541, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %793)
  %802 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %496)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %802)
  store ptr %802, ptr @"*_llgo_main.stringReader", align 8
  %803 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %804 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %805 = icmp eq ptr %804, null
  br i1 %805, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %806 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %806, i32 0, i32 0
  store ptr @8, ptr %807, align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %806, i32 0, i32 1
  store i64 4, ptr %808, align 4
  %809 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %806, align 8
  %810 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %810, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %809, ptr %811, align 8
  %812 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %810, i32 0, i32 1
  store ptr %803, ptr %812, align 8
  %813 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %810, align 8
  %814 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %815 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %814, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %813, ptr %815, align 8
  %816 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %817 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %816, i32 0, i32 0
  store ptr %814, ptr %817, align 8
  %818 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %816, i32 0, i32 1
  store i64 1, ptr %818, align 4
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %816, i32 0, i32 2
  store i64 1, ptr %819, align 4
  %820 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %816, align 8
  %821 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %821, i32 0, i32 0
  store ptr @1, ptr %822, align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %821, i32 0, i32 1
  store i64 4, ptr %823, align 4
  %824 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %821, align 8
  %825 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %825, i32 0, i32 0
  store ptr null, ptr %826, align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %825, i32 0, i32 1
  store i64 0, ptr %827, align 4
  %828 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %825, align 8
  %829 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %824, %"github.com/goplus/llgo/internal/runtime.String" %828, %"github.com/goplus/llgo/internal/runtime.Slice" %820)
  store ptr %829, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %830 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 0, i64 1)
  store ptr %830, ptr @_llgo_main.errorString, align 8
  %831 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %832 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %831, i32 0, i32 0
  store ptr @18, ptr %832, align 8
  %833 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %831, i32 0, i32 1
  store i64 1, ptr %833, align 4
  %834 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %831, align 8
  %835 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %835, i32 0, i32 0
  store ptr null, ptr %836, align 8
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %835, i32 0, i32 1
  store i64 0, ptr %837, align 4
  %838 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %835, align 8
  %839 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %840 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %834, ptr %839, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %838, i1 false)
  %841 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 0
  store ptr @1, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 1
  store i64 4, ptr %843, align 4
  %844 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %841, align 8
  %845 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %846 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %845, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %840, ptr %846, align 8
  %847 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %847, i32 0, i32 0
  store ptr %845, ptr %848, align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %847, i32 0, i32 1
  store i64 1, ptr %849, align 4
  %850 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %847, i32 0, i32 2
  store i64 1, ptr %850, align 4
  %851 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %847, align 8
  %852 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %844, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %851)
  store ptr %852, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %853 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %854 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %854, i32 0, i32 0
  store ptr @0, ptr %855, align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %854, i32 0, i32 1
  store i64 5, ptr %856, align 4
  %857 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %854, align 8
  %858 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %859 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %860 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %859, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %857, ptr %860, align 8
  %861 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %859, i32 0, i32 1
  store ptr %858, ptr %861, align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %859, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %859, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %863, align 8
  %864 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %859, align 8
  %865 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %866 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %865, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %864, ptr %866, align 8
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
  store ptr @30, ptr %877, align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %876, i32 0, i32 1
  store i64 11, ptr %878, align 4
  %879 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %876, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %830, %"github.com/goplus/llgo/internal/runtime.String" %875, %"github.com/goplus/llgo/internal/runtime.String" %879, ptr %853, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %871)
  %880 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %830)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %880)
  store ptr %880, ptr @"*_llgo_main.errorString", align 8
  %881 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %882 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %883 = icmp eq ptr %882, null
  br i1 %883, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %884 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %884, i32 0, i32 0
  store ptr @0, ptr %885, align 8
  %886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %884, i32 0, i32 1
  store i64 5, ptr %886, align 4
  %887 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %884, align 8
  %888 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %888, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %887, ptr %889, align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %888, i32 0, i32 1
  store ptr %881, ptr %890, align 8
  %891 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %888, align 8
  %892 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %893 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %892, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %891, ptr %893, align 8
  %894 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %894, i32 0, i32 0
  store ptr %892, ptr %895, align 8
  %896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %894, i32 0, i32 1
  store i64 1, ptr %896, align 4
  %897 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %894, i32 0, i32 2
  store i64 1, ptr %897, align 4
  %898 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %894, align 8
  %899 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %899, i32 0, i32 0
  store ptr @1, ptr %900, align 8
  %901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %899, i32 0, i32 1
  store i64 4, ptr %901, align 4
  %902 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %899, align 8
  %903 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %903, i32 0, i32 0
  store ptr null, ptr %904, align 8
  %905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %903, i32 0, i32 1
  store i64 0, ptr %905, align 4
  %906 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %903, align 8
  %907 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %902, %"github.com/goplus/llgo/internal/runtime.String" %906, %"github.com/goplus/llgo/internal/runtime.Slice" %898)
  store ptr %907, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

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
