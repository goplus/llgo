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
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
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
@_llgo_byte = linkonce global ptr null, align 8
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
@_llgo_main.nopCloserWriterTo = global ptr null, align 8
@"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y" = linkonce global ptr null, align 8
@_llgo_main.Reader = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [4 x i8] c"Read", align 1
@8 = private unnamed_addr constant [11 x i8] c"main.Reader", align 1
@9 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@10 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [17 x i8] c"nopCloserWriterTo", align 1
@"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I" = linkonce global ptr null, align 8
@_llgo_main.nopCloser = global ptr null, align 8
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
@"*_llgo_main.stringReader" = global ptr null, align 8
@_llgo_main.stringReader = global ptr null, align 8
@"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk" = global ptr null, align 8
@18 = private unnamed_addr constant [1 x i8] c"s", align 1
@19 = private unnamed_addr constant [1 x i8] c"i", align 1
@20 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@21 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM" = linkonce global ptr null, align 8
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
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@"*_llgo_main.errorString" = global ptr null, align 8
@_llgo_main.errorString = global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null, align 8
@30 = private unnamed_addr constant [11 x i8] c"errorString", align 1
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
  store ptr @31, ptr %30, align 8
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
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %11, i64 %13, i64 %14)
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
  store ptr @32, ptr %5, align 8
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
  %17 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %15, i64 %2, i64 %16)
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
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %12, 1
  %15 = icmp slt i64 %10, 0
  %16 = icmp sge i64 %10, %14
  %17 = or i1 %16, %15
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %17)
  %18 = getelementptr inbounds i8, ptr %13, i64 %10
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %22, ptr %23, align 4
  %mrv1 = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i8 %19, 0
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
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 1
  %18 = icmp slt i64 %13, 0
  %19 = icmp sge i64 %13, %17
  %20 = or i1 %19, %18
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %20)
  %21 = getelementptr inbounds i8, ptr %16, i64 %13
  %22 = load i8, ptr %21, align 1
  %23 = icmp ult i8 %22, -128
  br i1 %23, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %24 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %26, ptr %27, align 4
  %28 = sext i8 %22 to i32
  %mrv1 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i32 %28, 0
  %mrv2 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv1, i64 1, 1
  %mrv3 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv2, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv3

_llgo_4:                                          ; preds = %_llgo_2
  %29 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %31 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 4
  %33 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %30, 1
  %34 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %30, i64 %32, i64 %33)
  %35 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %34)
  %36 = extractvalue { i32, i64 } %35, 0
  %37 = extractvalue { i32, i64 } %35, 1
  %38 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %39 = load i64, ptr %38, align 4
  %40 = add i64 %39, %37
  %41 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %40, ptr %41, align 4
  %mrv4 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } poison, i32 %36, 0
  %mrv5 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv4, i64 %37, 1
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
  store ptr @33, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 34, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %19)
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %20, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_8:                                          ; preds = %_llgo_1
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @34, ptr %22, align 8
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
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %10, 1
  %14 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %10, i64 %12, i64 %13)
  %15 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.WriteString(%"github.com/goplus/llgo/internal/runtime.iface" %1, %"github.com/goplus/llgo/internal/runtime.String" %14)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, 1
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %14, 1
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @38, ptr %21, align 8
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
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %3, align 1
  store ptr %2, ptr @_llgo_byte, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %6 = load ptr, ptr @_llgo_byte, align 8
  %7 = load ptr, ptr @"[]_llgo_byte", align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %6)
  store ptr %9, ptr @"[]_llgo_byte", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @"[]_llgo_byte", align 8
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %13, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %15, 32
  store i8 %16, ptr %14, align 1
  store ptr %13, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %17 = load ptr, ptr @_llgo_int, align 8
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %20, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %21 = load ptr, ptr @_llgo_string, align 8
  %22 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 2
  store i64 0, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %31 = getelementptr ptr, ptr %30, i64 0
  store ptr %21, ptr %31, align 8
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 0
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 1
  store i64 1, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 2
  store i64 1, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %29, %"github.com/goplus/llgo/internal/runtime.Slice" %36, i1 false)
  store ptr %37, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %38 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %39 = load ptr, ptr @_llgo_error, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @0, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 5, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %44, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, i32 0, i32 1
  store ptr %38, ptr %47, align 8
  %48 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, align 8
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %50 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %49, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %48, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 0
  store ptr %49, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 1
  store i64 1, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 2
  store i64 1, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @1, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr @2, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 5, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %59, %"github.com/goplus/llgo/internal/runtime.String" %63, %"github.com/goplus/llgo/internal/runtime.Slice" %55)
  store ptr %64, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %65 = load ptr, ptr @_llgo_error, align 8
  %66 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %69 = getelementptr ptr, ptr %68, i64 0
  store ptr %10, ptr %69, align 8
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
  store ptr %17, ptr %76, align 8
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
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %114, i32 0, i32 6
  %116 = load i8, ptr %115, align 1
  %117 = or i8 %116, 32
  store i8 %117, ptr %115, align 1
  store ptr %114, ptr @_llgo_int64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %118 = load ptr, ptr @_llgo_int64, align 8
  %119 = load ptr, ptr @_llgo_error, align 8
  %120 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %123 = getelementptr ptr, ptr %122, i64 0
  store ptr %111, ptr %123, align 8
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
  %165 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %166 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @5, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 7, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %172, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %171, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %172, i32 0, i32 1
  store ptr %165, ptr %174, align 8
  %175 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %172, align 8
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %177 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %176, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %175, ptr %177, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 0
  store ptr %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 1
  store i64 1, ptr %180, align 4
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, i32 0, i32 2
  store i64 1, ptr %181, align 4
  %182 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %178, align 8
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 0
  store ptr @1, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 4, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr null, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 0, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %186, %"github.com/goplus/llgo/internal/runtime.String" %190, %"github.com/goplus/llgo/internal/runtime.Slice" %182)
  store ptr %191, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 3, i64 3)
  store ptr %192, ptr @_llgo_main.nopCloserWriterTo, align 8
  %193 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %194 = load ptr, ptr @_llgo_main.Reader, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @7, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 4, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %200, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %199, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %200, i32 0, i32 1
  store ptr %193, ptr %202, align 8
  %203 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %200, align 8
  %204 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %205 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %204, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %203, ptr %205, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 0
  store ptr %204, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 1
  store i64 1, ptr %208, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 2
  store i64 1, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, align 8
  %211 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 0
  store ptr @1, ptr %212, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 1
  store i64 4, ptr %213, align 4
  %214 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %211, align 8
  %215 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 0
  store ptr @8, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 1
  store i64 11, ptr %217, align 4
  %218 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %215, align 8
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %214, %"github.com/goplus/llgo/internal/runtime.String" %218, %"github.com/goplus/llgo/internal/runtime.Slice" %210)
  store ptr %219, ptr @_llgo_main.Reader, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %220 = load ptr, ptr @_llgo_main.Reader, align 8
  %221 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr @9, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 6, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 0
  store ptr null, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 1
  store i64 0, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %227, align 8
  %231 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %226, ptr %220, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %230, i1 true)
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 0
  store ptr @1, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 1
  store i64 4, ptr %234, align 4
  %235 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %232, align 8
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %237 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %236, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %231, ptr %237, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 0
  store ptr %236, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 1
  store i64 1, ptr %240, align 4
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, i32 0, i32 2
  store i64 1, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %238, align 8
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %235, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %242)
  store ptr %243, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %244 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 0
  store ptr @10, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %245, i32 0, i32 1
  store i64 5, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %245, align 8
  %249 = load ptr, ptr @_llgo_error, align 8
  %250 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %252 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %253, i32 0, i32 0
  store ptr %252, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %253, i32 0, i32 1
  store i64 0, ptr %255, align 4
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %253, i32 0, i32 2
  store i64 0, ptr %256, align 4
  %257 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %253, align 8
  %258 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %259 = getelementptr ptr, ptr %258, i64 0
  store ptr %249, ptr %259, align 8
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 0
  store ptr %258, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 1
  store i64 1, ptr %262, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 2
  store i64 1, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %257, %"github.com/goplus/llgo/internal/runtime.Slice" %264, i1 false)
  store ptr %265, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %266 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %267 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %248, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 1
  store ptr %266, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %271, align 8
  %272 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %267, align 8
  %273 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %248, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 1
  store ptr %266, ptr %275, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %277, align 8
  %278 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %273, align 8
  %279 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %279, i32 0, i32 0
  store ptr @7, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %279, i32 0, i32 1
  store i64 4, ptr %281, align 4
  %282 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %279, align 8
  %283 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %284 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %282, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 1
  store ptr %283, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %288, align 8
  %289 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %284, align 8
  %290 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %282, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 1
  store ptr %283, ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %290, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %294, align 8
  %295 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %290, align 8
  %296 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %296, i32 0, i32 0
  store ptr @5, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %296, i32 0, i32 1
  store i64 7, ptr %298, align 4
  %299 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %296, align 8
  %300 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %301 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %299, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 1
  store ptr %300, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %304, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %305, align 8
  %306 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %301, align 8
  %307 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %299, ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 1
  store ptr %300, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %310, align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %311, align 8
  %312 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %307, align 8
  %313 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %278, ptr %314, align 8
  %315 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %295, ptr %315, align 8
  %316 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %312, ptr %316, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 0
  store ptr %313, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 1
  store i64 3, ptr %319, align 4
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 2
  store i64 3, ptr %320, align 4
  %321 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, align 8
  %322 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %323 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %272, ptr %323, align 8
  %324 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %289, ptr %324, align 8
  %325 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %322, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %306, ptr %325, align 8
  %326 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, i32 0, i32 0
  store ptr %322, ptr %327, align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, i32 0, i32 1
  store i64 3, ptr %328, align 4
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, i32 0, i32 2
  store i64 3, ptr %329, align 4
  %330 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %326, align 8
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr @1, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 4, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %335, i32 0, i32 0
  store ptr @11, ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %335, i32 0, i32 1
  store i64 17, ptr %337, align 4
  %338 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %335, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %192, %"github.com/goplus/llgo/internal/runtime.String" %334, %"github.com/goplus/llgo/internal/runtime.String" %338, ptr %244, %"github.com/goplus/llgo/internal/runtime.Slice" %321, %"github.com/goplus/llgo/internal/runtime.Slice" %330)
  %339 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %340 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %341 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %342 = icmp eq ptr %341, null
  br i1 %342, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %343 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 0
  store ptr @10, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 1
  store i64 5, ptr %345, align 4
  %346 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %343, align 8
  %347 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %347, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %346, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %347, i32 0, i32 1
  store ptr %339, ptr %349, align 8
  %350 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %347, align 8
  %351 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %351, i32 0, i32 0
  store ptr @7, ptr %352, align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %351, i32 0, i32 1
  store i64 4, ptr %353, align 4
  %354 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %351, align 8
  %355 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %355, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %354, ptr %356, align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %355, i32 0, i32 1
  store ptr %340, ptr %357, align 8
  %358 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %355, align 8
  %359 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %360 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %359, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %350, ptr %360, align 8
  %361 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %359, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %358, ptr %361, align 8
  %362 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, i32 0, i32 0
  store ptr %359, ptr %363, align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, i32 0, i32 1
  store i64 2, ptr %364, align 4
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, i32 0, i32 2
  store i64 2, ptr %365, align 4
  %366 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, align 8
  %367 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 0
  store ptr @1, ptr %368, align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 1
  store i64 4, ptr %369, align 4
  %370 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %367, align 8
  %371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 0
  store ptr null, ptr %372, align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 1
  store i64 0, ptr %373, align 4
  %374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %371, align 8
  %375 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %370, %"github.com/goplus/llgo/internal/runtime.String" %374, %"github.com/goplus/llgo/internal/runtime.Slice" %366)
  store ptr %375, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %376 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %376, ptr @_llgo_main.nopCloser, align 8
  %377 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %378 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %378, i32 0, i32 0
  store ptr @10, ptr %379, align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %378, i32 0, i32 1
  store i64 5, ptr %380, align 4
  %381 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %378, align 8
  %382 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %383 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %381, ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 1
  store ptr %382, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %386, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %387, align 8
  %388 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %383, align 8
  %389 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %381, ptr %390, align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 1
  store ptr %382, ptr %391, align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %389, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %393, align 8
  %394 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %389, align 8
  %395 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %395, i32 0, i32 0
  store ptr @7, ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %395, i32 0, i32 1
  store i64 4, ptr %397, align 4
  %398 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %395, align 8
  %399 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %400 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %398, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 1
  store ptr %399, ptr %402, align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %403, align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %404, align 8
  %405 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %400, align 8
  %406 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %398, ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 1
  store ptr %399, ptr %408, align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %410, align 8
  %411 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %406, align 8
  %412 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %413 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %412, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %394, ptr %413, align 8
  %414 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %412, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %411, ptr %414, align 8
  %415 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 0
  store ptr %412, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 1
  store i64 2, ptr %417, align 4
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 2
  store i64 2, ptr %418, align 4
  %419 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, align 8
  %420 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %421 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %420, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %388, ptr %421, align 8
  %422 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %420, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %405, ptr %422, align 8
  %423 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, i32 0, i32 0
  store ptr %420, ptr %424, align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, i32 0, i32 1
  store i64 2, ptr %425, align 4
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, i32 0, i32 2
  store i64 2, ptr %426, align 4
  %427 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %423, align 8
  %428 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %428, i32 0, i32 0
  store ptr @1, ptr %429, align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %428, i32 0, i32 1
  store i64 4, ptr %430, align 4
  %431 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %428, align 8
  %432 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %432, i32 0, i32 0
  store ptr @12, ptr %433, align 8
  %434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %432, i32 0, i32 1
  store i64 9, ptr %434, align 4
  %435 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %432, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %376, %"github.com/goplus/llgo/internal/runtime.String" %431, %"github.com/goplus/llgo/internal/runtime.String" %435, ptr %377, %"github.com/goplus/llgo/internal/runtime.Slice" %419, %"github.com/goplus/llgo/internal/runtime.Slice" %427)
  %436 = load ptr, ptr @_llgo_string, align 8
  %437 = load ptr, ptr @_llgo_int, align 8
  %438 = load ptr, ptr @_llgo_error, align 8
  %439 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %440 = icmp eq ptr %439, null
  br i1 %440, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %441 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %442 = getelementptr ptr, ptr %441, i64 0
  store ptr %436, ptr %442, align 8
  %443 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %443, i32 0, i32 0
  store ptr %441, ptr %444, align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %443, i32 0, i32 1
  store i64 1, ptr %445, align 4
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %443, i32 0, i32 2
  store i64 1, ptr %446, align 4
  %447 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %443, align 8
  %448 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %449 = getelementptr ptr, ptr %448, i64 0
  store ptr %437, ptr %449, align 8
  %450 = getelementptr ptr, ptr %448, i64 1
  store ptr %438, ptr %450, align 8
  %451 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %451, i32 0, i32 0
  store ptr %448, ptr %452, align 8
  %453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %451, i32 0, i32 1
  store i64 2, ptr %453, align 4
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %451, i32 0, i32 2
  store i64 2, ptr %454, align 4
  %455 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %451, align 8
  %456 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %447, %"github.com/goplus/llgo/internal/runtime.Slice" %455, i1 false)
  store ptr %456, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %457 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %458 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %460 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %461 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %460, i32 0, i32 0
  store ptr @13, ptr %461, align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %460, i32 0, i32 1
  store i64 11, ptr %462, align 4
  %463 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %460, align 8
  %464 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %464, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %463, ptr %465, align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %464, i32 0, i32 1
  store ptr %457, ptr %466, align 8
  %467 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %464, align 8
  %468 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %469 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %468, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %467, ptr %469, align 8
  %470 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %470, i32 0, i32 0
  store ptr %468, ptr %471, align 8
  %472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %470, i32 0, i32 1
  store i64 1, ptr %472, align 4
  %473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %470, i32 0, i32 2
  store i64 1, ptr %473, align 4
  %474 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %470, align 8
  %475 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %475, i32 0, i32 0
  store ptr @1, ptr %476, align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %475, i32 0, i32 1
  store i64 4, ptr %477, align 4
  %478 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %475, align 8
  %479 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %479, i32 0, i32 0
  store ptr @14, ptr %480, align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %479, i32 0, i32 1
  store i64 17, ptr %481, align 4
  %482 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %479, align 8
  %483 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %478, %"github.com/goplus/llgo/internal/runtime.String" %482, %"github.com/goplus/llgo/internal/runtime.Slice" %474)
  store ptr %483, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %484 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %485 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %486 = icmp eq ptr %485, null
  br i1 %486, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %487 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %487, i32 0, i32 0
  store ptr @13, ptr %488, align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %487, i32 0, i32 1
  store i64 11, ptr %489, align 4
  %490 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %487, align 8
  %491 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %491, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %490, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %491, i32 0, i32 1
  store ptr %484, ptr %493, align 8
  %494 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %491, align 8
  %495 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %496 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %495, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %494, ptr %496, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, i32 0, i32 0
  store ptr %495, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, i32 0, i32 1
  store i64 1, ptr %499, align 4
  %500 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, i32 0, i32 2
  store i64 1, ptr %500, align 4
  %501 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %497, align 8
  %502 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %502, i32 0, i32 0
  store ptr @1, ptr %503, align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %502, i32 0, i32 1
  store i64 4, ptr %504, align 4
  %505 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %502, align 8
  %506 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %506, i32 0, i32 0
  store ptr null, ptr %507, align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %506, i32 0, i32 1
  store i64 0, ptr %508, align 4
  %509 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %506, align 8
  %510 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %505, %"github.com/goplus/llgo/internal/runtime.String" %509, %"github.com/goplus/llgo/internal/runtime.Slice" %501)
  store ptr %510, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %511 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 10)
  store ptr %511, ptr @_llgo_main.stringReader, align 8
  %512 = load ptr, ptr @_llgo_string, align 8
  %513 = load ptr, ptr @_llgo_int64, align 8
  %514 = load ptr, ptr @_llgo_int, align 8
  %515 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %515, i32 0, i32 0
  store ptr @18, ptr %516, align 8
  %517 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %515, i32 0, i32 1
  store i64 1, ptr %517, align 4
  %518 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %515, align 8
  %519 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 0
  store ptr null, ptr %520, align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 1
  store i64 0, ptr %521, align 4
  %522 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %519, align 8
  %523 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %518, ptr %512, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %522, i1 false)
  %524 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %524, i32 0, i32 0
  store ptr @19, ptr %525, align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %524, i32 0, i32 1
  store i64 1, ptr %526, align 4
  %527 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %524, align 8
  %528 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 0
  store ptr null, ptr %529, align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 1
  store i64 0, ptr %530, align 4
  %531 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %528, align 8
  %532 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %527, ptr %513, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %531, i1 false)
  %533 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %533, i32 0, i32 0
  store ptr @20, ptr %534, align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %533, i32 0, i32 1
  store i64 8, ptr %535, align 4
  %536 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %533, align 8
  %537 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %537, i32 0, i32 0
  store ptr null, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %537, i32 0, i32 1
  store i64 0, ptr %539, align 4
  %540 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %537, align 8
  %541 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %536, ptr %514, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %540, i1 false)
  %542 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %542, i32 0, i32 0
  store ptr @1, ptr %543, align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %542, i32 0, i32 1
  store i64 4, ptr %544, align 4
  %545 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %542, align 8
  %546 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %547 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %546, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %523, ptr %547, align 8
  %548 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %546, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %532, ptr %548, align 8
  %549 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %546, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %541, ptr %549, align 8
  %550 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 0
  store ptr %546, ptr %551, align 8
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 1
  store i64 3, ptr %552, align 4
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, i32 0, i32 2
  store i64 3, ptr %553, align 4
  %554 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %550, align 8
  %555 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %545, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %554)
  store ptr %555, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %556 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %557 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %557, i32 0, i32 0
  store ptr @21, ptr %558, align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %557, i32 0, i32 1
  store i64 3, ptr %559, align 4
  %560 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %557, align 8
  %561 = load ptr, ptr @_llgo_int, align 8
  %562 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %563 = icmp eq ptr %562, null
  br i1 %563, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %564 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %565 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, i32 0, i32 0
  store ptr %564, ptr %566, align 8
  %567 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, i32 0, i32 1
  store i64 0, ptr %567, align 4
  %568 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, i32 0, i32 2
  store i64 0, ptr %568, align 4
  %569 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %565, align 8
  %570 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %571 = getelementptr ptr, ptr %570, i64 0
  store ptr %561, ptr %571, align 8
  %572 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, i32 0, i32 0
  store ptr %570, ptr %573, align 8
  %574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, i32 0, i32 1
  store i64 1, ptr %574, align 4
  %575 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, i32 0, i32 2
  store i64 1, ptr %575, align 4
  %576 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %572, align 8
  %577 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %569, %"github.com/goplus/llgo/internal/runtime.Slice" %576, i1 false)
  store ptr %577, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %578 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %579 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %560, ptr %580, align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 1
  store ptr %578, ptr %581, align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %579, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %583, align 8
  %584 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %579, align 8
  %585 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 0
  store ptr @7, ptr %586, align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %585, i32 0, i32 1
  store i64 4, ptr %587, align 4
  %588 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %585, align 8
  %589 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %590 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %588, ptr %591, align 8
  %592 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 1
  store ptr %589, ptr %592, align 8
  %593 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %593, align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %590, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %594, align 8
  %595 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %590, align 8
  %596 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %596, i32 0, i32 0
  store ptr @22, ptr %597, align 8
  %598 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %596, i32 0, i32 1
  store i64 6, ptr %598, align 4
  %599 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %596, align 8
  %600 = load ptr, ptr @"[]_llgo_byte", align 8
  %601 = load ptr, ptr @_llgo_int64, align 8
  %602 = load ptr, ptr @_llgo_int, align 8
  %603 = load ptr, ptr @_llgo_error, align 8
  %604 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %605 = icmp eq ptr %604, null
  br i1 %605, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %606 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %607 = getelementptr ptr, ptr %606, i64 0
  store ptr %600, ptr %607, align 8
  %608 = getelementptr ptr, ptr %606, i64 1
  store ptr %601, ptr %608, align 8
  %609 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %609, i32 0, i32 0
  store ptr %606, ptr %610, align 8
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %609, i32 0, i32 1
  store i64 2, ptr %611, align 4
  %612 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %609, i32 0, i32 2
  store i64 2, ptr %612, align 4
  %613 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %609, align 8
  %614 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %615 = getelementptr ptr, ptr %614, i64 0
  store ptr %602, ptr %615, align 8
  %616 = getelementptr ptr, ptr %614, i64 1
  store ptr %603, ptr %616, align 8
  %617 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %617, i32 0, i32 0
  store ptr %614, ptr %618, align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %617, i32 0, i32 1
  store i64 2, ptr %619, align 4
  %620 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %617, i32 0, i32 2
  store i64 2, ptr %620, align 4
  %621 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %617, align 8
  %622 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %613, %"github.com/goplus/llgo/internal/runtime.Slice" %621, i1 false)
  store ptr %622, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %623 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %624 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %624, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %599, ptr %625, align 8
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %624, i32 0, i32 1
  store ptr %623, ptr %626, align 8
  %627 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %624, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %627, align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %624, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %628, align 8
  %629 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %624, align 8
  %630 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %630, i32 0, i32 0
  store ptr @23, ptr %631, align 8
  %632 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %630, i32 0, i32 1
  store i64 8, ptr %632, align 4
  %633 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %630, align 8
  %634 = load ptr, ptr @_llgo_byte, align 8
  %635 = load ptr, ptr @_llgo_error, align 8
  %636 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %637 = icmp eq ptr %636, null
  br i1 %637, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %638 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %639 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %639, i32 0, i32 0
  store ptr %638, ptr %640, align 8
  %641 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %639, i32 0, i32 1
  store i64 0, ptr %641, align 4
  %642 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %639, i32 0, i32 2
  store i64 0, ptr %642, align 4
  %643 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %639, align 8
  %644 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %645 = getelementptr ptr, ptr %644, i64 0
  store ptr %634, ptr %645, align 8
  %646 = getelementptr ptr, ptr %644, i64 1
  store ptr %635, ptr %646, align 8
  %647 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, i32 0, i32 0
  store ptr %644, ptr %648, align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, i32 0, i32 1
  store i64 2, ptr %649, align 4
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, i32 0, i32 2
  store i64 2, ptr %650, align 4
  %651 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, align 8
  %652 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %643, %"github.com/goplus/llgo/internal/runtime.Slice" %651, i1 false)
  store ptr %652, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %653 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %654 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %633, ptr %655, align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 1
  store ptr %653, ptr %656, align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %657, align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %658, align 8
  %659 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %654, align 8
  %660 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %660, i32 0, i32 0
  store ptr @24, ptr %661, align 8
  %662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %660, i32 0, i32 1
  store i64 8, ptr %662, align 4
  %663 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %660, align 8
  %664 = load ptr, ptr @_llgo_rune, align 8
  %665 = icmp eq ptr %664, null
  br i1 %665, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %666 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %667 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %666, i32 0, i32 6
  %668 = load i8, ptr %667, align 1
  %669 = or i8 %668, 32
  store i8 %669, ptr %667, align 1
  store ptr %666, ptr @_llgo_rune, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %670 = load ptr, ptr @_llgo_rune, align 8
  %671 = load ptr, ptr @_llgo_int, align 8
  %672 = load ptr, ptr @_llgo_error, align 8
  %673 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %674 = icmp eq ptr %673, null
  br i1 %674, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %675 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %676 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %676, i32 0, i32 0
  store ptr %675, ptr %677, align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %676, i32 0, i32 1
  store i64 0, ptr %678, align 4
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %676, i32 0, i32 2
  store i64 0, ptr %679, align 4
  %680 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %676, align 8
  %681 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %682 = getelementptr ptr, ptr %681, i64 0
  store ptr %670, ptr %682, align 8
  %683 = getelementptr ptr, ptr %681, i64 1
  store ptr %671, ptr %683, align 8
  %684 = getelementptr ptr, ptr %681, i64 2
  store ptr %672, ptr %684, align 8
  %685 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, i32 0, i32 0
  store ptr %681, ptr %686, align 8
  %687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, i32 0, i32 1
  store i64 3, ptr %687, align 4
  %688 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, i32 0, i32 2
  store i64 3, ptr %688, align 4
  %689 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, align 8
  %690 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %680, %"github.com/goplus/llgo/internal/runtime.Slice" %689, i1 false)
  store ptr %690, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %691 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %692 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %663, ptr %693, align 8
  %694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 1
  store ptr %691, ptr %694, align 8
  %695 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %695, align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %696, align 8
  %697 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %692, align 8
  %698 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %698, i32 0, i32 0
  store ptr @25, ptr %699, align 8
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %698, i32 0, i32 1
  store i64 4, ptr %700, align 4
  %701 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %698, align 8
  %702 = load ptr, ptr @_llgo_int64, align 8
  %703 = load ptr, ptr @_llgo_int, align 8
  %704 = load ptr, ptr @_llgo_int64, align 8
  %705 = load ptr, ptr @_llgo_error, align 8
  %706 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %707 = icmp eq ptr %706, null
  br i1 %707, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %708 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %709 = getelementptr ptr, ptr %708, i64 0
  store ptr %702, ptr %709, align 8
  %710 = getelementptr ptr, ptr %708, i64 1
  store ptr %703, ptr %710, align 8
  %711 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %711, i32 0, i32 0
  store ptr %708, ptr %712, align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %711, i32 0, i32 1
  store i64 2, ptr %713, align 4
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %711, i32 0, i32 2
  store i64 2, ptr %714, align 4
  %715 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %711, align 8
  %716 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %717 = getelementptr ptr, ptr %716, i64 0
  store ptr %704, ptr %717, align 8
  %718 = getelementptr ptr, ptr %716, i64 1
  store ptr %705, ptr %718, align 8
  %719 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %719, i32 0, i32 0
  store ptr %716, ptr %720, align 8
  %721 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %719, i32 0, i32 1
  store i64 2, ptr %721, align 4
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %719, i32 0, i32 2
  store i64 2, ptr %722, align 4
  %723 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %719, align 8
  %724 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %715, %"github.com/goplus/llgo/internal/runtime.Slice" %723, i1 false)
  store ptr %724, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %725 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %726 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %726, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %701, ptr %727, align 8
  %728 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %726, i32 0, i32 1
  store ptr %725, ptr %728, align 8
  %729 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %726, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %729, align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %726, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %730, align 8
  %731 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %726, align 8
  %732 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %733 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %732, i32 0, i32 0
  store ptr @26, ptr %733, align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %732, i32 0, i32 1
  store i64 4, ptr %734, align 4
  %735 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %732, align 8
  %736 = load ptr, ptr @_llgo_int64, align 8
  %737 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %738 = icmp eq ptr %737, null
  br i1 %738, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %739 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %740 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %740, i32 0, i32 0
  store ptr %739, ptr %741, align 8
  %742 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %740, i32 0, i32 1
  store i64 0, ptr %742, align 4
  %743 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %740, i32 0, i32 2
  store i64 0, ptr %743, align 4
  %744 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %740, align 8
  %745 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %746 = getelementptr ptr, ptr %745, i64 0
  store ptr %736, ptr %746, align 8
  %747 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, i32 0, i32 0
  store ptr %745, ptr %748, align 8
  %749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, i32 0, i32 1
  store i64 1, ptr %749, align 4
  %750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, i32 0, i32 2
  store i64 1, ptr %750, align 4
  %751 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, align 8
  %752 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %744, %"github.com/goplus/llgo/internal/runtime.Slice" %751, i1 false)
  store ptr %752, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %753 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %754 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %754, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %735, ptr %755, align 8
  %756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %754, i32 0, i32 1
  store ptr %753, ptr %756, align 8
  %757 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %754, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %757, align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %754, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %758, align 8
  %759 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %754, align 8
  %760 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %761 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %760, i32 0, i32 0
  store ptr @27, ptr %761, align 8
  %762 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %760, i32 0, i32 1
  store i64 10, ptr %762, align 4
  %763 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %760, align 8
  %764 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %765 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %765, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %763, ptr %766, align 8
  %767 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %765, i32 0, i32 1
  store ptr %764, ptr %767, align 8
  %768 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %765, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %768, align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %765, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %769, align 8
  %770 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %765, align 8
  %771 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %772 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %771, i32 0, i32 0
  store ptr @28, ptr %772, align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %771, i32 0, i32 1
  store i64 10, ptr %773, align 4
  %774 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %771, align 8
  %775 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %776 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %776, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %774, ptr %777, align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %776, i32 0, i32 1
  store ptr %775, ptr %778, align 8
  %779 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %776, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %779, align 8
  %780 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %776, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %780, align 8
  %781 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %776, align 8
  %782 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %783 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %782, i32 0, i32 0
  store ptr @5, ptr %783, align 8
  %784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %782, i32 0, i32 1
  store i64 7, ptr %784, align 4
  %785 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %782, align 8
  %786 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %787 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %787, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %785, ptr %788, align 8
  %789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %787, i32 0, i32 1
  store ptr %786, ptr %789, align 8
  %790 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %787, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %790, align 8
  %791 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %787, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %791, align 8
  %792 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %787, align 8
  %793 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %794 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %584, ptr %794, align 8
  %795 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %595, ptr %795, align 8
  %796 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %629, ptr %796, align 8
  %797 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %659, ptr %797, align 8
  %798 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %697, ptr %798, align 8
  %799 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %731, ptr %799, align 8
  %800 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %759, ptr %800, align 8
  %801 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %770, ptr %801, align 8
  %802 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %781, ptr %802, align 8
  %803 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %793, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %792, ptr %803, align 8
  %804 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, i32 0, i32 0
  store ptr %793, ptr %805, align 8
  %806 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, i32 0, i32 1
  store i64 10, ptr %806, align 4
  %807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, i32 0, i32 2
  store i64 10, ptr %807, align 4
  %808 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %804, align 8
  %809 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %809, i32 0, i32 0
  store ptr @1, ptr %810, align 8
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %809, i32 0, i32 1
  store i64 4, ptr %811, align 4
  %812 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %809, align 8
  %813 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %813, i32 0, i32 0
  store ptr @29, ptr %814, align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %813, i32 0, i32 1
  store i64 12, ptr %815, align 4
  %816 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %813, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %511, %"github.com/goplus/llgo/internal/runtime.String" %812, %"github.com/goplus/llgo/internal/runtime.String" %816, ptr %556, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %808)
  %817 = load ptr, ptr @_llgo_main.stringReader, align 8
  %818 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %817)
  store ptr %818, ptr @"*_llgo_main.stringReader", align 8
  %819 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %820 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %821 = icmp eq ptr %820, null
  br i1 %821, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %822 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %822, i32 0, i32 0
  store ptr @7, ptr %823, align 8
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %822, i32 0, i32 1
  store i64 4, ptr %824, align 4
  %825 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %822, align 8
  %826 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %826, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %825, ptr %827, align 8
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %826, i32 0, i32 1
  store ptr %819, ptr %828, align 8
  %829 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %826, align 8
  %830 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %831 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %830, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %829, ptr %831, align 8
  %832 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %833 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, i32 0, i32 0
  store ptr %830, ptr %833, align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, i32 0, i32 1
  store i64 1, ptr %834, align 4
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, i32 0, i32 2
  store i64 1, ptr %835, align 4
  %836 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %832, align 8
  %837 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %837, i32 0, i32 0
  store ptr @1, ptr %838, align 8
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %837, i32 0, i32 1
  store i64 4, ptr %839, align 4
  %840 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %837, align 8
  %841 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 0
  store ptr null, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 1
  store i64 0, ptr %843, align 4
  %844 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %841, align 8
  %845 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %840, %"github.com/goplus/llgo/internal/runtime.String" %844, %"github.com/goplus/llgo/internal/runtime.Slice" %836)
  store ptr %845, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %846 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %846, ptr @_llgo_main.errorString, align 8
  %847 = load ptr, ptr @_llgo_string, align 8
  %848 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %848, i32 0, i32 0
  store ptr @18, ptr %849, align 8
  %850 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %848, i32 0, i32 1
  store i64 1, ptr %850, align 4
  %851 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %848, align 8
  %852 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %852, i32 0, i32 0
  store ptr null, ptr %853, align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %852, i32 0, i32 1
  store i64 0, ptr %854, align 4
  %855 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %852, align 8
  %856 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %851, ptr %847, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %855, i1 false)
  %857 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %857, i32 0, i32 0
  store ptr @1, ptr %858, align 8
  %859 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %857, i32 0, i32 1
  store i64 4, ptr %859, align 4
  %860 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %857, align 8
  %861 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %862 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %861, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %856, ptr %862, align 8
  %863 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %863, i32 0, i32 0
  store ptr %861, ptr %864, align 8
  %865 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %863, i32 0, i32 1
  store i64 1, ptr %865, align 4
  %866 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %863, i32 0, i32 2
  store i64 1, ptr %866, align 4
  %867 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %863, align 8
  %868 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %860, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %867)
  store ptr %868, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %869 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %870 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %870, i32 0, i32 0
  store ptr @0, ptr %871, align 8
  %872 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %870, i32 0, i32 1
  store i64 5, ptr %872, align 4
  %873 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %870, align 8
  %874 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %875 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %875, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %873, ptr %876, align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %875, i32 0, i32 1
  store ptr %874, ptr %877, align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %875, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %878, align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %875, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %879, align 8
  %880 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %875, align 8
  %881 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %882 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %881, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %880, ptr %882, align 8
  %883 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %883, i32 0, i32 0
  store ptr %881, ptr %884, align 8
  %885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %883, i32 0, i32 1
  store i64 1, ptr %885, align 4
  %886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %883, i32 0, i32 2
  store i64 1, ptr %886, align 4
  %887 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %883, align 8
  %888 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %888, i32 0, i32 0
  store ptr @1, ptr %889, align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %888, i32 0, i32 1
  store i64 4, ptr %890, align 4
  %891 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %888, align 8
  %892 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %892, i32 0, i32 0
  store ptr @30, ptr %893, align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %892, i32 0, i32 1
  store i64 11, ptr %894, align 4
  %895 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %892, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %846, %"github.com/goplus/llgo/internal/runtime.String" %891, %"github.com/goplus/llgo/internal/runtime.String" %895, ptr %869, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %887)
  %896 = load ptr, ptr @_llgo_main.errorString, align 8
  %897 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %896)
  store ptr %897, ptr @"*_llgo_main.errorString", align 8
  %898 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %899 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %900 = icmp eq ptr %899, null
  br i1 %900, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %901 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %901, i32 0, i32 0
  store ptr @0, ptr %902, align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %901, i32 0, i32 1
  store i64 5, ptr %903, align 4
  %904 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %901, align 8
  %905 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %906 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %905, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %904, ptr %906, align 8
  %907 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %905, i32 0, i32 1
  store ptr %898, ptr %907, align 8
  %908 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %905, align 8
  %909 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %910 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %909, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %908, ptr %910, align 8
  %911 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %911, i32 0, i32 0
  store ptr %909, ptr %912, align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %911, i32 0, i32 1
  store i64 1, ptr %913, align 4
  %914 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %911, i32 0, i32 2
  store i64 1, ptr %914, align 4
  %915 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %911, align 8
  %916 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %916, i32 0, i32 0
  store ptr @1, ptr %917, align 8
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %916, i32 0, i32 1
  store i64 4, ptr %918, align 4
  %919 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %916, align 8
  %920 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %920, i32 0, i32 0
  store ptr null, ptr %921, align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %920, i32 0, i32 1
  store i64 0, ptr %922, align 4
  %923 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %920, align 8
  %924 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %919, %"github.com/goplus/llgo/internal/runtime.String" %923, %"github.com/goplus/llgo/internal/runtime.Slice" %915)
  store ptr %924, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
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

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice", ptr, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String")
