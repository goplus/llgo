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
@7 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@8 = private unnamed_addr constant [4 x i8] c"Read", align 1
@9 = private unnamed_addr constant [11 x i8] c"main.Reader", align 1
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
@"*_llgo_main.stringReader" = global ptr null, align 8
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@_llgo_main.errorString = global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null, align 8
@30 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"*_llgo_main.errorString" = global ptr null, align 8
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
  %0 = load ptr, ptr @"[]_llgo_byte", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_byte", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_byte", align 8
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = or i8 %9, 32
  store i8 %10, ptr %8, align 1
  store ptr %7, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %14, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %15 = load ptr, ptr @_llgo_string, align 8
  %16 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
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
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %31)
  store ptr %31, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %32 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %33 = load ptr, ptr @_llgo_error, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @0, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 5, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %39, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %38, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %39, i32 0, i32 1
  store ptr %32, ptr %41, align 8
  %42 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %39, align 8
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %44 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %43, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %42, ptr %44, align 8
  %45 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %45, i32 0, i32 0
  store ptr %43, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %45, i32 0, i32 1
  store i64 1, ptr %47, align 4
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %45, i32 0, i32 2
  store i64 1, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %45, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 0
  store ptr @1, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 1
  store i64 4, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %50, align 8
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @2, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 5, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %53, %"github.com/goplus/llgo/internal/runtime.String" %57, %"github.com/goplus/llgo/internal/runtime.Slice" %49)
  store ptr %58, ptr @_llgo_error, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %59 = load ptr, ptr @_llgo_error, align 8
  %60 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %63 = getelementptr ptr, ptr %62, i64 0
  store ptr %4, ptr %63, align 8
  %64 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, i32 0, i32 0
  store ptr %62, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, i32 0, i32 1
  store i64 1, ptr %66, align 4
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, i32 0, i32 2
  store i64 1, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %64, align 8
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %70 = getelementptr ptr, ptr %69, i64 0
  store ptr %11, ptr %70, align 8
  %71 = getelementptr ptr, ptr %69, i64 1
  store ptr %59, ptr %71, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 0
  store ptr %69, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 1
  store i64 2, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 2
  store i64 2, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %68, %"github.com/goplus/llgo/internal/runtime.Slice" %76, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %77)
  store ptr %77, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %78 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %79 = load ptr, ptr @_llgo_main.Writer, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 0
  store ptr @3, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 1
  store i64 5, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %81, align 8
  %85 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %85, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %84, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %85, i32 0, i32 1
  store ptr %78, ptr %87, align 8
  %88 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %85, align 8
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %90 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %89, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %88, ptr %90, align 8
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, i32 0, i32 0
  store ptr %89, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, i32 0, i32 1
  store i64 1, ptr %93, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, i32 0, i32 2
  store i64 1, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 0
  store ptr @1, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 1
  store i64 4, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %96, align 8
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @4, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 11, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %99, %"github.com/goplus/llgo/internal/runtime.String" %103, %"github.com/goplus/llgo/internal/runtime.Slice" %95)
  store ptr %104, ptr @_llgo_main.Writer, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %105 = load ptr, ptr @_llgo_main.Writer, align 8
  %106 = load ptr, ptr @_llgo_int64, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %108, i32 0, i32 6
  %110 = load i8, ptr %109, align 1
  %111 = or i8 %110, 32
  store i8 %111, ptr %109, align 1
  store ptr %108, ptr @_llgo_int64, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %112 = load ptr, ptr @_llgo_int64, align 8
  %113 = load ptr, ptr @_llgo_error, align 8
  %114 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %117 = getelementptr ptr, ptr %116, i64 0
  store ptr %105, ptr %117, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, i32 0, i32 0
  store ptr %116, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, i32 0, i32 1
  store i64 1, ptr %120, align 4
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, i32 0, i32 2
  store i64 1, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %118, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %124 = getelementptr ptr, ptr %123, i64 0
  store ptr %112, ptr %124, align 8
  %125 = getelementptr ptr, ptr %123, i64 1
  store ptr %113, ptr %125, align 8
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, i32 0, i32 0
  store ptr %123, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, i32 0, i32 1
  store i64 2, ptr %128, align 4
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, i32 0, i32 2
  store i64 2, ptr %129, align 4
  %130 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %126, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %122, %"github.com/goplus/llgo/internal/runtime.Slice" %130, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %131)
  store ptr %131, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %132 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %133 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %135, i32 0, i32 0
  store ptr @5, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %135, i32 0, i32 1
  store i64 7, ptr %137, align 4
  %138 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %135, align 8
  %139 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %139, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %138, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %139, i32 0, i32 1
  store ptr %132, ptr %141, align 8
  %142 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %139, align 8
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %144 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %142, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 0
  store ptr %143, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 1
  store i64 1, ptr %147, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 2
  store i64 1, ptr %148, align 4
  %149 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @1, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 4, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @6, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 13, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %153, %"github.com/goplus/llgo/internal/runtime.String" %157, %"github.com/goplus/llgo/internal/runtime.Slice" %149)
  store ptr %158, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %159 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %160 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr @5, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 7, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  %166 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %166, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %165, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %166, i32 0, i32 1
  store ptr %159, ptr %168, align 8
  %169 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %166, align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %171 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %169, ptr %171, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 0
  store ptr %170, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 1
  store i64 1, ptr %174, align 4
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, i32 0, i32 2
  store i64 1, ptr %175, align 4
  %176 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %172, align 8
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 0
  store ptr @1, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 1
  store i64 4, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %177, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 0
  store ptr null, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 1
  store i64 0, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %181, align 8
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %180, %"github.com/goplus/llgo/internal/runtime.String" %184, %"github.com/goplus/llgo/internal/runtime.Slice" %176)
  store ptr %185, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 3, i64 3)
  store ptr %186, ptr @_llgo_main.nopCloserWriterTo, align 8
  %187 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %188 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @7, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 6, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr null, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 0, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr @8, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 4, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %202, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %201, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %202, i32 0, i32 1
  store ptr %187, ptr %204, align 8
  %205 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %202, align 8
  %206 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %207 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %206, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %205, ptr %207, align 8
  %208 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, i32 0, i32 0
  store ptr %206, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, i32 0, i32 1
  store i64 1, ptr %210, align 4
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, i32 0, i32 2
  store i64 1, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @1, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 4, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr @9, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 11, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %216, %"github.com/goplus/llgo/internal/runtime.String" %220, %"github.com/goplus/llgo/internal/runtime.Slice" %212)
  %222 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %193, ptr %221, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %197, i1 true)
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr @1, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 4, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %228 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %227, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %222, ptr %228, align 8
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, i32 0, i32 0
  store ptr %227, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, i32 0, i32 1
  store i64 1, ptr %231, align 4
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, i32 0, i32 2
  store i64 1, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %229, align 8
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %226, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %233)
  store ptr %234, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %235 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 0
  store ptr @10, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 1
  store i64 5, ptr %238, align 4
  %239 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %236, align 8
  %240 = load ptr, ptr @_llgo_error, align 8
  %241 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 0
  store ptr %243, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 1
  store i64 0, ptr %246, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 2
  store i64 0, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, align 8
  %249 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %250 = getelementptr ptr, ptr %249, i64 0
  store ptr %240, ptr %250, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 0
  store ptr %249, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 1
  store i64 1, ptr %253, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 2
  store i64 1, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, align 8
  %256 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %248, %"github.com/goplus/llgo/internal/runtime.Slice" %255, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %256)
  store ptr %256, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %257 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %258 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %239, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 1
  store ptr %257, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %262, align 8
  %263 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %258, align 8
  %264 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %239, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 1
  store ptr %257, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %268, align 8
  %269 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %264, align 8
  %270 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %270, i32 0, i32 0
  store ptr @8, ptr %271, align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %270, i32 0, i32 1
  store i64 4, ptr %272, align 4
  %273 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %270, align 8
  %274 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %275 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %273, ptr %276, align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 1
  store ptr %274, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %275, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %279, align 8
  %280 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %275, align 8
  %281 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %281, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %273, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %281, i32 0, i32 1
  store ptr %274, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %281, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %284, align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %281, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %285, align 8
  %286 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %281, align 8
  %287 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %287, i32 0, i32 0
  store ptr @5, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %287, i32 0, i32 1
  store i64 7, ptr %289, align 4
  %290 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %287, align 8
  %291 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %292 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %290, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 1
  store ptr %291, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %292, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %296, align 8
  %297 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %292, align 8
  %298 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %290, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i32 0, i32 1
  store ptr %291, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %298, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %302, align 8
  %303 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %298, align 8
  %304 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %305 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %269, ptr %305, align 8
  %306 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %286, ptr %306, align 8
  %307 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %303, ptr %307, align 8
  %308 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, i32 0, i32 0
  store ptr %304, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, i32 0, i32 1
  store i64 3, ptr %310, align 4
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, i32 0, i32 2
  store i64 3, ptr %311, align 4
  %312 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %308, align 8
  %313 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %263, ptr %314, align 8
  %315 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %280, ptr %315, align 8
  %316 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %297, ptr %316, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 0
  store ptr %313, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 1
  store i64 3, ptr %319, align 4
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, i32 0, i32 2
  store i64 3, ptr %320, align 4
  %321 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %317, align 8
  %322 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %322, i32 0, i32 0
  store ptr @1, ptr %323, align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %322, i32 0, i32 1
  store i64 4, ptr %324, align 4
  %325 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %322, align 8
  %326 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 0
  store ptr @11, ptr %327, align 8
  %328 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %326, i32 0, i32 1
  store i64 17, ptr %328, align 4
  %329 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %326, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %186, %"github.com/goplus/llgo/internal/runtime.String" %325, %"github.com/goplus/llgo/internal/runtime.String" %329, ptr %235, %"github.com/goplus/llgo/internal/runtime.Slice" %312, %"github.com/goplus/llgo/internal/runtime.Slice" %321)
  %330 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %331 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %332 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %333 = icmp eq ptr %332, null
  br i1 %333, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 0
  store ptr @10, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 1
  store i64 5, ptr %336, align 4
  %337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %334, align 8
  %338 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %338, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %337, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %338, i32 0, i32 1
  store ptr %330, ptr %340, align 8
  %341 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %338, align 8
  %342 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %342, i32 0, i32 0
  store ptr @8, ptr %343, align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %342, i32 0, i32 1
  store i64 4, ptr %344, align 4
  %345 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %342, align 8
  %346 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %346, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %345, ptr %347, align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %346, i32 0, i32 1
  store ptr %331, ptr %348, align 8
  %349 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %346, align 8
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %351 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %350, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %341, ptr %351, align 8
  %352 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %350, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %349, ptr %352, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 0
  store ptr %350, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 1
  store i64 2, ptr %355, align 4
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 2
  store i64 2, ptr %356, align 4
  %357 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, align 8
  %358 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %358, i32 0, i32 0
  store ptr @1, ptr %359, align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %358, i32 0, i32 1
  store i64 4, ptr %360, align 4
  %361 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %358, align 8
  %362 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %362, i32 0, i32 0
  store ptr null, ptr %363, align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %362, i32 0, i32 1
  store i64 0, ptr %364, align 4
  %365 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %362, align 8
  %366 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %361, %"github.com/goplus/llgo/internal/runtime.String" %365, %"github.com/goplus/llgo/internal/runtime.Slice" %357)
  store ptr %366, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %367 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %367, ptr @_llgo_main.nopCloser, align 8
  %368 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 0
  store ptr @10, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 1
  store i64 5, ptr %371, align 4
  %372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %369, align 8
  %373 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %374 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %372, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 1
  store ptr %373, ptr %376, align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %374, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %378, align 8
  %379 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %374, align 8
  %380 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %380, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %372, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %380, i32 0, i32 1
  store ptr %373, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %380, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %380, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %384, align 8
  %385 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %380, align 8
  %386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 0
  store ptr @8, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 1
  store i64 4, ptr %388, align 4
  %389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %386, align 8
  %390 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %391 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %389, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 1
  store ptr %390, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %391, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %395, align 8
  %396 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %391, align 8
  %397 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %389, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i32 0, i32 1
  store ptr %390, ptr %399, align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %397, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %401, align 8
  %402 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %397, align 8
  %403 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %404 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %403, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %385, ptr %404, align 8
  %405 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %403, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %402, ptr %405, align 8
  %406 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, i32 0, i32 0
  store ptr %403, ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, i32 0, i32 1
  store i64 2, ptr %408, align 4
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, i32 0, i32 2
  store i64 2, ptr %409, align 4
  %410 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %406, align 8
  %411 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %412 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %411, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %379, ptr %412, align 8
  %413 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %411, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %396, ptr %413, align 8
  %414 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, i32 0, i32 0
  store ptr %411, ptr %415, align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, i32 0, i32 1
  store i64 2, ptr %416, align 4
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, i32 0, i32 2
  store i64 2, ptr %417, align 4
  %418 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, align 8
  %419 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %419, i32 0, i32 0
  store ptr @1, ptr %420, align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %419, i32 0, i32 1
  store i64 4, ptr %421, align 4
  %422 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %419, align 8
  %423 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %423, i32 0, i32 0
  store ptr @12, ptr %424, align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %423, i32 0, i32 1
  store i64 9, ptr %425, align 4
  %426 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %423, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %367, %"github.com/goplus/llgo/internal/runtime.String" %422, %"github.com/goplus/llgo/internal/runtime.String" %426, ptr %368, %"github.com/goplus/llgo/internal/runtime.Slice" %410, %"github.com/goplus/llgo/internal/runtime.Slice" %418)
  %427 = load ptr, ptr @_llgo_string, align 8
  %428 = load ptr, ptr @_llgo_int, align 8
  %429 = load ptr, ptr @_llgo_error, align 8
  %430 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %431 = icmp eq ptr %430, null
  br i1 %431, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %432 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %433 = getelementptr ptr, ptr %432, i64 0
  store ptr %427, ptr %433, align 8
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %434, i32 0, i32 0
  store ptr %432, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %434, i32 0, i32 1
  store i64 1, ptr %436, align 4
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %434, i32 0, i32 2
  store i64 1, ptr %437, align 4
  %438 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %434, align 8
  %439 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %440 = getelementptr ptr, ptr %439, i64 0
  store ptr %428, ptr %440, align 8
  %441 = getelementptr ptr, ptr %439, i64 1
  store ptr %429, ptr %441, align 8
  %442 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %442, i32 0, i32 0
  store ptr %439, ptr %443, align 8
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %442, i32 0, i32 1
  store i64 2, ptr %444, align 4
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %442, i32 0, i32 2
  store i64 2, ptr %445, align 4
  %446 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %442, align 8
  %447 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %438, %"github.com/goplus/llgo/internal/runtime.Slice" %446, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %447)
  store ptr %447, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %448 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %449 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %450 = icmp eq ptr %449, null
  br i1 %450, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %451 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %451, i32 0, i32 0
  store ptr @13, ptr %452, align 8
  %453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %451, i32 0, i32 1
  store i64 11, ptr %453, align 4
  %454 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %451, align 8
  %455 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %455, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %454, ptr %456, align 8
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %455, i32 0, i32 1
  store ptr %448, ptr %457, align 8
  %458 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %455, align 8
  %459 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %460 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %459, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %458, ptr %460, align 8
  %461 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, i32 0, i32 0
  store ptr %459, ptr %462, align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, i32 0, i32 1
  store i64 1, ptr %463, align 4
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, i32 0, i32 2
  store i64 1, ptr %464, align 4
  %465 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %461, align 8
  %466 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %466, i32 0, i32 0
  store ptr @1, ptr %467, align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %466, i32 0, i32 1
  store i64 4, ptr %468, align 4
  %469 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %466, align 8
  %470 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %470, i32 0, i32 0
  store ptr @14, ptr %471, align 8
  %472 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %470, i32 0, i32 1
  store i64 17, ptr %472, align 4
  %473 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %470, align 8
  %474 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %469, %"github.com/goplus/llgo/internal/runtime.String" %473, %"github.com/goplus/llgo/internal/runtime.Slice" %465)
  store ptr %474, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %475 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %476 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %477 = icmp eq ptr %476, null
  br i1 %477, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %478 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 0
  store ptr @13, ptr %479, align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 1
  store i64 11, ptr %480, align 4
  %481 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %478, align 8
  %482 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %482, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %481, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %482, i32 0, i32 1
  store ptr %475, ptr %484, align 8
  %485 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %482, align 8
  %486 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %487 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %486, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %485, ptr %487, align 8
  %488 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, i32 0, i32 0
  store ptr %486, ptr %489, align 8
  %490 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, i32 0, i32 1
  store i64 1, ptr %490, align 4
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, i32 0, i32 2
  store i64 1, ptr %491, align 4
  %492 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, align 8
  %493 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %493, i32 0, i32 0
  store ptr @1, ptr %494, align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %493, i32 0, i32 1
  store i64 4, ptr %495, align 4
  %496 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %493, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr null, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 0, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %496, %"github.com/goplus/llgo/internal/runtime.String" %500, %"github.com/goplus/llgo/internal/runtime.Slice" %492)
  store ptr %501, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %502 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 10)
  store ptr %502, ptr @_llgo_main.stringReader, align 8
  %503 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %503, i32 0, i32 0
  store ptr @18, ptr %504, align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %503, i32 0, i32 1
  store i64 1, ptr %505, align 4
  %506 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %503, align 8
  %507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 0
  store ptr null, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 1
  store i64 0, ptr %509, align 4
  %510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %507, align 8
  %511 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %512 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %506, ptr %511, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %510, i1 false)
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 0
  store ptr @19, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 1
  store i64 1, ptr %515, align 4
  %516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %513, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr null, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 0, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %522 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %516, ptr %521, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %520, i1 false)
  %523 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %523, i32 0, i32 0
  store ptr @20, ptr %524, align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %523, i32 0, i32 1
  store i64 8, ptr %525, align 4
  %526 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %523, align 8
  %527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 0
  store ptr null, ptr %528, align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 1
  store i64 0, ptr %529, align 4
  %530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %527, align 8
  %531 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %532 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %526, ptr %531, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %530, i1 false)
  %533 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %533, i32 0, i32 0
  store ptr @1, ptr %534, align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %533, i32 0, i32 1
  store i64 4, ptr %535, align 4
  %536 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %533, align 8
  %537 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %538 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %537, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %512, ptr %538, align 8
  %539 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %537, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %522, ptr %539, align 8
  %540 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %537, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %532, ptr %540, align 8
  %541 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %541, i32 0, i32 0
  store ptr %537, ptr %542, align 8
  %543 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %541, i32 0, i32 1
  store i64 3, ptr %543, align 4
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %541, i32 0, i32 2
  store i64 3, ptr %544, align 4
  %545 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %541, align 8
  %546 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %536, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %545)
  store ptr %546, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %547 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %548 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %548, i32 0, i32 0
  store ptr @21, ptr %549, align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %548, i32 0, i32 1
  store i64 3, ptr %550, align 4
  %551 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %548, align 8
  %552 = load ptr, ptr @_llgo_int, align 8
  %553 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %554 = icmp eq ptr %553, null
  br i1 %554, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %555 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %556 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, i32 0, i32 0
  store ptr %555, ptr %557, align 8
  %558 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, i32 0, i32 1
  store i64 0, ptr %558, align 4
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, i32 0, i32 2
  store i64 0, ptr %559, align 4
  %560 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %556, align 8
  %561 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %562 = getelementptr ptr, ptr %561, i64 0
  store ptr %552, ptr %562, align 8
  %563 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 0
  store ptr %561, ptr %564, align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 1
  store i64 1, ptr %565, align 4
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 2
  store i64 1, ptr %566, align 4
  %567 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, align 8
  %568 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %560, %"github.com/goplus/llgo/internal/runtime.Slice" %567, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %568)
  store ptr %568, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %569 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %570 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %551, ptr %571, align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 1
  store ptr %569, ptr %572, align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %573, align 8
  %574 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %570, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %574, align 8
  %575 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %570, align 8
  %576 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %576, i32 0, i32 0
  store ptr @8, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %576, i32 0, i32 1
  store i64 4, ptr %578, align 4
  %579 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %576, align 8
  %580 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %581 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %582 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %579, ptr %582, align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 1
  store ptr %580, ptr %583, align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %584, align 8
  %585 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %581, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %585, align 8
  %586 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %581, align 8
  %587 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %587, i32 0, i32 0
  store ptr @22, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %587, i32 0, i32 1
  store i64 6, ptr %589, align 4
  %590 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %587, align 8
  %591 = load ptr, ptr @"[]_llgo_byte", align 8
  %592 = load ptr, ptr @_llgo_int64, align 8
  %593 = load ptr, ptr @_llgo_int, align 8
  %594 = load ptr, ptr @_llgo_error, align 8
  %595 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %597 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %598 = getelementptr ptr, ptr %597, i64 0
  store ptr %591, ptr %598, align 8
  %599 = getelementptr ptr, ptr %597, i64 1
  store ptr %592, ptr %599, align 8
  %600 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %600, i32 0, i32 0
  store ptr %597, ptr %601, align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %600, i32 0, i32 1
  store i64 2, ptr %602, align 4
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %600, i32 0, i32 2
  store i64 2, ptr %603, align 4
  %604 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %600, align 8
  %605 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %606 = getelementptr ptr, ptr %605, i64 0
  store ptr %593, ptr %606, align 8
  %607 = getelementptr ptr, ptr %605, i64 1
  store ptr %594, ptr %607, align 8
  %608 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, i32 0, i32 0
  store ptr %605, ptr %609, align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, i32 0, i32 1
  store i64 2, ptr %610, align 4
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, i32 0, i32 2
  store i64 2, ptr %611, align 4
  %612 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, align 8
  %613 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %604, %"github.com/goplus/llgo/internal/runtime.Slice" %612, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %613)
  store ptr %613, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %614 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %615 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %590, ptr %616, align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 1
  store ptr %614, ptr %617, align 8
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %618, align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %619, align 8
  %620 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %615, align 8
  %621 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 0
  store ptr @23, ptr %622, align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 1
  store i64 8, ptr %623, align 4
  %624 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %621, align 8
  %625 = load ptr, ptr @_llgo_byte, align 8
  %626 = icmp eq ptr %625, null
  br i1 %626, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %627 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %627, i32 0, i32 6
  %629 = load i8, ptr %628, align 1
  %630 = or i8 %629, 32
  store i8 %630, ptr %628, align 1
  store ptr %627, ptr @_llgo_byte, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %631 = load ptr, ptr @_llgo_byte, align 8
  %632 = load ptr, ptr @_llgo_error, align 8
  %633 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %634 = icmp eq ptr %633, null
  br i1 %634, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %635 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %636 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %637 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, i32 0, i32 0
  store ptr %635, ptr %637, align 8
  %638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, i32 0, i32 1
  store i64 0, ptr %638, align 4
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, i32 0, i32 2
  store i64 0, ptr %639, align 4
  %640 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %636, align 8
  %641 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %642 = getelementptr ptr, ptr %641, i64 0
  store ptr %631, ptr %642, align 8
  %643 = getelementptr ptr, ptr %641, i64 1
  store ptr %632, ptr %643, align 8
  %644 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %644, i32 0, i32 0
  store ptr %641, ptr %645, align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %644, i32 0, i32 1
  store i64 2, ptr %646, align 4
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %644, i32 0, i32 2
  store i64 2, ptr %647, align 4
  %648 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %644, align 8
  %649 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %640, %"github.com/goplus/llgo/internal/runtime.Slice" %648, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %649)
  store ptr %649, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %650 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %651 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %624, ptr %652, align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 1
  store ptr %650, ptr %653, align 8
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %654, align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %651, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %655, align 8
  %656 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %651, align 8
  %657 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %657, i32 0, i32 0
  store ptr @24, ptr %658, align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %657, i32 0, i32 1
  store i64 8, ptr %659, align 4
  %660 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %657, align 8
  %661 = load ptr, ptr @_llgo_rune, align 8
  %662 = icmp eq ptr %661, null
  br i1 %662, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %663 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %663, i32 0, i32 6
  %665 = load i8, ptr %664, align 1
  %666 = or i8 %665, 32
  store i8 %666, ptr %664, align 1
  store ptr %663, ptr @_llgo_rune, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %667 = load ptr, ptr @_llgo_rune, align 8
  %668 = load ptr, ptr @_llgo_int, align 8
  %669 = load ptr, ptr @_llgo_error, align 8
  %670 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %671 = icmp eq ptr %670, null
  br i1 %671, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %672 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %673 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %674 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, i32 0, i32 0
  store ptr %672, ptr %674, align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, i32 0, i32 1
  store i64 0, ptr %675, align 4
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, i32 0, i32 2
  store i64 0, ptr %676, align 4
  %677 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %673, align 8
  %678 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %679 = getelementptr ptr, ptr %678, i64 0
  store ptr %667, ptr %679, align 8
  %680 = getelementptr ptr, ptr %678, i64 1
  store ptr %668, ptr %680, align 8
  %681 = getelementptr ptr, ptr %678, i64 2
  store ptr %669, ptr %681, align 8
  %682 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %682, i32 0, i32 0
  store ptr %678, ptr %683, align 8
  %684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %682, i32 0, i32 1
  store i64 3, ptr %684, align 4
  %685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %682, i32 0, i32 2
  store i64 3, ptr %685, align 4
  %686 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %682, align 8
  %687 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %677, %"github.com/goplus/llgo/internal/runtime.Slice" %686, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %687)
  store ptr %687, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %688 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %689 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %660, ptr %690, align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 1
  store ptr %688, ptr %691, align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %692, align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %693, align 8
  %694 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %689, align 8
  %695 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %695, i32 0, i32 0
  store ptr @25, ptr %696, align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %695, i32 0, i32 1
  store i64 4, ptr %697, align 4
  %698 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %695, align 8
  %699 = load ptr, ptr @_llgo_int64, align 8
  %700 = load ptr, ptr @_llgo_int, align 8
  %701 = load ptr, ptr @_llgo_int64, align 8
  %702 = load ptr, ptr @_llgo_error, align 8
  %703 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %704 = icmp eq ptr %703, null
  br i1 %704, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %705 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %706 = getelementptr ptr, ptr %705, i64 0
  store ptr %699, ptr %706, align 8
  %707 = getelementptr ptr, ptr %705, i64 1
  store ptr %700, ptr %707, align 8
  %708 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %709 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %708, i32 0, i32 0
  store ptr %705, ptr %709, align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %708, i32 0, i32 1
  store i64 2, ptr %710, align 4
  %711 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %708, i32 0, i32 2
  store i64 2, ptr %711, align 4
  %712 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %708, align 8
  %713 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %714 = getelementptr ptr, ptr %713, i64 0
  store ptr %701, ptr %714, align 8
  %715 = getelementptr ptr, ptr %713, i64 1
  store ptr %702, ptr %715, align 8
  %716 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, i32 0, i32 0
  store ptr %713, ptr %717, align 8
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, i32 0, i32 1
  store i64 2, ptr %718, align 4
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, i32 0, i32 2
  store i64 2, ptr %719, align 4
  %720 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %716, align 8
  %721 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %712, %"github.com/goplus/llgo/internal/runtime.Slice" %720, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %721)
  store ptr %721, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %722 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %723 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %698, ptr %724, align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 1
  store ptr %722, ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %723, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %727, align 8
  %728 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %723, align 8
  %729 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 0
  store ptr @26, ptr %730, align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %729, i32 0, i32 1
  store i64 4, ptr %731, align 4
  %732 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %729, align 8
  %733 = load ptr, ptr @_llgo_int64, align 8
  %734 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %735 = icmp eq ptr %734, null
  br i1 %735, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %736 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %737 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %737, i32 0, i32 0
  store ptr %736, ptr %738, align 8
  %739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %737, i32 0, i32 1
  store i64 0, ptr %739, align 4
  %740 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %737, i32 0, i32 2
  store i64 0, ptr %740, align 4
  %741 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %737, align 8
  %742 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %743 = getelementptr ptr, ptr %742, i64 0
  store ptr %733, ptr %743, align 8
  %744 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %745 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, i32 0, i32 0
  store ptr %742, ptr %745, align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, i32 0, i32 1
  store i64 1, ptr %746, align 4
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, i32 0, i32 2
  store i64 1, ptr %747, align 4
  %748 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, align 8
  %749 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %741, %"github.com/goplus/llgo/internal/runtime.Slice" %748, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %749)
  store ptr %749, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %750 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %751 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %732, ptr %752, align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 1
  store ptr %750, ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %754, align 8
  %755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %751, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %755, align 8
  %756 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %751, align 8
  %757 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %757, i32 0, i32 0
  store ptr @27, ptr %758, align 8
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
  store ptr @"main.(*stringReader).UnreadByte", ptr %765, align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %766, align 8
  %767 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %762, align 8
  %768 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %768, i32 0, i32 0
  store ptr @28, ptr %769, align 8
  %770 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %768, i32 0, i32 1
  store i64 10, ptr %770, align 4
  %771 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %768, align 8
  %772 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %773 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %774 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %771, ptr %774, align 8
  %775 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 1
  store ptr %772, ptr %775, align 8
  %776 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %776, align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %773, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %777, align 8
  %778 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %773, align 8
  %779 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %780 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %779, i32 0, i32 0
  store ptr @5, ptr %780, align 8
  %781 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %779, i32 0, i32 1
  store i64 7, ptr %781, align 4
  %782 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %779, align 8
  %783 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %784 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %785 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %784, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %782, ptr %785, align 8
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %784, i32 0, i32 1
  store ptr %783, ptr %786, align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %784, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %787, align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %784, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %788, align 8
  %789 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %784, align 8
  %790 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %791 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %575, ptr %791, align 8
  %792 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %586, ptr %792, align 8
  %793 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %620, ptr %793, align 8
  %794 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %656, ptr %794, align 8
  %795 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %694, ptr %795, align 8
  %796 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %728, ptr %796, align 8
  %797 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %756, ptr %797, align 8
  %798 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %767, ptr %798, align 8
  %799 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %778, ptr %799, align 8
  %800 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %789, ptr %800, align 8
  %801 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %802 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %801, i32 0, i32 0
  store ptr %790, ptr %802, align 8
  %803 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %801, i32 0, i32 1
  store i64 10, ptr %803, align 4
  %804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %801, i32 0, i32 2
  store i64 10, ptr %804, align 4
  %805 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %801, align 8
  %806 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %807 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %806, i32 0, i32 0
  store ptr @1, ptr %807, align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %806, i32 0, i32 1
  store i64 4, ptr %808, align 4
  %809 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %806, align 8
  %810 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %810, i32 0, i32 0
  store ptr @29, ptr %811, align 8
  %812 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %810, i32 0, i32 1
  store i64 12, ptr %812, align 4
  %813 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %810, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %502, %"github.com/goplus/llgo/internal/runtime.String" %809, %"github.com/goplus/llgo/internal/runtime.String" %813, ptr %547, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %805)
  %814 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %502)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %814)
  store ptr %814, ptr @"*_llgo_main.stringReader", align 8
  %815 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %816 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %817 = icmp eq ptr %816, null
  br i1 %817, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %818 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 0
  store ptr @8, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 1
  store i64 4, ptr %820, align 4
  %821 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %818, align 8
  %822 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %823 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %822, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %821, ptr %823, align 8
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %822, i32 0, i32 1
  store ptr %815, ptr %824, align 8
  %825 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %822, align 8
  %826 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %827 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %826, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %825, ptr %827, align 8
  %828 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %829 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, i32 0, i32 0
  store ptr %826, ptr %829, align 8
  %830 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, i32 0, i32 1
  store i64 1, ptr %830, align 4
  %831 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, i32 0, i32 2
  store i64 1, ptr %831, align 4
  %832 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %828, align 8
  %833 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %833, i32 0, i32 0
  store ptr @1, ptr %834, align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %833, i32 0, i32 1
  store i64 4, ptr %835, align 4
  %836 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %833, align 8
  %837 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %837, i32 0, i32 0
  store ptr null, ptr %838, align 8
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %837, i32 0, i32 1
  store i64 0, ptr %839, align 4
  %840 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %837, align 8
  %841 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %836, %"github.com/goplus/llgo/internal/runtime.String" %840, %"github.com/goplus/llgo/internal/runtime.Slice" %832)
  store ptr %841, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %842 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %842, ptr @_llgo_main.errorString, align 8
  %843 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %843, i32 0, i32 0
  store ptr @18, ptr %844, align 8
  %845 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %843, i32 0, i32 1
  store i64 1, ptr %845, align 4
  %846 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %843, align 8
  %847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 0
  store ptr null, ptr %848, align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 1
  store i64 0, ptr %849, align 4
  %850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %847, align 8
  %851 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %852 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %846, ptr %851, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %850, i1 false)
  %853 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %853, i32 0, i32 0
  store ptr @1, ptr %854, align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %853, i32 0, i32 1
  store i64 4, ptr %855, align 4
  %856 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %853, align 8
  %857 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %858 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %857, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %852, ptr %858, align 8
  %859 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %860 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %859, i32 0, i32 0
  store ptr %857, ptr %860, align 8
  %861 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %859, i32 0, i32 1
  store i64 1, ptr %861, align 4
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %859, i32 0, i32 2
  store i64 1, ptr %862, align 4
  %863 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %859, align 8
  %864 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %856, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %863)
  store ptr %864, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %865 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %866 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %866, i32 0, i32 0
  store ptr @0, ptr %867, align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %866, i32 0, i32 1
  store i64 5, ptr %868, align 4
  %869 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %866, align 8
  %870 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %871 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %872 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %871, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %869, ptr %872, align 8
  %873 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %871, i32 0, i32 1
  store ptr %870, ptr %873, align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %871, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %874, align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %871, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %875, align 8
  %876 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %871, align 8
  %877 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %878 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %877, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %876, ptr %878, align 8
  %879 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %879, i32 0, i32 0
  store ptr %877, ptr %880, align 8
  %881 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %879, i32 0, i32 1
  store i64 1, ptr %881, align 4
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %879, i32 0, i32 2
  store i64 1, ptr %882, align 4
  %883 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %879, align 8
  %884 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %885 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %884, i32 0, i32 0
  store ptr @1, ptr %885, align 8
  %886 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %884, i32 0, i32 1
  store i64 4, ptr %886, align 4
  %887 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %884, align 8
  %888 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %888, i32 0, i32 0
  store ptr @30, ptr %889, align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %888, i32 0, i32 1
  store i64 11, ptr %890, align 4
  %891 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %888, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %842, %"github.com/goplus/llgo/internal/runtime.String" %887, %"github.com/goplus/llgo/internal/runtime.String" %891, ptr %865, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %883)
  %892 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %842)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %892)
  store ptr %892, ptr @"*_llgo_main.errorString", align 8
  %893 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %894 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %895 = icmp eq ptr %894, null
  br i1 %895, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %896 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %897 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %896, i32 0, i32 0
  store ptr @0, ptr %897, align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %896, i32 0, i32 1
  store i64 5, ptr %898, align 4
  %899 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %896, align 8
  %900 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %901 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %900, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %899, ptr %901, align 8
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %900, i32 0, i32 1
  store ptr %893, ptr %902, align 8
  %903 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %900, align 8
  %904 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %905 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %904, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %903, ptr %905, align 8
  %906 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %906, i32 0, i32 0
  store ptr %904, ptr %907, align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %906, i32 0, i32 1
  store i64 1, ptr %908, align 4
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %906, i32 0, i32 2
  store i64 1, ptr %909, align 4
  %910 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %906, align 8
  %911 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %911, i32 0, i32 0
  store ptr @1, ptr %912, align 8
  %913 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %911, i32 0, i32 1
  store i64 4, ptr %913, align 4
  %914 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %911, align 8
  %915 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %915, i32 0, i32 0
  store ptr null, ptr %916, align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %915, i32 0, i32 1
  store i64 0, ptr %917, align 4
  %918 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %915, align 8
  %919 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %914, %"github.com/goplus/llgo/internal/runtime.String" %918, %"github.com/goplus/llgo/internal/runtime.Slice" %910)
  store ptr %919, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
