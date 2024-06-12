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

@main.EOF = global ptr null
@main.ErrShortWrite = global ptr null
@"main.init$guard" = global ptr null
@_llgo_main.WriterTo = linkonce global ptr null
@"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk" = linkonce global ptr null
@_llgo_main.Writer = linkonce global ptr null
@"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY" = linkonce global ptr null
@"[]_llgo_byte" = linkonce global ptr null
@_llgo_byte = linkonce global ptr null
@_llgo_int = linkonce global ptr null
@_llgo_error = global ptr null
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null
@_llgo_string = linkonce global ptr null
@0 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@5 = private unnamed_addr constant [12 x i8] c"main.Writer\00", align 1
@_llgo_int64 = linkonce global ptr null
@6 = private unnamed_addr constant [8 x i8] c"WriteTo\00", align 1
@7 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@8 = private unnamed_addr constant [14 x i8] c"main.WriterTo\00", align 1
@"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk" = linkonce global ptr null
@9 = private unnamed_addr constant [8 x i8] c"WriteTo\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_llgo_main.nopCloserWriterTo = global ptr null
@"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y" = linkonce global ptr null
@_llgo_main.Reader = linkonce global ptr null
@12 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@13 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@14 = private unnamed_addr constant [12 x i8] c"main.Reader\00", align 1
@15 = private unnamed_addr constant [7 x i8] c"Reader\00", align 1
@16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@17 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@18 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null
@19 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"WriteTo\00", align 1
@21 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@22 = private unnamed_addr constant [23 x i8] c"main.nopCloserWriterTo\00", align 1
@"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I" = linkonce global ptr null
@23 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@24 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@25 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_llgo_main.nopCloser = global ptr null
@27 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@28 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@29 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@30 = private unnamed_addr constant [15 x i8] c"main.nopCloser\00", align 1
@_llgo_main.StringWriter = linkonce global ptr null
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = linkonce global ptr null
@31 = private unnamed_addr constant [12 x i8] c"WriteString\00", align 1
@32 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@33 = private unnamed_addr constant [18 x i8] c"main.StringWriter\00", align 1
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = linkonce global ptr null
@34 = private unnamed_addr constant [12 x i8] c"WriteString\00", align 1
@35 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@37 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@38 = private unnamed_addr constant [12 x i8] c"short write\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@39 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@"*_llgo_main.stringReader" = global ptr null
@_llgo_main.stringReader = global ptr null
@"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk" = global ptr null
@40 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@42 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@44 = private unnamed_addr constant [9 x i8] c"prevRune\00", align 1
@45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@46 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"Len\00", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null
@48 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@49 = private unnamed_addr constant [7 x i8] c"ReadAt\00", align 1
@"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c" = linkonce global ptr null
@50 = private unnamed_addr constant [9 x i8] c"ReadByte\00", align 1
@"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM" = linkonce global ptr null
@51 = private unnamed_addr constant [9 x i8] c"ReadRune\00", align 1
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null
@_llgo_rune = linkonce global ptr null
@52 = private unnamed_addr constant [5 x i8] c"Seek\00", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = linkonce global ptr null
@53 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = linkonce global ptr null
@54 = private unnamed_addr constant [11 x i8] c"UnreadByte\00", align 1
@55 = private unnamed_addr constant [11 x i8] c"UnreadRune\00", align 1
@56 = private unnamed_addr constant [8 x i8] c"WriteTo\00", align 1
@57 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@58 = private unnamed_addr constant [18 x i8] c"main.stringReader\00", align 1
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null
@59 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@60 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"*_llgo_main.errorString" = global ptr null
@_llgo_main.errorString = global ptr null
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null
@62 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@63 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@64 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@65 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@66 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@67 = private unnamed_addr constant [17 x i8] c"main.errorString\00", align 1
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null
@68 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@69 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@71 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@72 = private unnamed_addr constant [38 x i8] c"stringsReader.ReadAt: negative offset\00", align 1
@73 = private unnamed_addr constant [35 x i8] c"stringsReader.Seek: invalid whence\00", align 1
@74 = private unnamed_addr constant [38 x i8] c"stringsReader.Seek: negative position\00", align 1
@75 = private unnamed_addr constant [49 x i8] c"stringsReader.UnreadByte: at beginning of string\00", align 1
@76 = private unnamed_addr constant [50 x i8] c"strings.Reader.UnreadRune: at beginning of string\00", align 1
@77 = private unnamed_addr constant [63 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune\00", align 1
@78 = private unnamed_addr constant [49 x i8] c"stringsReader.WriteTo: invalid WriteString count\00", align 1

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
  %3 = phi %"github.com/goplus/llgo/internal/runtime.Slice" [ %2, %_llgo_0 ], [ %26, %_llgo_3 ], [ %71, %_llgo_6 ]
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
  %mrv = insertvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } poison, %"github.com/goplus/llgo/internal/runtime.Slice" %26, 0
  %mrv1 = insertvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %57, 1
  ret { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1

_llgo_6:                                          ; preds = %_llgo_3
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 1)
  %59 = getelementptr inbounds i8, ptr %58, i64 0
  store i8 0, ptr %59, align 1
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, i32 0, i32 0
  store ptr %58, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, i32 0, i32 1
  store i64 1, ptr %62, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, i32 0, i32 2
  store i64 1, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, align 8
  %65 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %64, 0
  %66 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %64, 1
  %67 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %26, ptr %65, i64 %66, i64 1)
  %68 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, 1
  %69 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %67, 2
  %70 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %67, 0
  %71 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %70, i64 1, i64 %69, i64 0, i64 %68, i64 %69)
  br label %_llgo_1
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.WriteString(%"github.com/goplus/llgo/internal/runtime.iface" %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %3 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %4 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %3, ptr %2)
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %48)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %48, 0
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %16, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %17, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1

_llgo_2:                                          ; preds = %_llgo_5
  %18 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %21 = getelementptr ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = alloca { ptr, ptr }, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %23, i32 0, i32 1
  store ptr %19, ptr %25, align 8
  %26 = load { ptr, ptr }, ptr %23, align 8
  %27 = extractvalue { ptr, ptr } %26, 1
  %28 = extractvalue { ptr, ptr } %26, 0
  %29 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %28(ptr %27, %"github.com/goplus/llgo/internal/runtime.Slice" %18)
  %30 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %29, 0
  %31 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %29, 1
  %mrv2 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %30, 0
  %mrv3 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2, %"github.com/goplus/llgo/internal/runtime.iface" %31, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv3

_llgo_3:                                          ; preds = %_llgo_0
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %33 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %33, ptr %2)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, i32 0, i32 1
  store ptr %32, ptr %37, align 8
  %38 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %35, align 8
  %39 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %40 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %38, ptr %40, align 8
  %41 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, i32 0, i32 1
  store i1 true, ptr %41, align 1
  %42 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %39, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %43 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %44 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %43, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %44, align 8
  %45 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %43, i32 0, i32 1
  store i1 false, ptr %45, align 1
  %46 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %43, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %47 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %42, %_llgo_3 ], [ %46, %_llgo_4 ]
  %48 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %47, 0
  %49 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %47, 1
  br i1 %49, label %_llgo_1, label %_llgo_2
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
  store ptr @37, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 3, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %4)
  store %"github.com/goplus/llgo/internal/runtime.iface" %5, ptr @main.EOF, align 8
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @38, ptr %7, align 8
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
  store ptr @39, ptr %5, align 8
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %17, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %18, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %15, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %17, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %18, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %27, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %28, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1

_llgo_2:                                          ; preds = %_llgo_0
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @71, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 21, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = load ptr, ptr @_llgo_string, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %32, ptr %34, align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, i32 0, i32 1
  store ptr %34, ptr %37, align 8
  %38 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %38)
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %15, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*nopCloserWriterTo).WriteTo"(ptr %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load %main.nopCloserWriterTo, ptr %0, align 8
  %3 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloserWriterTo.WriteTo(%main.nopCloserWriterTo %2, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %4 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %3, 1
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %4, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %5, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1
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
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %9, align 4
  %10 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %12 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %11, 1
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %11, i64 %13, i64 %14)
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 0
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 1
  %18 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %1, ptr %16, i64 %17, i64 1)
  %19 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = add i64 %20, %18
  %22 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %21, ptr %22, align 4
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %18, 0
  %mrv2 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).ReadAt"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1, i64 %2) {
_llgo_0:
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @72, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 37, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %7)
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %11 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %10, 1
  %12 = icmp sge i64 %2, %11
  br i1 %12, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %13 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %13, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1

_llgo_4:                                          ; preds = %_llgo_2
  %14 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 1
  %17 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %15, i64 %2, i64 %16)
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %17, 0
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %17, 1
  %20 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %1, ptr %18, i64 %19, i64 1)
  %21 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 1
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %23 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %24 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %23, %_llgo_5 ]
  %mrv2 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %20, 0
  %mrv3 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2, %"github.com/goplus/llgo/internal/runtime.iface" %24, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv3
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
  %mrv = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } { i8 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 1
  ret { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %12, 0
  %14 = icmp slt i64 %10, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i8, ptr %13, i64 %10
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 4
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %19, ptr %20, align 4
  %mrv1 = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i8 %16, 0
  %mrv2 = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 1
  ret { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2
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
  %mrv = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i32 0, i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 %10, ptr %11, align 4
  %12 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 0
  %17 = icmp slt i64 %13, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %17)
  %18 = getelementptr inbounds i8, ptr %16, i64 %13
  %19 = load i8, ptr %18, align 1
  %20 = icmp ult i8 %19, -128
  br i1 %20, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %21 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %23, ptr %24, align 4
  %25 = sext i8 %19 to i32
  %mrv1 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i32 %25, 0
  %mrv2 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1, i64 1, 1
  %mrv3 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv3

_llgo_4:                                          ; preds = %_llgo_2
  %26 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %28 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 4
  %30 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %27, 1
  %31 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %27, i64 %29, i64 %30)
  %32 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %31)
  %33 = extractvalue { i32, i64 } %32, 0
  %34 = extractvalue { i32, i64 } %32, 1
  %35 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = add i64 %36, %34
  %38 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %37, ptr %38, align 4
  %mrv4 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i32 %33, 0
  %mrv5 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv4, i64 %34, 1
  %mrv6 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv5, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv6
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
  store ptr @73, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 34, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %19)
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %20, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_8:                                          ; preds = %_llgo_1
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @74, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 37, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %24)
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %25, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1

_llgo_9:                                          ; preds = %_llgo_1
  %26 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %5, ptr %26, align 4
  %mrv2 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %5, 0
  %mrv3 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv3
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
  store ptr @75, ptr %5, align 8
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
  store ptr @76, ptr %5, align 8
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
  store ptr @77, ptr %13, align 8
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
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %10, 1
  %14 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %10, i64 %12, i64 %13)
  %15 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.WriteString(%"github.com/goplus/llgo/internal/runtime.iface" %1, %"github.com/goplus/llgo/internal/runtime.String" %14)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 1
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %14, 1
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @78, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 48, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = load ptr, ptr @_llgo_string, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %25, align 8
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, i32 0, i32 0
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, i32 0, i32 1
  store ptr %25, ptr %28, align 8
  %29 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %29)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %30 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 4
  %32 = add i64 %31, %16
  %33 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %32, ptr %33, align 4
  %34 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %14, 1
  %35 = icmp ne i64 %16, %34
  br i1 %35, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  %36 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.ErrShortWrite, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %37 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ %17, %_llgo_4 ], [ %17, %_llgo_7 ], [ %36, %_llgo_5 ]
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i64 %16, 0
  %mrv1 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv, %"github.com/goplus/llgo/internal/runtime.iface" %37, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1

_llgo_7:                                          ; preds = %_llgo_4
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %17)
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %17, 1
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %40, i32 0, i32 0
  store ptr %38, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %40, i32 0, i32 1
  store ptr %39, ptr %42, align 8
  %43 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %40, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %45 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %45, i32 0, i32 0
  store ptr %44, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %45, i32 0, i32 1
  store ptr null, ptr %47, align 8
  %48 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %45, align 8
  %49 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %43, %"github.com/goplus/llgo/internal/runtime.eface" %48)
  br i1 %49, label %_llgo_5, label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_byte, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  store ptr %2, ptr @_llgo_byte, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_byte, align 8
  %4 = load ptr, ptr @"[]_llgo_byte", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %3)
  store ptr %6, ptr @"[]_llgo_byte", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @"[]_llgo_byte", align 8
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %10, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %14, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %15 = load ptr, ptr @_llgo_string, align 8
  %16 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 1
  store i64 0, ptr %21, align 4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, i32 0, i32 2
  store i64 0, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %19, align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %25 = getelementptr ptr, ptr %24, i64 0
  store ptr %15, ptr %25, align 8
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %26, i32 0, i32 0
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %26, i32 0, i32 1
  store i64 1, ptr %28, align 4
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %26, i32 0, i32 2
  store i64 1, ptr %29, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %26, align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %23, %"github.com/goplus/llgo/internal/runtime.Slice" %30, i1 false)
  store ptr %31, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %32 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @0, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 5, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %37 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %37, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %36, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %37, i32 0, i32 1
  store ptr %32, ptr %39, align 8
  %40 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %37, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %42 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %41, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %40, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 0
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 1
  store i64 1, ptr %45, align 4
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, i32 0, i32 2
  store i64 1, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %43, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 0
  store ptr @1, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %48, i32 0, i32 1
  store i64 4, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @2, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 5, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %51, %"github.com/goplus/llgo/internal/runtime.String" %55, %"github.com/goplus/llgo/internal/runtime.Slice" %47)
  store ptr %56, ptr @_llgo_error, align 8
  %57 = load ptr, ptr @_llgo_error, align 8
  %58 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %61 = getelementptr ptr, ptr %60, i64 0
  store ptr %7, ptr %61, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 0
  store ptr %60, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 1
  store i64 1, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 2
  store i64 1, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %68 = getelementptr ptr, ptr %67, i64 0
  store ptr %11, ptr %68, align 8
  %69 = getelementptr ptr, ptr %67, i64 1
  store ptr %57, ptr %69, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, i32 0, i32 0
  store ptr %67, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, i32 0, i32 1
  store i64 2, ptr %72, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, i32 0, i32 2
  store i64 2, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %66, %"github.com/goplus/llgo/internal/runtime.Slice" %74, i1 false)
  store ptr %75, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %76 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %77 = load ptr, ptr @_llgo_main.Writer, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 0
  store ptr @3, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 1
  store i64 5, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %79, align 8
  %83 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %83, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %82, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %83, i32 0, i32 1
  store ptr %76, ptr %85, align 8
  %86 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %83, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %88 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %87, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %86, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 0
  store ptr %87, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 1
  store i64 1, ptr %91, align 4
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, i32 0, i32 2
  store i64 1, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %89, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr @4, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 4, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 0
  store ptr @5, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 1
  store i64 11, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %98, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %97, %"github.com/goplus/llgo/internal/runtime.String" %101, %"github.com/goplus/llgo/internal/runtime.Slice" %93)
  store ptr %102, ptr @_llgo_main.Writer, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %103 = load ptr, ptr @_llgo_main.Writer, align 8
  %104 = load ptr, ptr @_llgo_int64, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  store ptr %106, ptr @_llgo_int64, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %107 = load ptr, ptr @_llgo_int64, align 8
  %108 = load ptr, ptr @_llgo_error, align 8
  %109 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %112 = getelementptr ptr, ptr %111, i64 0
  store ptr %103, ptr %112, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 0
  store ptr %111, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 1
  store i64 1, ptr %115, align 4
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, i32 0, i32 2
  store i64 1, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %113, align 8
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %119 = getelementptr ptr, ptr %118, i64 0
  store ptr %107, ptr %119, align 8
  %120 = getelementptr ptr, ptr %118, i64 1
  store ptr %108, ptr %120, align 8
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %121, i32 0, i32 0
  store ptr %118, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %121, i32 0, i32 1
  store i64 2, ptr %123, align 4
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %121, i32 0, i32 2
  store i64 2, ptr %124, align 4
  %125 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %121, align 8
  %126 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %117, %"github.com/goplus/llgo/internal/runtime.Slice" %125, i1 false)
  store ptr %126, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %127 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %128 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @6, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 7, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %134, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %133, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %134, i32 0, i32 1
  store ptr %127, ptr %136, align 8
  %137 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %134, align 8
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %139 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %137, ptr %139, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 0
  store ptr %138, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 1
  store i64 1, ptr %142, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 2
  store i64 1, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 0
  store ptr @7, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 1
  store i64 4, ptr %147, align 4
  %148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %145, align 8
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 0
  store ptr @8, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 1
  store i64 13, ptr %151, align 4
  %152 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %149, align 8
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %148, %"github.com/goplus/llgo/internal/runtime.String" %152, %"github.com/goplus/llgo/internal/runtime.Slice" %144)
  store ptr %153, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %154 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %155 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr @9, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 7, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %161 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %161, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %160, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %161, i32 0, i32 1
  store ptr %154, ptr %163, align 8
  %164 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %161, align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %166 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %165, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %164, ptr %166, align 8
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 0
  store ptr %165, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 1
  store i64 1, ptr %169, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 2
  store i64 1, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @10, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 4, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr @11, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 0, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %175, %"github.com/goplus/llgo/internal/runtime.String" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %171)
  store ptr %180, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 3, i64 3)
  store ptr %181, ptr @_llgo_main.nopCloserWriterTo, align 8
  %182 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %183 = load ptr, ptr @_llgo_main.Reader, align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 0
  store ptr @12, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 1
  store i64 4, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %185, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %189, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %188, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %189, i32 0, i32 1
  store ptr %182, ptr %191, align 8
  %192 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %189, align 8
  %193 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %194 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %193, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %192, ptr %194, align 8
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %195, i32 0, i32 0
  store ptr %193, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %195, i32 0, i32 1
  store i64 1, ptr %197, align 4
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %195, i32 0, i32 2
  store i64 1, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %195, align 8
  %200 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 0
  store ptr @13, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %200, i32 0, i32 1
  store i64 4, ptr %202, align 4
  %203 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %200, align 8
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 0
  store ptr @14, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 1
  store i64 11, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %204, align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %203, %"github.com/goplus/llgo/internal/runtime.String" %207, %"github.com/goplus/llgo/internal/runtime.Slice" %199)
  store ptr %208, ptr @_llgo_main.Reader, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %209 = load ptr, ptr @_llgo_main.Reader, align 8
  %210 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %212 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %212, i32 0, i32 0
  store ptr @15, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %212, i32 0, i32 1
  store i64 6, ptr %214, align 4
  %215 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %212, align 8
  %216 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 0
  store ptr @16, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 1
  store i64 0, ptr %218, align 4
  %219 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %216, align 8
  %220 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %215, ptr %209, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %219, i1 true)
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @17, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 4, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %226 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %225, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %220, ptr %226, align 8
  %227 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %227, i32 0, i32 0
  store ptr %225, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %227, i32 0, i32 1
  store i64 1, ptr %229, align 4
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %227, i32 0, i32 2
  store i64 1, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %227, align 8
  %232 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %224, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %231)
  store ptr %232, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %233 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %234 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 0
  store ptr @18, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 1
  store i64 5, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %234, align 8
  %238 = load ptr, ptr @_llgo_error, align 8
  %239 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %241 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, i32 0, i32 0
  store ptr %241, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, i32 0, i32 1
  store i64 0, ptr %244, align 4
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, i32 0, i32 2
  store i64 0, ptr %245, align 4
  %246 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %242, align 8
  %247 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %248 = getelementptr ptr, ptr %247, i64 0
  store ptr %238, ptr %248, align 8
  %249 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, i32 0, i32 0
  store ptr %247, ptr %250, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, i32 0, i32 1
  store i64 1, ptr %251, align 4
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, i32 0, i32 2
  store i64 1, ptr %252, align 4
  %253 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, align 8
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %246, %"github.com/goplus/llgo/internal/runtime.Slice" %253, i1 false)
  store ptr %254, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %255 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %256 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %237, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 1
  store ptr %255, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %260, align 8
  %261 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %256, align 8
  %262 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %262, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %237, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %262, i32 0, i32 1
  store ptr %255, ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %262, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %262, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %266, align 8
  %267 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %262, align 8
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @19, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 4, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %273 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %271, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 1
  store ptr %272, ptr %275, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %277, align 8
  %278 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %273, align 8
  %279 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %271, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 1
  store ptr %272, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %279, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %283, align 8
  %284 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %279, align 8
  %285 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 0
  store ptr @20, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 1
  store i64 7, ptr %287, align 4
  %288 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %285, align 8
  %289 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %290 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %288, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 1
  store ptr %289, ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %294, align 8
  %295 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %290, align 8
  %296 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %296, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %288, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %296, i32 0, i32 1
  store ptr %289, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %296, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %296, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %300, align 8
  %301 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %296, align 8
  %302 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %303 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %302, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %267, ptr %303, align 8
  %304 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %302, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %284, ptr %304, align 8
  %305 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %302, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %301, ptr %305, align 8
  %306 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %306, i32 0, i32 0
  store ptr %302, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %306, i32 0, i32 1
  store i64 3, ptr %308, align 4
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %306, i32 0, i32 2
  store i64 3, ptr %309, align 4
  %310 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %306, align 8
  %311 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %312 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %261, ptr %312, align 8
  %313 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %278, ptr %313, align 8
  %314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %295, ptr %314, align 8
  %315 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 0
  store ptr %311, ptr %316, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 1
  store i64 3, ptr %317, align 4
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 2
  store i64 3, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 0
  store ptr @21, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 1
  store i64 4, ptr %322, align 4
  %323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %320, align 8
  %324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 0
  store ptr @22, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 1
  store i64 22, ptr %326, align 4
  %327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %324, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %181, %"github.com/goplus/llgo/internal/runtime.String" %323, %"github.com/goplus/llgo/internal/runtime.String" %327, ptr %233, %"github.com/goplus/llgo/internal/runtime.Slice" %310, %"github.com/goplus/llgo/internal/runtime.Slice" %319)
  %328 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %329 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %330 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %331 = icmp eq ptr %330, null
  br i1 %331, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 0
  store ptr @23, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 1
  store i64 5, ptr %334, align 4
  %335 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %332, align 8
  %336 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %336, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %335, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %336, i32 0, i32 1
  store ptr %328, ptr %338, align 8
  %339 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %336, align 8
  %340 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 0
  store ptr @24, ptr %341, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 1
  store i64 4, ptr %342, align 4
  %343 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %340, align 8
  %344 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %344, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %343, ptr %345, align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %344, i32 0, i32 1
  store ptr %329, ptr %346, align 8
  %347 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %344, align 8
  %348 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %349 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %348, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %339, ptr %349, align 8
  %350 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %348, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %347, ptr %350, align 8
  %351 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, i32 0, i32 0
  store ptr %348, ptr %352, align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, i32 0, i32 1
  store i64 2, ptr %353, align 4
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, i32 0, i32 2
  store i64 2, ptr %354, align 4
  %355 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %351, align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr @25, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 4, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 0
  store ptr @26, ptr %361, align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 1
  store i64 0, ptr %362, align 4
  %363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %360, align 8
  %364 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %359, %"github.com/goplus/llgo/internal/runtime.String" %363, %"github.com/goplus/llgo/internal/runtime.Slice" %355)
  store ptr %364, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %365 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %365, ptr @_llgo_main.nopCloser, align 8
  %366 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %367 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 0
  store ptr @27, ptr %368, align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 1
  store i64 5, ptr %369, align 4
  %370 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %367, align 8
  %371 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %372 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %372, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %370, ptr %373, align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %372, i32 0, i32 1
  store ptr %371, ptr %374, align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %372, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %372, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %376, align 8
  %377 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %372, align 8
  %378 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %378, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %370, ptr %379, align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %378, i32 0, i32 1
  store ptr %371, ptr %380, align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %378, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %378, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %382, align 8
  %383 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %378, align 8
  %384 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 0
  store ptr @28, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 1
  store i64 4, ptr %386, align 4
  %387 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %384, align 8
  %388 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %389 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %387, ptr %390, align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 1
  store ptr %388, ptr %391, align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %393, align 8
  %394 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %389, align 8
  %395 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %395, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %387, ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %395, i32 0, i32 1
  store ptr %388, ptr %397, align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %395, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %395, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %399, align 8
  %400 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %395, align 8
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %402 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %401, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %383, ptr %402, align 8
  %403 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %401, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %400, ptr %403, align 8
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %404, i32 0, i32 0
  store ptr %401, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %404, i32 0, i32 1
  store i64 2, ptr %406, align 4
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %404, i32 0, i32 2
  store i64 2, ptr %407, align 4
  %408 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %404, align 8
  %409 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %410 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %377, ptr %410, align 8
  %411 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %394, ptr %411, align 8
  %412 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 0
  store ptr %409, ptr %413, align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 1
  store i64 2, ptr %414, align 4
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 2
  store i64 2, ptr %415, align 4
  %416 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, align 8
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 0
  store ptr @29, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 1
  store i64 4, ptr %419, align 4
  %420 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %417, align 8
  %421 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 0
  store ptr @30, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 1
  store i64 14, ptr %423, align 4
  %424 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %421, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %365, %"github.com/goplus/llgo/internal/runtime.String" %420, %"github.com/goplus/llgo/internal/runtime.String" %424, ptr %366, %"github.com/goplus/llgo/internal/runtime.Slice" %408, %"github.com/goplus/llgo/internal/runtime.Slice" %416)
  %425 = load ptr, ptr @_llgo_string, align 8
  %426 = load ptr, ptr @_llgo_int, align 8
  %427 = load ptr, ptr @_llgo_error, align 8
  %428 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %429 = icmp eq ptr %428, null
  br i1 %429, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %430 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %431 = getelementptr ptr, ptr %430, i64 0
  store ptr %425, ptr %431, align 8
  %432 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %432, i32 0, i32 0
  store ptr %430, ptr %433, align 8
  %434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %432, i32 0, i32 1
  store i64 1, ptr %434, align 4
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %432, i32 0, i32 2
  store i64 1, ptr %435, align 4
  %436 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %432, align 8
  %437 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %438 = getelementptr ptr, ptr %437, i64 0
  store ptr %426, ptr %438, align 8
  %439 = getelementptr ptr, ptr %437, i64 1
  store ptr %427, ptr %439, align 8
  %440 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %441 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %440, i32 0, i32 0
  store ptr %437, ptr %441, align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %440, i32 0, i32 1
  store i64 2, ptr %442, align 4
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %440, i32 0, i32 2
  store i64 2, ptr %443, align 4
  %444 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %440, align 8
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %436, %"github.com/goplus/llgo/internal/runtime.Slice" %444, i1 false)
  store ptr %445, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %446 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %447 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %448 = icmp eq ptr %447, null
  br i1 %448, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 0
  store ptr @31, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 1
  store i64 11, ptr %451, align 4
  %452 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %449, align 8
  %453 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %453, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %452, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %453, i32 0, i32 1
  store ptr %446, ptr %455, align 8
  %456 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %453, align 8
  %457 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %458 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %457, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %456, ptr %458, align 8
  %459 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %459, i32 0, i32 0
  store ptr %457, ptr %460, align 8
  %461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %459, i32 0, i32 1
  store i64 1, ptr %461, align 4
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %459, i32 0, i32 2
  store i64 1, ptr %462, align 4
  %463 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %459, align 8
  %464 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %464, i32 0, i32 0
  store ptr @32, ptr %465, align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %464, i32 0, i32 1
  store i64 4, ptr %466, align 4
  %467 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %464, align 8
  %468 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %468, i32 0, i32 0
  store ptr @33, ptr %469, align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %468, i32 0, i32 1
  store i64 17, ptr %470, align 4
  %471 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %468, align 8
  %472 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %467, %"github.com/goplus/llgo/internal/runtime.String" %471, %"github.com/goplus/llgo/internal/runtime.Slice" %463)
  store ptr %472, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %473 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %474 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %476 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %476, i32 0, i32 0
  store ptr @34, ptr %477, align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %476, i32 0, i32 1
  store i64 11, ptr %478, align 4
  %479 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %476, align 8
  %480 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %480, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %479, ptr %481, align 8
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %480, i32 0, i32 1
  store ptr %473, ptr %482, align 8
  %483 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %480, align 8
  %484 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %485 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %484, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %483, ptr %485, align 8
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, i32 0, i32 0
  store ptr %484, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, i32 0, i32 1
  store i64 1, ptr %488, align 4
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, i32 0, i32 2
  store i64 1, ptr %489, align 4
  %490 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, align 8
  %491 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 0
  store ptr @35, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 1
  store i64 4, ptr %493, align 4
  %494 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %491, align 8
  %495 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 0
  store ptr @36, ptr %496, align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 1
  store i64 0, ptr %497, align 4
  %498 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %495, align 8
  %499 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %494, %"github.com/goplus/llgo/internal/runtime.String" %498, %"github.com/goplus/llgo/internal/runtime.Slice" %490)
  store ptr %499, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %500 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 10)
  store ptr %500, ptr @_llgo_main.stringReader, align 8
  %501 = load ptr, ptr @_llgo_string, align 8
  %502 = load ptr, ptr @_llgo_int64, align 8
  %503 = load ptr, ptr @_llgo_int, align 8
  %504 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %504, i32 0, i32 0
  store ptr @40, ptr %505, align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %504, i32 0, i32 1
  store i64 1, ptr %506, align 4
  %507 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %504, align 8
  %508 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %508, i32 0, i32 0
  store ptr @41, ptr %509, align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %508, i32 0, i32 1
  store i64 0, ptr %510, align 4
  %511 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %508, align 8
  %512 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %507, ptr %501, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %511, i1 false)
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 0
  store ptr @42, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 1
  store i64 1, ptr %515, align 4
  %516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %513, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr @43, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 0, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %516, ptr %502, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %520, i1 false)
  %522 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 0
  store ptr @44, ptr %523, align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 1
  store i64 8, ptr %524, align 4
  %525 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %522, align 8
  %526 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %526, i32 0, i32 0
  store ptr @45, ptr %527, align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %526, i32 0, i32 1
  store i64 0, ptr %528, align 4
  %529 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %526, align 8
  %530 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %525, ptr %503, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %529, i1 false)
  %531 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 0
  store ptr @46, ptr %532, align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 1
  store i64 4, ptr %533, align 4
  %534 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %531, align 8
  %535 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %536 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %535, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %512, ptr %536, align 8
  %537 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %535, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %521, ptr %537, align 8
  %538 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %535, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %530, ptr %538, align 8
  %539 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %539, i32 0, i32 0
  store ptr %535, ptr %540, align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %539, i32 0, i32 1
  store i64 3, ptr %541, align 4
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %539, i32 0, i32 2
  store i64 3, ptr %542, align 4
  %543 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %539, align 8
  %544 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %534, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %543)
  store ptr %544, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %545 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %546 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %546, i32 0, i32 0
  store ptr @47, ptr %547, align 8
  %548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %546, i32 0, i32 1
  store i64 3, ptr %548, align 4
  %549 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %546, align 8
  %550 = load ptr, ptr @_llgo_int, align 8
  %551 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %552 = icmp eq ptr %551, null
  br i1 %552, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %553 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %554 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %554, i32 0, i32 0
  store ptr %553, ptr %555, align 8
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %554, i32 0, i32 1
  store i64 0, ptr %556, align 4
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %554, i32 0, i32 2
  store i64 0, ptr %557, align 4
  %558 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %554, align 8
  %559 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %560 = getelementptr ptr, ptr %559, i64 0
  store ptr %550, ptr %560, align 8
  %561 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, i32 0, i32 0
  store ptr %559, ptr %562, align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, i32 0, i32 1
  store i64 1, ptr %563, align 4
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, i32 0, i32 2
  store i64 1, ptr %564, align 4
  %565 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %561, align 8
  %566 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %558, %"github.com/goplus/llgo/internal/runtime.Slice" %565, i1 false)
  store ptr %566, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %567 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %568 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %568, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %549, ptr %569, align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %568, i32 0, i32 1
  store ptr %567, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %568, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %571, align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %568, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %572, align 8
  %573 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %568, align 8
  %574 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %575 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %574, i32 0, i32 0
  store ptr @48, ptr %575, align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %574, i32 0, i32 1
  store i64 4, ptr %576, align 4
  %577 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %574, align 8
  %578 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %579 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %577, ptr %580, align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 1
  store ptr %578, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %583, align 8
  %584 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %579, align 8
  %585 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 0
  store ptr @49, ptr %586, align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 1
  store i64 6, ptr %587, align 4
  %588 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %585, align 8
  %589 = load ptr, ptr @"[]_llgo_byte", align 8
  %590 = load ptr, ptr @_llgo_int64, align 8
  %591 = load ptr, ptr @_llgo_int, align 8
  %592 = load ptr, ptr @_llgo_error, align 8
  %593 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %594 = icmp eq ptr %593, null
  br i1 %594, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %595 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %596 = getelementptr ptr, ptr %595, i64 0
  store ptr %589, ptr %596, align 8
  %597 = getelementptr ptr, ptr %595, i64 1
  store ptr %590, ptr %597, align 8
  %598 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, i32 0, i32 0
  store ptr %595, ptr %599, align 8
  %600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, i32 0, i32 1
  store i64 2, ptr %600, align 4
  %601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, i32 0, i32 2
  store i64 2, ptr %601, align 4
  %602 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %598, align 8
  %603 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %604 = getelementptr ptr, ptr %603, i64 0
  store ptr %591, ptr %604, align 8
  %605 = getelementptr ptr, ptr %603, i64 1
  store ptr %592, ptr %605, align 8
  %606 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, i32 0, i32 0
  store ptr %603, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, i32 0, i32 1
  store i64 2, ptr %608, align 4
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, i32 0, i32 2
  store i64 2, ptr %609, align 4
  %610 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, align 8
  %611 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %602, %"github.com/goplus/llgo/internal/runtime.Slice" %610, i1 false)
  store ptr %611, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %612 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %613 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %613, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %588, ptr %614, align 8
  %615 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %613, i32 0, i32 1
  store ptr %612, ptr %615, align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %613, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %616, align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %613, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %617, align 8
  %618 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %613, align 8
  %619 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %619, i32 0, i32 0
  store ptr @50, ptr %620, align 8
  %621 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %619, i32 0, i32 1
  store i64 8, ptr %621, align 4
  %622 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %619, align 8
  %623 = load ptr, ptr @_llgo_byte, align 8
  %624 = load ptr, ptr @_llgo_error, align 8
  %625 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %626 = icmp eq ptr %625, null
  br i1 %626, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %627 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %628 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, i32 0, i32 0
  store ptr %627, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, i32 0, i32 1
  store i64 0, ptr %630, align 4
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, i32 0, i32 2
  store i64 0, ptr %631, align 4
  %632 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %628, align 8
  %633 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %634 = getelementptr ptr, ptr %633, i64 0
  store ptr %623, ptr %634, align 8
  %635 = getelementptr ptr, ptr %633, i64 1
  store ptr %624, ptr %635, align 8
  %636 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, i32 0, i32 0
  store ptr %633, ptr %637, align 8
  %638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, i32 0, i32 1
  store i64 2, ptr %638, align 4
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, i32 0, i32 2
  store i64 2, ptr %639, align 4
  %640 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, align 8
  %641 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %632, %"github.com/goplus/llgo/internal/runtime.Slice" %640, i1 false)
  store ptr %641, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %642 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %643 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %622, ptr %644, align 8
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 1
  store ptr %642, ptr %645, align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %646, align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %643, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %647, align 8
  %648 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %643, align 8
  %649 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %649, i32 0, i32 0
  store ptr @51, ptr %650, align 8
  %651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %649, i32 0, i32 1
  store i64 8, ptr %651, align 4
  %652 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %649, align 8
  %653 = load ptr, ptr @_llgo_rune, align 8
  %654 = icmp eq ptr %653, null
  br i1 %654, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %655 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  store ptr %655, ptr @_llgo_rune, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %656 = load ptr, ptr @_llgo_rune, align 8
  %657 = load ptr, ptr @_llgo_int, align 8
  %658 = load ptr, ptr @_llgo_error, align 8
  %659 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %660 = icmp eq ptr %659, null
  br i1 %660, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %661 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %662 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %662, i32 0, i32 0
  store ptr %661, ptr %663, align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %662, i32 0, i32 1
  store i64 0, ptr %664, align 4
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %662, i32 0, i32 2
  store i64 0, ptr %665, align 4
  %666 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %662, align 8
  %667 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %668 = getelementptr ptr, ptr %667, i64 0
  store ptr %656, ptr %668, align 8
  %669 = getelementptr ptr, ptr %667, i64 1
  store ptr %657, ptr %669, align 8
  %670 = getelementptr ptr, ptr %667, i64 2
  store ptr %658, ptr %670, align 8
  %671 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %672 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %671, i32 0, i32 0
  store ptr %667, ptr %672, align 8
  %673 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %671, i32 0, i32 1
  store i64 3, ptr %673, align 4
  %674 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %671, i32 0, i32 2
  store i64 3, ptr %674, align 4
  %675 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %671, align 8
  %676 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %666, %"github.com/goplus/llgo/internal/runtime.Slice" %675, i1 false)
  store ptr %676, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %677 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %678 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %678, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %652, ptr %679, align 8
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %678, i32 0, i32 1
  store ptr %677, ptr %680, align 8
  %681 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %678, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %681, align 8
  %682 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %678, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %682, align 8
  %683 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %678, align 8
  %684 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %684, i32 0, i32 0
  store ptr @52, ptr %685, align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %684, i32 0, i32 1
  store i64 4, ptr %686, align 4
  %687 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %684, align 8
  %688 = load ptr, ptr @_llgo_int64, align 8
  %689 = load ptr, ptr @_llgo_int, align 8
  %690 = load ptr, ptr @_llgo_int64, align 8
  %691 = load ptr, ptr @_llgo_error, align 8
  %692 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %693 = icmp eq ptr %692, null
  br i1 %693, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %694 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %695 = getelementptr ptr, ptr %694, i64 0
  store ptr %688, ptr %695, align 8
  %696 = getelementptr ptr, ptr %694, i64 1
  store ptr %689, ptr %696, align 8
  %697 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %697, i32 0, i32 0
  store ptr %694, ptr %698, align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %697, i32 0, i32 1
  store i64 2, ptr %699, align 4
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %697, i32 0, i32 2
  store i64 2, ptr %700, align 4
  %701 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %697, align 8
  %702 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %703 = getelementptr ptr, ptr %702, i64 0
  store ptr %690, ptr %703, align 8
  %704 = getelementptr ptr, ptr %702, i64 1
  store ptr %691, ptr %704, align 8
  %705 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %706 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %705, i32 0, i32 0
  store ptr %702, ptr %706, align 8
  %707 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %705, i32 0, i32 1
  store i64 2, ptr %707, align 4
  %708 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %705, i32 0, i32 2
  store i64 2, ptr %708, align 4
  %709 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %705, align 8
  %710 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %701, %"github.com/goplus/llgo/internal/runtime.Slice" %709, i1 false)
  store ptr %710, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %711 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %712 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %687, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 1
  store ptr %711, ptr %714, align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %715, align 8
  %716 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %712, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %716, align 8
  %717 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %712, align 8
  %718 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %718, i32 0, i32 0
  store ptr @53, ptr %719, align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %718, i32 0, i32 1
  store i64 4, ptr %720, align 4
  %721 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %718, align 8
  %722 = load ptr, ptr @_llgo_int64, align 8
  %723 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %724 = icmp eq ptr %723, null
  br i1 %724, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %725 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %726 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %726, i32 0, i32 0
  store ptr %725, ptr %727, align 8
  %728 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %726, i32 0, i32 1
  store i64 0, ptr %728, align 4
  %729 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %726, i32 0, i32 2
  store i64 0, ptr %729, align 4
  %730 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %726, align 8
  %731 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %732 = getelementptr ptr, ptr %731, i64 0
  store ptr %722, ptr %732, align 8
  %733 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %733, i32 0, i32 0
  store ptr %731, ptr %734, align 8
  %735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %733, i32 0, i32 1
  store i64 1, ptr %735, align 4
  %736 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %733, i32 0, i32 2
  store i64 1, ptr %736, align 4
  %737 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %733, align 8
  %738 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %730, %"github.com/goplus/llgo/internal/runtime.Slice" %737, i1 false)
  store ptr %738, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %739 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %740 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %721, ptr %741, align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 1
  store ptr %739, ptr %742, align 8
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %743, align 8
  %744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %740, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %744, align 8
  %745 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %740, align 8
  %746 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %746, i32 0, i32 0
  store ptr @54, ptr %747, align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %746, i32 0, i32 1
  store i64 10, ptr %748, align 4
  %749 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %746, align 8
  %750 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %751 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %749, ptr %752, align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 1
  store ptr %750, ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %754, align 8
  %755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %755, align 8
  %756 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %751, align 8
  %757 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 0
  store ptr @55, ptr %758, align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 1
  store i64 10, ptr %759, align 4
  %760 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %757, align 8
  %761 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %762 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %760, ptr %763, align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 1
  store ptr %761, ptr %764, align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %765, align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %766, align 8
  %767 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %762, align 8
  %768 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %768, i32 0, i32 0
  store ptr @56, ptr %769, align 8
  %770 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %768, i32 0, i32 1
  store i64 7, ptr %770, align 4
  %771 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %768, align 8
  %772 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %773 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %771, ptr %774, align 8
  %775 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 1
  store ptr %772, ptr %775, align 8
  %776 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %776, align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %777, align 8
  %778 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %773, align 8
  %779 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %780 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %573, ptr %780, align 8
  %781 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %584, ptr %781, align 8
  %782 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %618, ptr %782, align 8
  %783 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %648, ptr %783, align 8
  %784 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %683, ptr %784, align 8
  %785 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %717, ptr %785, align 8
  %786 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %745, ptr %786, align 8
  %787 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %756, ptr %787, align 8
  %788 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %767, ptr %788, align 8
  %789 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %779, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %778, ptr %789, align 8
  %790 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %791 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, i32 0, i32 0
  store ptr %779, ptr %791, align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, i32 0, i32 1
  store i64 10, ptr %792, align 4
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, i32 0, i32 2
  store i64 10, ptr %793, align 4
  %794 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %790, align 8
  %795 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %796 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %795, i32 0, i32 0
  store ptr @57, ptr %796, align 8
  %797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %795, i32 0, i32 1
  store i64 4, ptr %797, align 4
  %798 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %795, align 8
  %799 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %800 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %799, i32 0, i32 0
  store ptr @58, ptr %800, align 8
  %801 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %799, i32 0, i32 1
  store i64 17, ptr %801, align 4
  %802 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %799, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %500, %"github.com/goplus/llgo/internal/runtime.String" %798, %"github.com/goplus/llgo/internal/runtime.String" %802, ptr %545, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %794)
  %803 = load ptr, ptr @_llgo_main.stringReader, align 8
  %804 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %803)
  store ptr %804, ptr @"*_llgo_main.stringReader", align 8
  %805 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %806 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %807 = icmp eq ptr %806, null
  br i1 %807, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %808 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %808, i32 0, i32 0
  store ptr @59, ptr %809, align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %808, i32 0, i32 1
  store i64 4, ptr %810, align 4
  %811 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %808, align 8
  %812 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %812, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %811, ptr %813, align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %812, i32 0, i32 1
  store ptr %805, ptr %814, align 8
  %815 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %812, align 8
  %816 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %817 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %816, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %815, ptr %817, align 8
  %818 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, i32 0, i32 0
  store ptr %816, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, i32 0, i32 1
  store i64 1, ptr %820, align 4
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, i32 0, i32 2
  store i64 1, ptr %821, align 4
  %822 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %818, align 8
  %823 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %823, i32 0, i32 0
  store ptr @60, ptr %824, align 8
  %825 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %823, i32 0, i32 1
  store i64 4, ptr %825, align 4
  %826 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %823, align 8
  %827 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %827, i32 0, i32 0
  store ptr @61, ptr %828, align 8
  %829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %827, i32 0, i32 1
  store i64 0, ptr %829, align 4
  %830 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %827, align 8
  %831 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %826, %"github.com/goplus/llgo/internal/runtime.String" %830, %"github.com/goplus/llgo/internal/runtime.Slice" %822)
  store ptr %831, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %832 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %832, ptr @_llgo_main.errorString, align 8
  %833 = load ptr, ptr @_llgo_string, align 8
  %834 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %834, i32 0, i32 0
  store ptr @62, ptr %835, align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %834, i32 0, i32 1
  store i64 1, ptr %836, align 4
  %837 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %834, align 8
  %838 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %838, i32 0, i32 0
  store ptr @63, ptr %839, align 8
  %840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %838, i32 0, i32 1
  store i64 0, ptr %840, align 4
  %841 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %838, align 8
  %842 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %837, ptr %833, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %841, i1 false)
  %843 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %843, i32 0, i32 0
  store ptr @64, ptr %844, align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %843, i32 0, i32 1
  store i64 4, ptr %845, align 4
  %846 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %843, align 8
  %847 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %848 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %847, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %842, ptr %848, align 8
  %849 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %850 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %849, i32 0, i32 0
  store ptr %847, ptr %850, align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %849, i32 0, i32 1
  store i64 1, ptr %851, align 4
  %852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %849, i32 0, i32 2
  store i64 1, ptr %852, align 4
  %853 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %849, align 8
  %854 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %846, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %853)
  store ptr %854, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %855 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %856 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 0
  store ptr @65, ptr %857, align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 1
  store i64 5, ptr %858, align 4
  %859 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %856, align 8
  %860 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %861 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %861, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %859, ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %861, i32 0, i32 1
  store ptr %860, ptr %863, align 8
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %861, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %864, align 8
  %865 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %861, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %865, align 8
  %866 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %861, align 8
  %867 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %868 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %867, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %866, ptr %868, align 8
  %869 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %869, i32 0, i32 0
  store ptr %867, ptr %870, align 8
  %871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %869, i32 0, i32 1
  store i64 1, ptr %871, align 4
  %872 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %869, i32 0, i32 2
  store i64 1, ptr %872, align 4
  %873 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %869, align 8
  %874 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 0
  store ptr @66, ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 1
  store i64 4, ptr %876, align 4
  %877 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %874, align 8
  %878 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %878, i32 0, i32 0
  store ptr @67, ptr %879, align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %878, i32 0, i32 1
  store i64 16, ptr %880, align 4
  %881 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %878, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %832, %"github.com/goplus/llgo/internal/runtime.String" %877, %"github.com/goplus/llgo/internal/runtime.String" %881, ptr %855, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %873)
  %882 = load ptr, ptr @_llgo_main.errorString, align 8
  %883 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %882)
  store ptr %883, ptr @"*_llgo_main.errorString", align 8
  %884 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %885 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %886 = icmp eq ptr %885, null
  br i1 %886, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %887 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %887, i32 0, i32 0
  store ptr @68, ptr %888, align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %887, i32 0, i32 1
  store i64 5, ptr %889, align 4
  %890 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %887, align 8
  %891 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %892 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %891, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %890, ptr %892, align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %891, i32 0, i32 1
  store ptr %884, ptr %893, align 8
  %894 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %891, align 8
  %895 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %896 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %895, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %894, ptr %896, align 8
  %897 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %897, i32 0, i32 0
  store ptr %895, ptr %898, align 8
  %899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %897, i32 0, i32 1
  store i64 1, ptr %899, align 4
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %897, i32 0, i32 2
  store i64 1, ptr %900, align 4
  %901 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %897, align 8
  %902 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %902, i32 0, i32 0
  store ptr @69, ptr %903, align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %902, i32 0, i32 1
  store i64 4, ptr %904, align 4
  %905 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %902, align 8
  %906 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %906, i32 0, i32 0
  store ptr @70, ptr %907, align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %906, i32 0, i32 1
  store i64 0, ptr %908, align 4
  %909 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %906, align 8
  %910 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %905, %"github.com/goplus/llgo/internal/runtime.String" %909, %"github.com/goplus/llgo/internal/runtime.Slice" %901)
  store ptr %910, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

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

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String")
