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
@_llgo_main.Writer = linkonce global ptr null, align 8
@_llgo_byte = linkonce global ptr null, align 8
@"[]_llgo_byte" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"Error", align 1
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [5 x i8] c"error", align 1
@"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"Write", align 1
@4 = private unnamed_addr constant [11 x i8] c"main.Writer", align 1
@_llgo_int64 = linkonce global ptr null, align 8
@"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk" = linkonce global ptr null, align 8
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
@_llgo_rune = linkonce global ptr null, align 8
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null, align 8
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
  %9 = load ptr, ptr @_llgo_error, align 8
  %10 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %11 = load ptr, ptr @_llgo_byte, align 8
  %12 = load ptr, ptr @"[]_llgo_byte", align 8
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = load ptr, ptr @_llgo_error, align 8
  %15 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %16 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %16, ptr %7)
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %18, i32 0, i32 1
  store ptr %8, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %18, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %21

_llgo_2:                                          ; preds = %_llgo_5
  %22 = alloca %main.nopCloser, align 8
  call void @llvm.memset(ptr %22, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %main.nopCloser, ptr %22, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %23, align 8
  %24 = load %main.nopCloser, ptr %22, align 8
  %25 = load ptr, ptr @_llgo_main.nopCloser, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloser %24, ptr %26, align 8
  %27 = load ptr, ptr @_llgo_error, align 8
  %28 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %29 = load ptr, ptr @_llgo_byte, align 8
  %30 = load ptr, ptr @"[]_llgo_byte", align 8
  %31 = load ptr, ptr @_llgo_int, align 8
  %32 = load ptr, ptr @_llgo_error, align 8
  %33 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %34 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %34, ptr %25)
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, i32 0, i32 0
  store ptr %35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, i32 0, i32 1
  store ptr %26, ptr %38, align 8
  %39 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %36, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %39

_llgo_3:                                          ; preds = %_llgo_0
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %41 = load ptr, ptr @_llgo_main.Writer, align 8
  %42 = load ptr, ptr @_llgo_int64, align 8
  %43 = load ptr, ptr @_llgo_error, align 8
  %44 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %45 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %45, ptr %1)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, i32 0, i32 0
  store ptr %46, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, i32 0, i32 1
  store ptr %40, ptr %49, align 8
  %50 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, align 8
  %51 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %52 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %50, ptr %52, align 8
  %53 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, i32 0, i32 1
  store i1 true, ptr %53, align 1
  %54 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %55 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %56 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %55, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %56, align 8
  %57 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %55, i32 0, i32 1
  store i1 false, ptr %57, align 1
  %58 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %55, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %59 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %54, %_llgo_3 ], [ %58, %_llgo_4 ]
  %60 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %59, 0
  %61 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %59, 1
  br i1 %61, label %_llgo_1, label %_llgo_2
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
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %60)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %60, 0
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
  %41 = load ptr, ptr @_llgo_string, align 8
  %42 = load ptr, ptr @_llgo_int, align 8
  %43 = load ptr, ptr @_llgo_error, align 8
  %44 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %45 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %45, ptr %2)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, i32 0, i32 0
  store ptr %46, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, i32 0, i32 1
  store ptr %40, ptr %49, align 8
  %50 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %47, align 8
  %51 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %52 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %50, ptr %52, align 8
  %53 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, i32 0, i32 1
  store i1 true, ptr %53, align 1
  %54 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %51, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %55 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %56 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %55, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %56, align 8
  %57 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %55, i32 0, i32 1
  store i1 false, ptr %57, align 1
  %58 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %55, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %59 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %54, %_llgo_3 ], [ %58, %_llgo_4 ]
  %60 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %59, 0
  %61 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %59, 1
  br i1 %61, label %_llgo_1, label %_llgo_2
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
  %9 = load ptr, ptr @_llgo_byte, align 8
  %10 = load ptr, ptr @"[]_llgo_byte", align 8
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = load ptr, ptr @_llgo_error, align 8
  %13 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %14 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %14, ptr %8)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, i32 0, i32 1
  store ptr %2, ptr %18, align 8
  %19 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, align 8
  %20 = call { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } @main.ReadAll(%"github.com/goplus/llgo/internal/runtime.iface" %19)
  %21 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %20, 0
  %22 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %20, 1
  %23 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.errorString, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %6 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %6, ptr %3)
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %8, i32 0, i32 1
  store ptr %1, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %8, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %11
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
  %9 = load ptr, ptr @_llgo_main.Writer, align 8
  %10 = load ptr, ptr @_llgo_int64, align 8
  %11 = load ptr, ptr @_llgo_error, align 8
  %12 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %13 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %13, ptr %5)
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i32 0, i32 0
  store ptr %14, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, i32 0, i32 1
  store ptr %8, ptr %17, align 8
  %18 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %15, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %18)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %18, 0
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
  %29 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %28(ptr %27, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %30 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %29, 0
  %31 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %29, 1
  %32 = alloca { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, align 8
  %33 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %32, i32 0, i32 0
  store i64 %30, ptr %33, align 4
  %34 = getelementptr inbounds { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %32, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.iface" %31, ptr %34, align 8
  %35 = load { i64, %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %32, align 8
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %35

_llgo_2:                                          ; preds = %_llgo_0
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr @35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 21, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %39, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, i32 0, i32 0
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, i32 0, i32 1
  store ptr %41, ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %45)
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
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 1
  store i64 0, ptr %23, align 4
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, i32 0, i32 2
  store i64 0, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %21, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %27 = getelementptr ptr, ptr %26, i64 0
  store ptr %17, ptr %27, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, i32 0, i32 0
  store ptr %26, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, i32 0, i32 1
  store i64 1, ptr %30, align 4
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, i32 0, i32 2
  store i64 1, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %28, align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %25, %"github.com/goplus/llgo/internal/runtime.Slice" %32, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %33)
  store ptr %33, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %34 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %35 = load ptr, ptr @_llgo_error, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @0, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 5, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %41, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %40, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %41, i32 0, i32 1
  store ptr %34, ptr %43, align 8
  %44 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %46 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %44, ptr %46, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 0
  store ptr %45, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 1
  store i64 1, ptr %49, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 2
  store i64 1, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, align 8
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @1, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 4, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @2, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 5, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %55, %"github.com/goplus/llgo/internal/runtime.String" %59, %"github.com/goplus/llgo/internal/runtime.Slice" %51)
  store ptr %60, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %61 = load ptr, ptr @_llgo_error, align 8
  %62 = load ptr, ptr @_llgo_byte, align 8
  %63 = load ptr, ptr @"[]_llgo_byte", align 8
  %64 = load ptr, ptr @_llgo_int, align 8
  %65 = load ptr, ptr @_llgo_error, align 8
  %66 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %69 = getelementptr ptr, ptr %68, i64 0
  store ptr %63, ptr %69, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, i32 0, i32 0
  store ptr %68, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, i32 0, i32 1
  store i64 1, ptr %72, align 4
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, i32 0, i32 2
  store i64 1, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %70, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %76 = getelementptr ptr, ptr %75, i64 0
  store ptr %64, ptr %76, align 8
  %77 = getelementptr ptr, ptr %75, i64 1
  store ptr %65, ptr %77, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 0
  store ptr %75, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 1
  store i64 2, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 2
  store i64 2, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, align 8
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %74, %"github.com/goplus/llgo/internal/runtime.Slice" %82, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %83)
  store ptr %83, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %84 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %85 = load ptr, ptr @_llgo_main.Writer, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 0
  store ptr @3, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %87, i32 0, i32 1
  store i64 5, ptr %89, align 4
  %90 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %87, align 8
  %91 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %91, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %90, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %91, i32 0, i32 1
  store ptr %84, ptr %93, align 8
  %94 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %91, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %96 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %94, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 0
  store ptr %95, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 1
  store i64 1, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 2
  store i64 1, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, align 8
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 0
  store ptr @1, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 1
  store i64 4, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %102, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr @4, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 11, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %105, %"github.com/goplus/llgo/internal/runtime.String" %109, %"github.com/goplus/llgo/internal/runtime.Slice" %101)
  store ptr %110, ptr @_llgo_main.Writer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %111 = load ptr, ptr @_llgo_main.Writer, align 8
  %112 = load ptr, ptr @_llgo_int64, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %114, ptr @_llgo_int64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %115 = load ptr, ptr @_llgo_int64, align 8
  %116 = load ptr, ptr @_llgo_error, align 8
  %117 = load ptr, ptr @_llgo_main.Writer, align 8
  %118 = load ptr, ptr @_llgo_int64, align 8
  %119 = load ptr, ptr @_llgo_error, align 8
  %120 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %123 = getelementptr ptr, ptr %122, i64 0
  store ptr %117, ptr %123, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 0
  store ptr %122, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 1
  store i64 1, ptr %126, align 4
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, i32 0, i32 2
  store i64 1, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %124, align 8
  %129 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %130 = getelementptr ptr, ptr %129, i64 0
  store ptr %118, ptr %130, align 8
  %131 = getelementptr ptr, ptr %129, i64 1
  store ptr %119, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 0
  store ptr %129, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 1
  store i64 2, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 2
  store i64 2, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %128, %"github.com/goplus/llgo/internal/runtime.Slice" %136, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %137)
  store ptr %137, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %138 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %139 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr @5, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 7, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %145, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %144, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %145, i32 0, i32 1
  store ptr %138, ptr %147, align 8
  %148 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %145, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %150 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %149, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %148, ptr %150, align 8
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 0
  store ptr %149, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 1
  store i64 1, ptr %153, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 2
  store i64 1, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @1, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 4, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @6, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 13, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %159, %"github.com/goplus/llgo/internal/runtime.String" %163, %"github.com/goplus/llgo/internal/runtime.Slice" %155)
  store ptr %164, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %165 = load ptr, ptr @_llgo_main.Writer, align 8
  %166 = load ptr, ptr @_llgo_int64, align 8
  %167 = load ptr, ptr @_llgo_error, align 8
  %168 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %169 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 0
  store ptr @5, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 1
  store i64 7, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %171, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %174, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, i32 0, i32 1
  store ptr %168, ptr %177, align 8
  %178 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %175, align 8
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %180 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %179, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %178, ptr %180, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 0
  store ptr %179, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 1
  store i64 1, ptr %183, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 2
  store i64 1, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, align 8
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr @1, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 4, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr null, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 0, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %189, %"github.com/goplus/llgo/internal/runtime.String" %193, %"github.com/goplus/llgo/internal/runtime.Slice" %185)
  store ptr %194, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @7, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 22, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %198, i64 25, i64 16, i64 3, i64 3)
  store ptr %199, ptr @_llgo_main.nopCloserWriterTo, align 8
  %200 = load ptr, ptr @_llgo_byte, align 8
  %201 = load ptr, ptr @"[]_llgo_byte", align 8
  %202 = load ptr, ptr @_llgo_int, align 8
  %203 = load ptr, ptr @_llgo_error, align 8
  %204 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %205 = load ptr, ptr @_llgo_main.Reader, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 0
  store ptr @8, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 1
  store i64 4, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %207, align 8
  %211 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %211, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %210, ptr %212, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %211, i32 0, i32 1
  store ptr %204, ptr %213, align 8
  %214 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %211, align 8
  %215 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %216 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %215, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %214, ptr %216, align 8
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, i32 0, i32 0
  store ptr %215, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, i32 0, i32 1
  store i64 1, ptr %219, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, i32 0, i32 2
  store i64 1, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, align 8
  %222 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 0
  store ptr @1, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 1
  store i64 4, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %222, align 8
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @9, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 11, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %225, %"github.com/goplus/llgo/internal/runtime.String" %229, %"github.com/goplus/llgo/internal/runtime.Slice" %221)
  store ptr %230, ptr @_llgo_main.Reader, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %231 = load ptr, ptr @_llgo_main.Reader, align 8
  %232 = load ptr, ptr @_llgo_byte, align 8
  %233 = load ptr, ptr @"[]_llgo_byte", align 8
  %234 = load ptr, ptr @_llgo_int, align 8
  %235 = load ptr, ptr @_llgo_error, align 8
  %236 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %237 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 0
  store ptr @10, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 1
  store i64 6, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %239, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 0
  store ptr null, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 1
  store i64 0, ptr %245, align 4
  %246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %243, align 8
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 0
  store ptr @8, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 1
  store i64 4, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %250, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, i32 0, i32 1
  store ptr %236, ptr %253, align 8
  %254 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, align 8
  %255 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %256 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %255, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %254, ptr %256, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 0
  store ptr %255, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 1
  store i64 1, ptr %259, align 4
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, i32 0, i32 2
  store i64 1, ptr %260, align 4
  %261 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %257, align 8
  %262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 0
  store ptr @1, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 1
  store i64 4, ptr %264, align 4
  %265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %262, align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 0
  store ptr @9, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 1
  store i64 11, ptr %268, align 4
  %269 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %266, align 8
  %270 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %265, %"github.com/goplus/llgo/internal/runtime.String" %269, %"github.com/goplus/llgo/internal/runtime.Slice" %261)
  %271 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %242, ptr %270, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %246, i1 true)
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 0
  store ptr @1, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 1
  store i64 4, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %272, align 8
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %277 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %276, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %271, ptr %277, align 8
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 0
  store ptr %276, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 1
  store i64 1, ptr %280, align 4
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 2
  store i64 1, ptr %281, align 4
  %282 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, align 8
  %283 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %275, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %282)
  store ptr %283, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %284 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %285 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 0
  store ptr @11, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 1
  store i64 5, ptr %287, align 4
  %288 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %285, align 8
  %289 = load ptr, ptr @_llgo_error, align 8
  %290 = load ptr, ptr @_llgo_error, align 8
  %291 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %294 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, i32 0, i32 0
  store ptr %293, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, i32 0, i32 1
  store i64 0, ptr %296, align 4
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, i32 0, i32 2
  store i64 0, ptr %297, align 4
  %298 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, align 8
  %299 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %300 = getelementptr ptr, ptr %299, i64 0
  store ptr %290, ptr %300, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, i32 0, i32 0
  store ptr %299, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, i32 0, i32 1
  store i64 1, ptr %303, align 4
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, i32 0, i32 2
  store i64 1, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %301, align 8
  %306 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %298, %"github.com/goplus/llgo/internal/runtime.Slice" %305, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %306)
  store ptr %306, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %307 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %308 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %308, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %288, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %308, i32 0, i32 1
  store ptr %307, ptr %310, align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %308, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %308, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %312, align 8
  %313 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %308, align 8
  %314 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %314, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %288, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %314, i32 0, i32 1
  store ptr %307, ptr %316, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %314, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %317, align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %314, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %318, align 8
  %319 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %314, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 0
  store ptr @8, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 1
  store i64 4, ptr %322, align 4
  %323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %320, align 8
  %324 = load ptr, ptr @_llgo_byte, align 8
  %325 = load ptr, ptr @"[]_llgo_byte", align 8
  %326 = load ptr, ptr @_llgo_int, align 8
  %327 = load ptr, ptr @_llgo_error, align 8
  %328 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %329 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %323, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 1
  store ptr %328, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %333, align 8
  %334 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %329, align 8
  %335 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %323, ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 1
  store ptr %328, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %339, align 8
  %340 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %335, align 8
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 0
  store ptr @5, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 1
  store i64 7, ptr %343, align 4
  %344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %341, align 8
  %345 = load ptr, ptr @_llgo_main.Writer, align 8
  %346 = load ptr, ptr @_llgo_int64, align 8
  %347 = load ptr, ptr @_llgo_error, align 8
  %348 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %349 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %349, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %344, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %349, i32 0, i32 1
  store ptr %348, ptr %351, align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %349, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %352, align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %349, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %353, align 8
  %354 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %349, align 8
  %355 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %344, ptr %356, align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 1
  store ptr %348, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %355, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %359, align 8
  %360 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %355, align 8
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %362 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %319, ptr %362, align 8
  %363 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %340, ptr %363, align 8
  %364 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %361, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %360, ptr %364, align 8
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 0
  store ptr %361, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 1
  store i64 3, ptr %367, align 4
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 2
  store i64 3, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, align 8
  %370 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %371 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %313, ptr %371, align 8
  %372 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %334, ptr %372, align 8
  %373 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %370, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %354, ptr %373, align 8
  %374 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %374, i32 0, i32 0
  store ptr %370, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %374, i32 0, i32 1
  store i64 3, ptr %376, align 4
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %374, i32 0, i32 2
  store i64 3, ptr %377, align 4
  %378 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %374, align 8
  %379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %379, i32 0, i32 0
  store ptr @1, ptr %380, align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %379, i32 0, i32 1
  store i64 4, ptr %381, align 4
  %382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %379, align 8
  %383 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %383, i32 0, i32 0
  store ptr @12, ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %383, i32 0, i32 1
  store i64 17, ptr %385, align 4
  %386 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %383, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %199, %"github.com/goplus/llgo/internal/runtime.String" %382, %"github.com/goplus/llgo/internal/runtime.String" %386, ptr %284, %"github.com/goplus/llgo/internal/runtime.Slice" %369, %"github.com/goplus/llgo/internal/runtime.Slice" %378)
  %387 = load ptr, ptr @_llgo_error, align 8
  %388 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %389 = load ptr, ptr @_llgo_byte, align 8
  %390 = load ptr, ptr @"[]_llgo_byte", align 8
  %391 = load ptr, ptr @_llgo_int, align 8
  %392 = load ptr, ptr @_llgo_error, align 8
  %393 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %394 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %395 = icmp eq ptr %394, null
  br i1 %395, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %396 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %396, i32 0, i32 0
  store ptr @11, ptr %397, align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %396, i32 0, i32 1
  store i64 5, ptr %398, align 4
  %399 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %396, align 8
  %400 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %400, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %399, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %400, i32 0, i32 1
  store ptr %388, ptr %402, align 8
  %403 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %400, align 8
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 0
  store ptr @8, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 1
  store i64 4, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %404, align 8
  %408 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %408, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %407, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %408, i32 0, i32 1
  store ptr %393, ptr %410, align 8
  %411 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %408, align 8
  %412 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %413 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %412, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %403, ptr %413, align 8
  %414 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %412, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %411, ptr %414, align 8
  %415 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 0
  store ptr %412, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 1
  store i64 2, ptr %417, align 4
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 2
  store i64 2, ptr %418, align 4
  %419 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, align 8
  %420 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %420, i32 0, i32 0
  store ptr @1, ptr %421, align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %420, i32 0, i32 1
  store i64 4, ptr %422, align 4
  %423 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %420, align 8
  %424 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %424, i32 0, i32 0
  store ptr null, ptr %425, align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %424, i32 0, i32 1
  store i64 0, ptr %426, align 4
  %427 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %424, align 8
  %428 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %423, %"github.com/goplus/llgo/internal/runtime.String" %427, %"github.com/goplus/llgo/internal/runtime.Slice" %419)
  store ptr %428, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %429 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 0
  store ptr @13, ptr %430, align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 1
  store i64 14, ptr %431, align 4
  %432 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %429, align 8
  %433 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %432, i64 25, i64 16, i64 2, i64 2)
  store ptr %433, ptr @_llgo_main.nopCloser, align 8
  %434 = load ptr, ptr @_llgo_main.Reader, align 8
  %435 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %436 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %436, i32 0, i32 0
  store ptr @11, ptr %437, align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %436, i32 0, i32 1
  store i64 5, ptr %438, align 4
  %439 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %436, align 8
  %440 = load ptr, ptr @_llgo_error, align 8
  %441 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %442 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %442, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %439, ptr %443, align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %442, i32 0, i32 1
  store ptr %441, ptr %444, align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %442, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %445, align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %442, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %446, align 8
  %447 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %442, align 8
  %448 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %448, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %439, ptr %449, align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %448, i32 0, i32 1
  store ptr %441, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %448, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %451, align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %448, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %452, align 8
  %453 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %448, align 8
  %454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 0
  store ptr @8, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 1
  store i64 4, ptr %456, align 4
  %457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %454, align 8
  %458 = load ptr, ptr @_llgo_byte, align 8
  %459 = load ptr, ptr @"[]_llgo_byte", align 8
  %460 = load ptr, ptr @_llgo_int, align 8
  %461 = load ptr, ptr @_llgo_error, align 8
  %462 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %463 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %463, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %457, ptr %464, align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %463, i32 0, i32 1
  store ptr %462, ptr %465, align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %463, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %466, align 8
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %463, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %467, align 8
  %468 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %463, align 8
  %469 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %469, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %457, ptr %470, align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %469, i32 0, i32 1
  store ptr %462, ptr %471, align 8
  %472 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %469, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %472, align 8
  %473 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %469, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %473, align 8
  %474 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %469, align 8
  %475 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %476 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %475, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %453, ptr %476, align 8
  %477 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %475, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %474, ptr %477, align 8
  %478 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %478, i32 0, i32 0
  store ptr %475, ptr %479, align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %478, i32 0, i32 1
  store i64 2, ptr %480, align 4
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %478, i32 0, i32 2
  store i64 2, ptr %481, align 4
  %482 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %478, align 8
  %483 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %484 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %483, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %447, ptr %484, align 8
  %485 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %483, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %468, ptr %485, align 8
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, i32 0, i32 0
  store ptr %483, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, i32 0, i32 1
  store i64 2, ptr %488, align 4
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, i32 0, i32 2
  store i64 2, ptr %489, align 4
  %490 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %486, align 8
  %491 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 0
  store ptr @1, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %491, i32 0, i32 1
  store i64 4, ptr %493, align 4
  %494 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %491, align 8
  %495 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 0
  store ptr @14, ptr %496, align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 1
  store i64 9, ptr %497, align 4
  %498 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %495, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %433, %"github.com/goplus/llgo/internal/runtime.String" %494, %"github.com/goplus/llgo/internal/runtime.String" %498, ptr %435, %"github.com/goplus/llgo/internal/runtime.Slice" %482, %"github.com/goplus/llgo/internal/runtime.Slice" %490)
  %499 = load ptr, ptr @_llgo_string, align 8
  %500 = load ptr, ptr @_llgo_int, align 8
  %501 = load ptr, ptr @_llgo_error, align 8
  %502 = load ptr, ptr @_llgo_string, align 8
  %503 = load ptr, ptr @_llgo_int, align 8
  %504 = load ptr, ptr @_llgo_error, align 8
  %505 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %506 = icmp eq ptr %505, null
  br i1 %506, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %507 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %508 = getelementptr ptr, ptr %507, i64 0
  store ptr %502, ptr %508, align 8
  %509 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %509, i32 0, i32 0
  store ptr %507, ptr %510, align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %509, i32 0, i32 1
  store i64 1, ptr %511, align 4
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %509, i32 0, i32 2
  store i64 1, ptr %512, align 4
  %513 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %509, align 8
  %514 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %515 = getelementptr ptr, ptr %514, i64 0
  store ptr %503, ptr %515, align 8
  %516 = getelementptr ptr, ptr %514, i64 1
  store ptr %504, ptr %516, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %517, i32 0, i32 0
  store ptr %514, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %517, i32 0, i32 1
  store i64 2, ptr %519, align 4
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %517, i32 0, i32 2
  store i64 2, ptr %520, align 4
  %521 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %517, align 8
  %522 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %513, %"github.com/goplus/llgo/internal/runtime.Slice" %521, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %522)
  store ptr %522, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %523 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %524 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %525 = icmp eq ptr %524, null
  br i1 %525, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %526 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %526, i32 0, i32 0
  store ptr @15, ptr %527, align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %526, i32 0, i32 1
  store i64 11, ptr %528, align 4
  %529 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %526, align 8
  %530 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %530, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %529, ptr %531, align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %530, i32 0, i32 1
  store ptr %523, ptr %532, align 8
  %533 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %530, align 8
  %534 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %535 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %534, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %533, ptr %535, align 8
  %536 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %536, i32 0, i32 0
  store ptr %534, ptr %537, align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %536, i32 0, i32 1
  store i64 1, ptr %538, align 4
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %536, i32 0, i32 2
  store i64 1, ptr %539, align 4
  %540 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %536, align 8
  %541 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 0
  store ptr @1, ptr %542, align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %541, i32 0, i32 1
  store i64 4, ptr %543, align 4
  %544 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %541, align 8
  %545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 0
  store ptr @16, ptr %546, align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 1
  store i64 17, ptr %547, align 4
  %548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %545, align 8
  %549 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %544, %"github.com/goplus/llgo/internal/runtime.String" %548, %"github.com/goplus/llgo/internal/runtime.Slice" %540)
  store ptr %549, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %550 = load ptr, ptr @_llgo_string, align 8
  %551 = load ptr, ptr @_llgo_int, align 8
  %552 = load ptr, ptr @_llgo_error, align 8
  %553 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %554 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %555 = icmp eq ptr %554, null
  br i1 %555, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %556 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %556, i32 0, i32 0
  store ptr @15, ptr %557, align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %556, i32 0, i32 1
  store i64 11, ptr %558, align 4
  %559 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %556, align 8
  %560 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %560, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %559, ptr %561, align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %560, i32 0, i32 1
  store ptr %553, ptr %562, align 8
  %563 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %560, align 8
  %564 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %565 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %564, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %563, ptr %565, align 8
  %566 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %566, i32 0, i32 0
  store ptr %564, ptr %567, align 8
  %568 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %566, i32 0, i32 1
  store i64 1, ptr %568, align 4
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %566, i32 0, i32 2
  store i64 1, ptr %569, align 4
  %570 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %566, align 8
  %571 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %571, i32 0, i32 0
  store ptr @1, ptr %572, align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %571, i32 0, i32 1
  store i64 4, ptr %573, align 4
  %574 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %571, align 8
  %575 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %575, i32 0, i32 0
  store ptr null, ptr %576, align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %575, i32 0, i32 1
  store i64 0, ptr %577, align 4
  %578 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %575, align 8
  %579 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %574, %"github.com/goplus/llgo/internal/runtime.String" %578, %"github.com/goplus/llgo/internal/runtime.Slice" %570)
  store ptr %579, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %580 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 0
  store ptr @20, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %580, i32 0, i32 1
  store i64 17, ptr %582, align 4
  %583 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %580, align 8
  %584 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %583, i64 25, i64 32, i64 0, i64 10)
  store ptr %584, ptr @_llgo_main.stringReader, align 8
  %585 = load ptr, ptr @_llgo_string, align 8
  %586 = load ptr, ptr @_llgo_int64, align 8
  %587 = load ptr, ptr @_llgo_int, align 8
  %588 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %588, i32 0, i32 0
  store ptr @21, ptr %589, align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %588, i32 0, i32 1
  store i64 1, ptr %590, align 4
  %591 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %588, align 8
  %592 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %593 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %592, i32 0, i32 0
  store ptr null, ptr %593, align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %592, i32 0, i32 1
  store i64 0, ptr %594, align 4
  %595 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %592, align 8
  %596 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %597 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %591, ptr %596, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %595, i1 false)
  %598 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %599 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %598, i32 0, i32 0
  store ptr @22, ptr %599, align 8
  %600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %598, i32 0, i32 1
  store i64 1, ptr %600, align 4
  %601 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %598, align 8
  %602 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 0
  store ptr null, ptr %603, align 8
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %602, i32 0, i32 1
  store i64 0, ptr %604, align 4
  %605 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %602, align 8
  %606 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %607 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %601, ptr %606, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %605, i1 false)
  %608 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %608, i32 0, i32 0
  store ptr @23, ptr %609, align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %608, i32 0, i32 1
  store i64 8, ptr %610, align 4
  %611 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %608, align 8
  %612 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %612, i32 0, i32 0
  store ptr null, ptr %613, align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %612, i32 0, i32 1
  store i64 0, ptr %614, align 4
  %615 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %612, align 8
  %616 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %617 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %611, ptr %616, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %615, i1 false)
  %618 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 0
  store ptr @1, ptr %619, align 8
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %618, i32 0, i32 1
  store i64 4, ptr %620, align 4
  %621 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %618, align 8
  %622 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %623 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %622, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %597, ptr %623, align 8
  %624 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %622, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %607, ptr %624, align 8
  %625 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %622, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %617, ptr %625, align 8
  %626 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %627 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %626, i32 0, i32 0
  store ptr %622, ptr %627, align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %626, i32 0, i32 1
  store i64 3, ptr %628, align 4
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %626, i32 0, i32 2
  store i64 3, ptr %629, align 4
  %630 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %626, align 8
  %631 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %621, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %630)
  store ptr %631, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %632 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %633 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 0
  store ptr @24, ptr %634, align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 1
  store i64 3, ptr %635, align 4
  %636 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %633, align 8
  %637 = load ptr, ptr @_llgo_int, align 8
  %638 = load ptr, ptr @_llgo_int, align 8
  %639 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %640 = icmp eq ptr %639, null
  br i1 %640, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %641 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %642 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, i32 0, i32 0
  store ptr %641, ptr %643, align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, i32 0, i32 1
  store i64 0, ptr %644, align 4
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, i32 0, i32 2
  store i64 0, ptr %645, align 4
  %646 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, align 8
  %647 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %648 = getelementptr ptr, ptr %647, i64 0
  store ptr %638, ptr %648, align 8
  %649 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %649, i32 0, i32 0
  store ptr %647, ptr %650, align 8
  %651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %649, i32 0, i32 1
  store i64 1, ptr %651, align 4
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %649, i32 0, i32 2
  store i64 1, ptr %652, align 4
  %653 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %649, align 8
  %654 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %646, %"github.com/goplus/llgo/internal/runtime.Slice" %653, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %654)
  store ptr %654, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %655 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %656 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %656, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %636, ptr %657, align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %656, i32 0, i32 1
  store ptr %655, ptr %658, align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %656, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %656, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %660, align 8
  %661 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %656, align 8
  %662 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %663 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %662, i32 0, i32 0
  store ptr @8, ptr %663, align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %662, i32 0, i32 1
  store i64 4, ptr %664, align 4
  %665 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %662, align 8
  %666 = load ptr, ptr @_llgo_byte, align 8
  %667 = load ptr, ptr @"[]_llgo_byte", align 8
  %668 = load ptr, ptr @_llgo_int, align 8
  %669 = load ptr, ptr @_llgo_error, align 8
  %670 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %671 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %672 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %671, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %665, ptr %672, align 8
  %673 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %671, i32 0, i32 1
  store ptr %670, ptr %673, align 8
  %674 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %671, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %674, align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %671, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %675, align 8
  %676 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %671, align 8
  %677 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %677, i32 0, i32 0
  store ptr @25, ptr %678, align 8
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %677, i32 0, i32 1
  store i64 6, ptr %679, align 4
  %680 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %677, align 8
  %681 = load ptr, ptr @_llgo_byte, align 8
  %682 = load ptr, ptr @"[]_llgo_byte", align 8
  %683 = load ptr, ptr @_llgo_int64, align 8
  %684 = load ptr, ptr @_llgo_int, align 8
  %685 = load ptr, ptr @_llgo_error, align 8
  %686 = load ptr, ptr @_llgo_byte, align 8
  %687 = load ptr, ptr @"[]_llgo_byte", align 8
  %688 = load ptr, ptr @_llgo_int64, align 8
  %689 = load ptr, ptr @_llgo_int, align 8
  %690 = load ptr, ptr @_llgo_error, align 8
  %691 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
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
  store ptr %709, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %710 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %711 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %680, ptr %712, align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 1
  store ptr %710, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %714, align 8
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %711, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %715, align 8
  %716 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %711, align 8
  %717 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %717, i32 0, i32 0
  store ptr @26, ptr %718, align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %717, i32 0, i32 1
  store i64 8, ptr %719, align 4
  %720 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %717, align 8
  %721 = load ptr, ptr @_llgo_byte, align 8
  %722 = load ptr, ptr @_llgo_error, align 8
  %723 = load ptr, ptr @_llgo_byte, align 8
  %724 = load ptr, ptr @_llgo_error, align 8
  %725 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %726 = icmp eq ptr %725, null
  br i1 %726, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %727 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %728 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %729 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %728, i32 0, i32 0
  store ptr %727, ptr %729, align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %728, i32 0, i32 1
  store i64 0, ptr %730, align 4
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %728, i32 0, i32 2
  store i64 0, ptr %731, align 4
  %732 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %728, align 8
  %733 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %734 = getelementptr ptr, ptr %733, i64 0
  store ptr %723, ptr %734, align 8
  %735 = getelementptr ptr, ptr %733, i64 1
  store ptr %724, ptr %735, align 8
  %736 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %736, i32 0, i32 0
  store ptr %733, ptr %737, align 8
  %738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %736, i32 0, i32 1
  store i64 2, ptr %738, align 4
  %739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %736, i32 0, i32 2
  store i64 2, ptr %739, align 4
  %740 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %736, align 8
  %741 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %732, %"github.com/goplus/llgo/internal/runtime.Slice" %740, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %741)
  store ptr %741, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %742 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %743 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %744 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %743, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %720, ptr %744, align 8
  %745 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %743, i32 0, i32 1
  store ptr %742, ptr %745, align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %743, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %746, align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %743, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %747, align 8
  %748 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %743, align 8
  %749 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %749, i32 0, i32 0
  store ptr @27, ptr %750, align 8
  %751 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %749, i32 0, i32 1
  store i64 8, ptr %751, align 4
  %752 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %749, align 8
  %753 = load ptr, ptr @_llgo_rune, align 8
  %754 = icmp eq ptr %753, null
  br i1 %754, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %755 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %755, ptr @_llgo_rune, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %756 = load ptr, ptr @_llgo_rune, align 8
  %757 = load ptr, ptr @_llgo_int, align 8
  %758 = load ptr, ptr @_llgo_error, align 8
  %759 = load ptr, ptr @_llgo_rune, align 8
  %760 = load ptr, ptr @_llgo_int, align 8
  %761 = load ptr, ptr @_llgo_error, align 8
  %762 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %763 = icmp eq ptr %762, null
  br i1 %763, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %764 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %765 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %765, i32 0, i32 0
  store ptr %764, ptr %766, align 8
  %767 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %765, i32 0, i32 1
  store i64 0, ptr %767, align 4
  %768 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %765, i32 0, i32 2
  store i64 0, ptr %768, align 4
  %769 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %765, align 8
  %770 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %771 = getelementptr ptr, ptr %770, i64 0
  store ptr %759, ptr %771, align 8
  %772 = getelementptr ptr, ptr %770, i64 1
  store ptr %760, ptr %772, align 8
  %773 = getelementptr ptr, ptr %770, i64 2
  store ptr %761, ptr %773, align 8
  %774 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %775 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %774, i32 0, i32 0
  store ptr %770, ptr %775, align 8
  %776 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %774, i32 0, i32 1
  store i64 3, ptr %776, align 4
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %774, i32 0, i32 2
  store i64 3, ptr %777, align 4
  %778 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %774, align 8
  %779 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %769, %"github.com/goplus/llgo/internal/runtime.Slice" %778, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %779)
  store ptr %779, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %780 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %781 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %782 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %781, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %752, ptr %782, align 8
  %783 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %781, i32 0, i32 1
  store ptr %780, ptr %783, align 8
  %784 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %781, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %784, align 8
  %785 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %781, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %785, align 8
  %786 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %781, align 8
  %787 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %787, i32 0, i32 0
  store ptr @28, ptr %788, align 8
  %789 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %787, i32 0, i32 1
  store i64 4, ptr %789, align 4
  %790 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %787, align 8
  %791 = load ptr, ptr @_llgo_int64, align 8
  %792 = load ptr, ptr @_llgo_int, align 8
  %793 = load ptr, ptr @_llgo_int64, align 8
  %794 = load ptr, ptr @_llgo_error, align 8
  %795 = load ptr, ptr @_llgo_int64, align 8
  %796 = load ptr, ptr @_llgo_int, align 8
  %797 = load ptr, ptr @_llgo_int64, align 8
  %798 = load ptr, ptr @_llgo_error, align 8
  %799 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %800 = icmp eq ptr %799, null
  br i1 %800, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %801 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %802 = getelementptr ptr, ptr %801, i64 0
  store ptr %795, ptr %802, align 8
  %803 = getelementptr ptr, ptr %801, i64 1
  store ptr %796, ptr %803, align 8
  %804 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, i32 0, i32 0
  store ptr %801, ptr %805, align 8
  %806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, i32 0, i32 1
  store i64 2, ptr %806, align 4
  %807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, i32 0, i32 2
  store i64 2, ptr %807, align 4
  %808 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, align 8
  %809 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %810 = getelementptr ptr, ptr %809, i64 0
  store ptr %797, ptr %810, align 8
  %811 = getelementptr ptr, ptr %809, i64 1
  store ptr %798, ptr %811, align 8
  %812 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, i32 0, i32 0
  store ptr %809, ptr %813, align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, i32 0, i32 1
  store i64 2, ptr %814, align 4
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, i32 0, i32 2
  store i64 2, ptr %815, align 4
  %816 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %812, align 8
  %817 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %808, %"github.com/goplus/llgo/internal/runtime.Slice" %816, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %817)
  store ptr %817, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %818 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %819 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %790, ptr %820, align 8
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 1
  store ptr %818, ptr %821, align 8
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %822, align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %819, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %823, align 8
  %824 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %819, align 8
  %825 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %825, i32 0, i32 0
  store ptr @29, ptr %826, align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %825, i32 0, i32 1
  store i64 4, ptr %827, align 4
  %828 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %825, align 8
  %829 = load ptr, ptr @_llgo_int64, align 8
  %830 = load ptr, ptr @_llgo_int64, align 8
  %831 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %832 = icmp eq ptr %831, null
  br i1 %832, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %833 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %834 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, i32 0, i32 0
  store ptr %833, ptr %835, align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, i32 0, i32 1
  store i64 0, ptr %836, align 4
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, i32 0, i32 2
  store i64 0, ptr %837, align 4
  %838 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %834, align 8
  %839 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %840 = getelementptr ptr, ptr %839, i64 0
  store ptr %830, ptr %840, align 8
  %841 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %841, i32 0, i32 0
  store ptr %839, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %841, i32 0, i32 1
  store i64 1, ptr %843, align 4
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %841, i32 0, i32 2
  store i64 1, ptr %844, align 4
  %845 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %841, align 8
  %846 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %838, %"github.com/goplus/llgo/internal/runtime.Slice" %845, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %846)
  store ptr %846, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %847 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %848 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %848, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %828, ptr %849, align 8
  %850 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %848, i32 0, i32 1
  store ptr %847, ptr %850, align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %848, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %851, align 8
  %852 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %848, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %852, align 8
  %853 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %848, align 8
  %854 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %854, i32 0, i32 0
  store ptr @30, ptr %855, align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %854, i32 0, i32 1
  store i64 10, ptr %856, align 4
  %857 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %854, align 8
  %858 = load ptr, ptr @_llgo_error, align 8
  %859 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %860 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %861 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %860, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %857, ptr %861, align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %860, i32 0, i32 1
  store ptr %859, ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %860, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %863, align 8
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %860, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %864, align 8
  %865 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %860, align 8
  %866 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %866, i32 0, i32 0
  store ptr @31, ptr %867, align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %866, i32 0, i32 1
  store i64 10, ptr %868, align 4
  %869 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %866, align 8
  %870 = load ptr, ptr @_llgo_error, align 8
  %871 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %872 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %873 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %872, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %869, ptr %873, align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %872, i32 0, i32 1
  store ptr %871, ptr %874, align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %872, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %872, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %876, align 8
  %877 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %872, align 8
  %878 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %878, i32 0, i32 0
  store ptr @5, ptr %879, align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %878, i32 0, i32 1
  store i64 7, ptr %880, align 4
  %881 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %878, align 8
  %882 = load ptr, ptr @_llgo_main.Writer, align 8
  %883 = load ptr, ptr @_llgo_int64, align 8
  %884 = load ptr, ptr @_llgo_error, align 8
  %885 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %886 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %886, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %881, ptr %887, align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %886, i32 0, i32 1
  store ptr %885, ptr %888, align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %886, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %889, align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %886, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %890, align 8
  %891 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %886, align 8
  %892 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %893 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %661, ptr %893, align 8
  %894 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %676, ptr %894, align 8
  %895 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %716, ptr %895, align 8
  %896 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %748, ptr %896, align 8
  %897 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %786, ptr %897, align 8
  %898 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %824, ptr %898, align 8
  %899 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %853, ptr %899, align 8
  %900 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %865, ptr %900, align 8
  %901 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %877, ptr %901, align 8
  %902 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %892, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %891, ptr %902, align 8
  %903 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, i32 0, i32 0
  store ptr %892, ptr %904, align 8
  %905 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, i32 0, i32 1
  store i64 10, ptr %905, align 4
  %906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, i32 0, i32 2
  store i64 10, ptr %906, align 4
  %907 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %903, align 8
  %908 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %908, i32 0, i32 0
  store ptr @1, ptr %909, align 8
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %908, i32 0, i32 1
  store i64 4, ptr %910, align 4
  %911 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %908, align 8
  %912 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %912, i32 0, i32 0
  store ptr @32, ptr %913, align 8
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %912, i32 0, i32 1
  store i64 12, ptr %914, align 4
  %915 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %912, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %584, %"github.com/goplus/llgo/internal/runtime.String" %911, %"github.com/goplus/llgo/internal/runtime.String" %915, ptr %632, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %907)
  %916 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %916, i32 0, i32 0
  store ptr @20, ptr %917, align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %916, i32 0, i32 1
  store i64 17, ptr %918, align 4
  %919 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %916, align 8
  %920 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %919, i64 25, i64 32, i64 0, i64 10)
  %921 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %920)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %921)
  store ptr %921, ptr @"*_llgo_main.stringReader", align 8
  %922 = load ptr, ptr @_llgo_byte, align 8
  %923 = load ptr, ptr @"[]_llgo_byte", align 8
  %924 = load ptr, ptr @_llgo_int, align 8
  %925 = load ptr, ptr @_llgo_error, align 8
  %926 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %927 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %928 = icmp eq ptr %927, null
  br i1 %928, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %929 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %929, i32 0, i32 0
  store ptr @8, ptr %930, align 8
  %931 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %929, i32 0, i32 1
  store i64 4, ptr %931, align 4
  %932 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %929, align 8
  %933 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %933, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %932, ptr %934, align 8
  %935 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %933, i32 0, i32 1
  store ptr %926, ptr %935, align 8
  %936 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %933, align 8
  %937 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %938 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %937, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %936, ptr %938, align 8
  %939 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %940 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %939, i32 0, i32 0
  store ptr %937, ptr %940, align 8
  %941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %939, i32 0, i32 1
  store i64 1, ptr %941, align 4
  %942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %939, i32 0, i32 2
  store i64 1, ptr %942, align 4
  %943 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %939, align 8
  %944 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %945 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %944, i32 0, i32 0
  store ptr @1, ptr %945, align 8
  %946 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %944, i32 0, i32 1
  store i64 4, ptr %946, align 4
  %947 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %944, align 8
  %948 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %949 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %948, i32 0, i32 0
  store ptr null, ptr %949, align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %948, i32 0, i32 1
  store i64 0, ptr %950, align 4
  %951 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %948, align 8
  %952 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %947, %"github.com/goplus/llgo/internal/runtime.String" %951, %"github.com/goplus/llgo/internal/runtime.Slice" %943)
  store ptr %952, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %953 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %954 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %953, i32 0, i32 0
  store ptr @33, ptr %954, align 8
  %955 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %953, i32 0, i32 1
  store i64 16, ptr %955, align 4
  %956 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %953, align 8
  %957 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %956, i64 25, i64 16, i64 0, i64 1)
  store ptr %957, ptr @_llgo_main.errorString, align 8
  %958 = load ptr, ptr @_llgo_string, align 8
  %959 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %960 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %959, i32 0, i32 0
  store ptr @21, ptr %960, align 8
  %961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %959, i32 0, i32 1
  store i64 1, ptr %961, align 4
  %962 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %959, align 8
  %963 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %964 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %963, i32 0, i32 0
  store ptr null, ptr %964, align 8
  %965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %963, i32 0, i32 1
  store i64 0, ptr %965, align 4
  %966 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %963, align 8
  %967 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %968 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %962, ptr %967, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %966, i1 false)
  %969 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %969, i32 0, i32 0
  store ptr @1, ptr %970, align 8
  %971 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %969, i32 0, i32 1
  store i64 4, ptr %971, align 4
  %972 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %969, align 8
  %973 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %974 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %973, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %968, ptr %974, align 8
  %975 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %976 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %975, i32 0, i32 0
  store ptr %973, ptr %976, align 8
  %977 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %975, i32 0, i32 1
  store i64 1, ptr %977, align 4
  %978 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %975, i32 0, i32 2
  store i64 1, ptr %978, align 4
  %979 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %975, align 8
  %980 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %972, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %979)
  store ptr %980, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %981 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %982 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %983 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 0
  store ptr @0, ptr %983, align 8
  %984 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %982, i32 0, i32 1
  store i64 5, ptr %984, align 4
  %985 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %982, align 8
  %986 = load ptr, ptr @_llgo_string, align 8
  %987 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %988 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %989 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %985, ptr %989, align 8
  %990 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 1
  store ptr %987, ptr %990, align 8
  %991 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %991, align 8
  %992 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %988, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %992, align 8
  %993 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %988, align 8
  %994 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %995 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %994, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %993, ptr %995, align 8
  %996 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %997 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %996, i32 0, i32 0
  store ptr %994, ptr %997, align 8
  %998 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %996, i32 0, i32 1
  store i64 1, ptr %998, align 4
  %999 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %996, i32 0, i32 2
  store i64 1, ptr %999, align 4
  %1000 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %996, align 8
  %1001 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1002 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1001, i32 0, i32 0
  store ptr @1, ptr %1002, align 8
  %1003 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1001, i32 0, i32 1
  store i64 4, ptr %1003, align 4
  %1004 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1001, align 8
  %1005 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1006 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1005, i32 0, i32 0
  store ptr @34, ptr %1006, align 8
  %1007 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1005, i32 0, i32 1
  store i64 11, ptr %1007, align 4
  %1008 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1005, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %957, %"github.com/goplus/llgo/internal/runtime.String" %1004, %"github.com/goplus/llgo/internal/runtime.String" %1008, ptr %981, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %1000)
  %1009 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1010 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1009, i32 0, i32 0
  store ptr @33, ptr %1010, align 8
  %1011 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1009, i32 0, i32 1
  store i64 16, ptr %1011, align 4
  %1012 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1009, align 8
  %1013 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %1012, i64 25, i64 16, i64 0, i64 1)
  %1014 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %1013)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %1014)
  store ptr %1014, ptr @"*_llgo_main.errorString", align 8
  %1015 = load ptr, ptr @_llgo_string, align 8
  %1016 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1017 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %1018 = icmp eq ptr %1017, null
  br i1 %1018, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %1019 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1020 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1019, i32 0, i32 0
  store ptr @0, ptr %1020, align 8
  %1021 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1019, i32 0, i32 1
  store i64 5, ptr %1021, align 4
  %1022 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1019, align 8
  %1023 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %1024 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %1023, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %1022, ptr %1024, align 8
  %1025 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %1023, i32 0, i32 1
  store ptr %1016, ptr %1025, align 8
  %1026 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %1023, align 8
  %1027 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %1028 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %1027, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %1026, ptr %1028, align 8
  %1029 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1030 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1029, i32 0, i32 0
  store ptr %1027, ptr %1030, align 8
  %1031 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1029, i32 0, i32 1
  store i64 1, ptr %1031, align 4
  %1032 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1029, i32 0, i32 2
  store i64 1, ptr %1032, align 4
  %1033 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1029, align 8
  %1034 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1035 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1034, i32 0, i32 0
  store ptr @1, ptr %1035, align 8
  %1036 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1034, i32 0, i32 1
  store i64 4, ptr %1036, align 4
  %1037 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1034, align 8
  %1038 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1039 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1038, i32 0, i32 0
  store ptr null, ptr %1039, align 8
  %1040 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1038, i32 0, i32 1
  store i64 0, ptr %1040, align 4
  %1041 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1038, align 8
  %1042 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %1037, %"github.com/goplus/llgo/internal/runtime.String" %1041, %"github.com/goplus/llgo/internal/runtime.Slice" %1033)
  store ptr %1042, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
