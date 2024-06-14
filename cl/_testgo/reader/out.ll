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
@_llgo_error = global ptr null, align 8
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
@11 = private unnamed_addr constant [22 x i8] c"main.nopCloserWriterTo", align 1
@"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I" = linkonce global ptr null, align 8
@_llgo_main.nopCloser = global ptr null, align 8
@12 = private unnamed_addr constant [14 x i8] c"main.nopCloser", align 1
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
@29 = private unnamed_addr constant [17 x i8] c"main.stringReader", align 1
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@"*_llgo_main.errorString" = global ptr null, align 8
@_llgo_main.errorString = global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null, align 8
@30 = private unnamed_addr constant [16 x i8] c"main.errorString", align 1
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
  store ptr %2, ptr @_llgo_byte, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %3, align 1
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
  store ptr %13, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %13, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %15, 32
  store i8 %16, ptr %14, align 1
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
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %39, i32 0, i32 0
  store ptr @0, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %39, i32 0, i32 1
  store i64 5, ptr %41, align 4
  %42 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %39, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %43, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %43, i32 0, i32 1
  store ptr %38, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %43, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %48 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %47, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %46, ptr %48, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 0
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 1
  store i64 1, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 2
  store i64 1, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, align 8
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @1, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 4, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 0
  store ptr @2, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 1
  store i64 5, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %58, align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %57, %"github.com/goplus/llgo/internal/runtime.String" %61, %"github.com/goplus/llgo/internal/runtime.Slice" %53)
  store ptr %62, ptr @_llgo_error, align 8
  %63 = load ptr, ptr @_llgo_error, align 8
  %64 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %67 = getelementptr ptr, ptr %66, i64 0
  store ptr %10, ptr %67, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %68, i32 0, i32 0
  store ptr %66, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %68, i32 0, i32 1
  store i64 1, ptr %70, align 4
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %68, i32 0, i32 2
  store i64 1, ptr %71, align 4
  %72 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %68, align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %74 = getelementptr ptr, ptr %73, i64 0
  store ptr %17, ptr %74, align 8
  %75 = getelementptr ptr, ptr %73, i64 1
  store ptr %63, ptr %75, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 0
  store ptr %73, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 1
  store i64 2, ptr %78, align 4
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, i32 0, i32 2
  store i64 2, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %76, align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %72, %"github.com/goplus/llgo/internal/runtime.Slice" %80, i1 false)
  store ptr %81, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %82 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %83 = load ptr, ptr @_llgo_main.Writer, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 0
  store ptr @3, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 1
  store i64 5, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %85, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %89, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %88, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %89, i32 0, i32 1
  store ptr %82, ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %89, align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %94 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %92, ptr %94, align 8
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, i32 0, i32 0
  store ptr %93, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, i32 0, i32 1
  store i64 1, ptr %97, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, i32 0, i32 2
  store i64 1, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, align 8
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @1, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 4, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr @4, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 11, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %103, %"github.com/goplus/llgo/internal/runtime.String" %107, %"github.com/goplus/llgo/internal/runtime.Slice" %99)
  store ptr %108, ptr @_llgo_main.Writer, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %109 = load ptr, ptr @_llgo_main.Writer, align 8
  %110 = load ptr, ptr @_llgo_int64, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  store ptr %112, ptr @_llgo_int64, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %112, i32 0, i32 6
  %114 = load i8, ptr %113, align 1
  %115 = or i8 %114, 32
  store i8 %115, ptr %113, align 1
  %116 = load ptr, ptr @_llgo_int64, align 8
  %117 = load ptr, ptr @_llgo_error, align 8
  %118 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %121 = getelementptr ptr, ptr %120, i64 0
  store ptr %109, ptr %121, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 0
  store ptr %120, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 1
  store i64 1, ptr %124, align 4
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, i32 0, i32 2
  store i64 1, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %122, align 8
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %128 = getelementptr ptr, ptr %127, i64 0
  store ptr %116, ptr %128, align 8
  %129 = getelementptr ptr, ptr %127, i64 1
  store ptr %117, ptr %129, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, i32 0, i32 0
  store ptr %127, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, i32 0, i32 1
  store i64 2, ptr %132, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, i32 0, i32 2
  store i64 2, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %126, %"github.com/goplus/llgo/internal/runtime.Slice" %134, i1 false)
  store ptr %135, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %136 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %137 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 0
  store ptr @5, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 1
  store i64 7, ptr %141, align 4
  %142 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %139, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %142, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, i32 0, i32 1
  store ptr %136, ptr %145, align 8
  %146 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %148 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %147, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %146, ptr %148, align 8
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, i32 0, i32 0
  store ptr %147, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, i32 0, i32 1
  store i64 1, ptr %151, align 4
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, i32 0, i32 2
  store i64 1, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %149, align 8
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @1, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 4, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 0
  store ptr @6, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 1
  store i64 13, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %158, align 8
  %162 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %157, %"github.com/goplus/llgo/internal/runtime.String" %161, %"github.com/goplus/llgo/internal/runtime.Slice" %153)
  store ptr %162, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %163 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %164 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr @5, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 7, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %169, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, i32 0, i32 1
  store ptr %163, ptr %172, align 8
  %173 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %175 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %173, ptr %175, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 0
  store ptr %174, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 1
  store i64 1, ptr %178, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 2
  store i64 1, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 0
  store ptr @1, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 1
  store i64 4, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %181, align 8
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 0
  store ptr null, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %185, i32 0, i32 1
  store i64 0, ptr %187, align 4
  %188 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %185, align 8
  %189 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %184, %"github.com/goplus/llgo/internal/runtime.String" %188, %"github.com/goplus/llgo/internal/runtime.Slice" %180)
  store ptr %189, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 3, i64 3)
  store ptr %190, ptr @_llgo_main.nopCloserWriterTo, align 8
  %191 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %192 = load ptr, ptr @_llgo_main.Reader, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @7, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 4, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %197, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, i32 0, i32 1
  store ptr %191, ptr %200, align 8
  %201 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %203 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %202, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %201, ptr %203, align 8
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, i32 0, i32 0
  store ptr %202, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, i32 0, i32 1
  store i64 1, ptr %206, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, i32 0, i32 2
  store i64 1, ptr %207, align 4
  %208 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr @1, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 4, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @8, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 11, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  %217 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %212, %"github.com/goplus/llgo/internal/runtime.String" %216, %"github.com/goplus/llgo/internal/runtime.Slice" %208)
  store ptr %217, ptr @_llgo_main.Reader, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %218 = load ptr, ptr @_llgo_main.Reader, align 8
  %219 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @9, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 6, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 0
  store ptr null, ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 1
  store i64 0, ptr %227, align 4
  %228 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %225, align 8
  %229 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %224, ptr %218, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %228, i1 true)
  %230 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 0
  store ptr @1, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 1
  store i64 4, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %230, align 8
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %235 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %234, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %229, ptr %235, align 8
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 0
  store ptr %234, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 1
  store i64 1, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 2
  store i64 1, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, align 8
  %241 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %233, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %240)
  store ptr %241, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %242 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 0
  store ptr @10, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %243, i32 0, i32 1
  store i64 5, ptr %245, align 4
  %246 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %243, align 8
  %247 = load ptr, ptr @_llgo_error, align 8
  %248 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %250 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 0
  store ptr %250, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 1
  store i64 0, ptr %253, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 2
  store i64 0, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, align 8
  %256 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %257 = getelementptr ptr, ptr %256, i64 0
  store ptr %247, ptr %257, align 8
  %258 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, i32 0, i32 0
  store ptr %256, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, i32 0, i32 1
  store i64 1, ptr %260, align 4
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, i32 0, i32 2
  store i64 1, ptr %261, align 4
  %262 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %258, align 8
  %263 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %255, %"github.com/goplus/llgo/internal/runtime.Slice" %262, i1 false)
  store ptr %263, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %264 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %265 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %265, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %246, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %265, i32 0, i32 1
  store ptr %264, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %265, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %265, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %269, align 8
  %270 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %265, align 8
  %271 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %271, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %246, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %271, i32 0, i32 1
  store ptr %264, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %271, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %271, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %275, align 8
  %276 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %271, align 8
  %277 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %277, i32 0, i32 0
  store ptr @7, ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %277, i32 0, i32 1
  store i64 4, ptr %279, align 4
  %280 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %277, align 8
  %281 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %282 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %282, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %280, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %282, i32 0, i32 1
  store ptr %281, ptr %284, align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %282, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %282, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %286, align 8
  %287 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %282, align 8
  %288 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %280, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 1
  store ptr %281, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %288, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %292, align 8
  %293 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %288, align 8
  %294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %294, i32 0, i32 0
  store ptr @5, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %294, i32 0, i32 1
  store i64 7, ptr %296, align 4
  %297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %294, align 8
  %298 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %299 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %297, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 1
  store ptr %298, ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %303, align 8
  %304 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %299, align 8
  %305 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %297, ptr %306, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 1
  store ptr %298, ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %309, align 8
  %310 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %305, align 8
  %311 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %312 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %276, ptr %312, align 8
  %313 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %293, ptr %313, align 8
  %314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %311, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %310, ptr %314, align 8
  %315 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 0
  store ptr %311, ptr %316, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 1
  store i64 3, ptr %317, align 4
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 2
  store i64 3, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, align 8
  %320 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %321 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %320, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %270, ptr %321, align 8
  %322 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %320, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %287, ptr %322, align 8
  %323 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %320, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %304, ptr %323, align 8
  %324 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %324, i32 0, i32 0
  store ptr %320, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %324, i32 0, i32 1
  store i64 3, ptr %326, align 4
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %324, i32 0, i32 2
  store i64 3, ptr %327, align 4
  %328 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %324, align 8
  %329 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 0
  store ptr @1, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 1
  store i64 4, ptr %331, align 4
  %332 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %329, align 8
  %333 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 0
  store ptr @11, ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %333, i32 0, i32 1
  store i64 22, ptr %335, align 4
  %336 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %333, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %190, %"github.com/goplus/llgo/internal/runtime.String" %332, %"github.com/goplus/llgo/internal/runtime.String" %336, ptr %242, %"github.com/goplus/llgo/internal/runtime.Slice" %319, %"github.com/goplus/llgo/internal/runtime.Slice" %328)
  %337 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %338 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %339 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %340 = icmp eq ptr %339, null
  br i1 %340, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %341 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 0
  store ptr @10, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %341, i32 0, i32 1
  store i64 5, ptr %343, align 4
  %344 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %341, align 8
  %345 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %345, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %344, ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %345, i32 0, i32 1
  store ptr %337, ptr %347, align 8
  %348 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %345, align 8
  %349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 0
  store ptr @7, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 1
  store i64 4, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %349, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %353, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %352, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %353, i32 0, i32 1
  store ptr %338, ptr %355, align 8
  %356 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %353, align 8
  %357 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %358 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %357, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %348, ptr %358, align 8
  %359 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %357, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %356, ptr %359, align 8
  %360 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, i32 0, i32 0
  store ptr %357, ptr %361, align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, i32 0, i32 1
  store i64 2, ptr %362, align 4
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, i32 0, i32 2
  store i64 2, ptr %363, align 4
  %364 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, align 8
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr @1, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 4, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 0
  store ptr null, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 1
  store i64 0, ptr %371, align 4
  %372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %369, align 8
  %373 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %368, %"github.com/goplus/llgo/internal/runtime.String" %372, %"github.com/goplus/llgo/internal/runtime.Slice" %364)
  store ptr %373, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %374 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %374, ptr @_llgo_main.nopCloser, align 8
  %375 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr @10, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 5, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %381 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %379, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 1
  store ptr %380, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %381, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %385, align 8
  %386 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %381, align 8
  %387 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %387, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %379, ptr %388, align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %387, i32 0, i32 1
  store ptr %380, ptr %389, align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %387, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %390, align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %387, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %391, align 8
  %392 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %387, align 8
  %393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %393, i32 0, i32 0
  store ptr @7, ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %393, i32 0, i32 1
  store i64 4, ptr %395, align 4
  %396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %393, align 8
  %397 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %398 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %398, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %396, ptr %399, align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %398, i32 0, i32 1
  store ptr %397, ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %398, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %398, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %402, align 8
  %403 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %398, align 8
  %404 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %396, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 1
  store ptr %397, ptr %406, align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %408, align 8
  %409 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %404, align 8
  %410 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %411 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %392, ptr %411, align 8
  %412 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %409, ptr %412, align 8
  %413 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %413, i32 0, i32 0
  store ptr %410, ptr %414, align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %413, i32 0, i32 1
  store i64 2, ptr %415, align 4
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %413, i32 0, i32 2
  store i64 2, ptr %416, align 4
  %417 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %413, align 8
  %418 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %419 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %386, ptr %419, align 8
  %420 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %403, ptr %420, align 8
  %421 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, i32 0, i32 0
  store ptr %418, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, i32 0, i32 1
  store i64 2, ptr %423, align 4
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, i32 0, i32 2
  store i64 2, ptr %424, align 4
  %425 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, align 8
  %426 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %426, i32 0, i32 0
  store ptr @1, ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %426, i32 0, i32 1
  store i64 4, ptr %428, align 4
  %429 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %426, align 8
  %430 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %430, i32 0, i32 0
  store ptr @12, ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %430, i32 0, i32 1
  store i64 14, ptr %432, align 4
  %433 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %430, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %374, %"github.com/goplus/llgo/internal/runtime.String" %429, %"github.com/goplus/llgo/internal/runtime.String" %433, ptr %375, %"github.com/goplus/llgo/internal/runtime.Slice" %417, %"github.com/goplus/llgo/internal/runtime.Slice" %425)
  %434 = load ptr, ptr @_llgo_string, align 8
  %435 = load ptr, ptr @_llgo_int, align 8
  %436 = load ptr, ptr @_llgo_error, align 8
  %437 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %438 = icmp eq ptr %437, null
  br i1 %438, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %439 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %440 = getelementptr ptr, ptr %439, i64 0
  store ptr %434, ptr %440, align 8
  %441 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 0
  store ptr %439, ptr %442, align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 1
  store i64 1, ptr %443, align 4
  %444 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, i32 0, i32 2
  store i64 1, ptr %444, align 4
  %445 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %441, align 8
  %446 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %447 = getelementptr ptr, ptr %446, i64 0
  store ptr %435, ptr %447, align 8
  %448 = getelementptr ptr, ptr %446, i64 1
  store ptr %436, ptr %448, align 8
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, i32 0, i32 0
  store ptr %446, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, i32 0, i32 1
  store i64 2, ptr %451, align 4
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, i32 0, i32 2
  store i64 2, ptr %452, align 4
  %453 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %449, align 8
  %454 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %445, %"github.com/goplus/llgo/internal/runtime.Slice" %453, i1 false)
  store ptr %454, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %455 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %456 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %457 = icmp eq ptr %456, null
  br i1 %457, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr @13, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 11, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  %462 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %462, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %461, ptr %463, align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %462, i32 0, i32 1
  store ptr %455, ptr %464, align 8
  %465 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %462, align 8
  %466 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %467 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %466, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %465, ptr %467, align 8
  %468 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 0
  store ptr %466, ptr %469, align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 1
  store i64 1, ptr %470, align 4
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, i32 0, i32 2
  store i64 1, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %468, align 8
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 0
  store ptr @1, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 1
  store i64 4, ptr %475, align 4
  %476 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %473, align 8
  %477 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %477, i32 0, i32 0
  store ptr @14, ptr %478, align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %477, i32 0, i32 1
  store i64 17, ptr %479, align 4
  %480 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %477, align 8
  %481 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %476, %"github.com/goplus/llgo/internal/runtime.String" %480, %"github.com/goplus/llgo/internal/runtime.Slice" %472)
  store ptr %481, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %482 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %483 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %484 = icmp eq ptr %483, null
  br i1 %484, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %485 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %485, i32 0, i32 0
  store ptr @13, ptr %486, align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %485, i32 0, i32 1
  store i64 11, ptr %487, align 4
  %488 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %485, align 8
  %489 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %490 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %489, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %488, ptr %490, align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %489, i32 0, i32 1
  store ptr %482, ptr %491, align 8
  %492 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %489, align 8
  %493 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %494 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %493, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %492, ptr %494, align 8
  %495 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %495, i32 0, i32 0
  store ptr %493, ptr %496, align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %495, i32 0, i32 1
  store i64 1, ptr %497, align 4
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %495, i32 0, i32 2
  store i64 1, ptr %498, align 4
  %499 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %495, align 8
  %500 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %500, i32 0, i32 0
  store ptr @1, ptr %501, align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %500, i32 0, i32 1
  store i64 4, ptr %502, align 4
  %503 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %500, align 8
  %504 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %504, i32 0, i32 0
  store ptr null, ptr %505, align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %504, i32 0, i32 1
  store i64 0, ptr %506, align 4
  %507 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %504, align 8
  %508 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %503, %"github.com/goplus/llgo/internal/runtime.String" %507, %"github.com/goplus/llgo/internal/runtime.Slice" %499)
  store ptr %508, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %509 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 10)
  store ptr %509, ptr @_llgo_main.stringReader, align 8
  %510 = load ptr, ptr @_llgo_string, align 8
  %511 = load ptr, ptr @_llgo_int64, align 8
  %512 = load ptr, ptr @_llgo_int, align 8
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 0
  store ptr @18, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 1
  store i64 1, ptr %515, align 4
  %516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %513, align 8
  %517 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %518 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 0
  store ptr null, ptr %518, align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %517, i32 0, i32 1
  store i64 0, ptr %519, align 4
  %520 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %517, align 8
  %521 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %516, ptr %510, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %520, i1 false)
  %522 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 0
  store ptr @19, ptr %523, align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 1
  store i64 1, ptr %524, align 4
  %525 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %522, align 8
  %526 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %526, i32 0, i32 0
  store ptr null, ptr %527, align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %526, i32 0, i32 1
  store i64 0, ptr %528, align 4
  %529 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %526, align 8
  %530 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %525, ptr %511, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %529, i1 false)
  %531 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 0
  store ptr @20, ptr %532, align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 1
  store i64 8, ptr %533, align 4
  %534 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %531, align 8
  %535 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %535, i32 0, i32 0
  store ptr null, ptr %536, align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %535, i32 0, i32 1
  store i64 0, ptr %537, align 4
  %538 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %535, align 8
  %539 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %534, ptr %512, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %538, i1 false)
  %540 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %540, i32 0, i32 0
  store ptr @1, ptr %541, align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %540, i32 0, i32 1
  store i64 4, ptr %542, align 4
  %543 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %540, align 8
  %544 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %545 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %544, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %521, ptr %545, align 8
  %546 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %544, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %530, ptr %546, align 8
  %547 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %544, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %539, ptr %547, align 8
  %548 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %548, i32 0, i32 0
  store ptr %544, ptr %549, align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %548, i32 0, i32 1
  store i64 3, ptr %550, align 4
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %548, i32 0, i32 2
  store i64 3, ptr %551, align 4
  %552 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %548, align 8
  %553 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %543, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %552)
  store ptr %553, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %554 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %555 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %555, i32 0, i32 0
  store ptr @21, ptr %556, align 8
  %557 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %555, i32 0, i32 1
  store i64 3, ptr %557, align 4
  %558 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %555, align 8
  %559 = load ptr, ptr @_llgo_int, align 8
  %560 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %561 = icmp eq ptr %560, null
  br i1 %561, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %562 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %563 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 0
  store ptr %562, ptr %564, align 8
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 1
  store i64 0, ptr %565, align 4
  %566 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, i32 0, i32 2
  store i64 0, ptr %566, align 4
  %567 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %563, align 8
  %568 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %569 = getelementptr ptr, ptr %568, i64 0
  store ptr %559, ptr %569, align 8
  %570 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %570, i32 0, i32 0
  store ptr %568, ptr %571, align 8
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %570, i32 0, i32 1
  store i64 1, ptr %572, align 4
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %570, i32 0, i32 2
  store i64 1, ptr %573, align 4
  %574 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %570, align 8
  %575 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %567, %"github.com/goplus/llgo/internal/runtime.Slice" %574, i1 false)
  store ptr %575, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %576 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %577 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %577, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %558, ptr %578, align 8
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %577, i32 0, i32 1
  store ptr %576, ptr %579, align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %577, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %580, align 8
  %581 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %577, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %581, align 8
  %582 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %577, align 8
  %583 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %583, i32 0, i32 0
  store ptr @7, ptr %584, align 8
  %585 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %583, i32 0, i32 1
  store i64 4, ptr %585, align 4
  %586 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %583, align 8
  %587 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %588 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %588, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %586, ptr %589, align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %588, i32 0, i32 1
  store ptr %587, ptr %590, align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %588, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %591, align 8
  %592 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %588, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %592, align 8
  %593 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %588, align 8
  %594 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %594, i32 0, i32 0
  store ptr @22, ptr %595, align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %594, i32 0, i32 1
  store i64 6, ptr %596, align 4
  %597 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %594, align 8
  %598 = load ptr, ptr @"[]_llgo_byte", align 8
  %599 = load ptr, ptr @_llgo_int64, align 8
  %600 = load ptr, ptr @_llgo_int, align 8
  %601 = load ptr, ptr @_llgo_error, align 8
  %602 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %603 = icmp eq ptr %602, null
  br i1 %603, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %604 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %605 = getelementptr ptr, ptr %604, i64 0
  store ptr %598, ptr %605, align 8
  %606 = getelementptr ptr, ptr %604, i64 1
  store ptr %599, ptr %606, align 8
  %607 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %607, i32 0, i32 0
  store ptr %604, ptr %608, align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %607, i32 0, i32 1
  store i64 2, ptr %609, align 4
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %607, i32 0, i32 2
  store i64 2, ptr %610, align 4
  %611 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %607, align 8
  %612 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %613 = getelementptr ptr, ptr %612, i64 0
  store ptr %600, ptr %613, align 8
  %614 = getelementptr ptr, ptr %612, i64 1
  store ptr %601, ptr %614, align 8
  %615 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %615, i32 0, i32 0
  store ptr %612, ptr %616, align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %615, i32 0, i32 1
  store i64 2, ptr %617, align 4
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %615, i32 0, i32 2
  store i64 2, ptr %618, align 4
  %619 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %615, align 8
  %620 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %611, %"github.com/goplus/llgo/internal/runtime.Slice" %619, i1 false)
  store ptr %620, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %621 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %622 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %597, ptr %623, align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 1
  store ptr %621, ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %625, align 8
  %626 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %622, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %626, align 8
  %627 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %622, align 8
  %628 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 0
  store ptr @23, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %628, i32 0, i32 1
  store i64 8, ptr %630, align 4
  %631 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %628, align 8
  %632 = load ptr, ptr @_llgo_byte, align 8
  %633 = load ptr, ptr @_llgo_error, align 8
  %634 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %635 = icmp eq ptr %634, null
  br i1 %635, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %636 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %637 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %638 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %637, i32 0, i32 0
  store ptr %636, ptr %638, align 8
  %639 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %637, i32 0, i32 1
  store i64 0, ptr %639, align 4
  %640 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %637, i32 0, i32 2
  store i64 0, ptr %640, align 4
  %641 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %637, align 8
  %642 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %643 = getelementptr ptr, ptr %642, i64 0
  store ptr %632, ptr %643, align 8
  %644 = getelementptr ptr, ptr %642, i64 1
  store ptr %633, ptr %644, align 8
  %645 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %646 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, i32 0, i32 0
  store ptr %642, ptr %646, align 8
  %647 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, i32 0, i32 1
  store i64 2, ptr %647, align 4
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, i32 0, i32 2
  store i64 2, ptr %648, align 4
  %649 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %645, align 8
  %650 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %641, %"github.com/goplus/llgo/internal/runtime.Slice" %649, i1 false)
  store ptr %650, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %651 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %652 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %631, ptr %653, align 8
  %654 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 1
  store ptr %651, ptr %654, align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %655, align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %652, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %656, align 8
  %657 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %652, align 8
  %658 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %658, i32 0, i32 0
  store ptr @24, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %658, i32 0, i32 1
  store i64 8, ptr %660, align 4
  %661 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %658, align 8
  %662 = load ptr, ptr @_llgo_rune, align 8
  %663 = icmp eq ptr %662, null
  br i1 %663, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %664 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  store ptr %664, ptr @_llgo_rune, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %664, i32 0, i32 6
  %666 = load i8, ptr %665, align 1
  %667 = or i8 %666, 32
  store i8 %667, ptr %665, align 1
  %668 = load ptr, ptr @_llgo_rune, align 8
  %669 = load ptr, ptr @_llgo_int, align 8
  %670 = load ptr, ptr @_llgo_error, align 8
  %671 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %672 = icmp eq ptr %671, null
  br i1 %672, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %673 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %674 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %675 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, i32 0, i32 0
  store ptr %673, ptr %675, align 8
  %676 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, i32 0, i32 1
  store i64 0, ptr %676, align 4
  %677 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, i32 0, i32 2
  store i64 0, ptr %677, align 4
  %678 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %674, align 8
  %679 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %680 = getelementptr ptr, ptr %679, i64 0
  store ptr %668, ptr %680, align 8
  %681 = getelementptr ptr, ptr %679, i64 1
  store ptr %669, ptr %681, align 8
  %682 = getelementptr ptr, ptr %679, i64 2
  store ptr %670, ptr %682, align 8
  %683 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %684 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %683, i32 0, i32 0
  store ptr %679, ptr %684, align 8
  %685 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %683, i32 0, i32 1
  store i64 3, ptr %685, align 4
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %683, i32 0, i32 2
  store i64 3, ptr %686, align 4
  %687 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %683, align 8
  %688 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %678, %"github.com/goplus/llgo/internal/runtime.Slice" %687, i1 false)
  store ptr %688, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %689 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %690 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %661, ptr %691, align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 1
  store ptr %689, ptr %692, align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %693, align 8
  %694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %690, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %694, align 8
  %695 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %690, align 8
  %696 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %696, i32 0, i32 0
  store ptr @25, ptr %697, align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %696, i32 0, i32 1
  store i64 4, ptr %698, align 4
  %699 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %696, align 8
  %700 = load ptr, ptr @_llgo_int64, align 8
  %701 = load ptr, ptr @_llgo_int, align 8
  %702 = load ptr, ptr @_llgo_int64, align 8
  %703 = load ptr, ptr @_llgo_error, align 8
  %704 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %705 = icmp eq ptr %704, null
  br i1 %705, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %706 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %707 = getelementptr ptr, ptr %706, i64 0
  store ptr %700, ptr %707, align 8
  %708 = getelementptr ptr, ptr %706, i64 1
  store ptr %701, ptr %708, align 8
  %709 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %710 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %709, i32 0, i32 0
  store ptr %706, ptr %710, align 8
  %711 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %709, i32 0, i32 1
  store i64 2, ptr %711, align 4
  %712 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %709, i32 0, i32 2
  store i64 2, ptr %712, align 4
  %713 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %709, align 8
  %714 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %715 = getelementptr ptr, ptr %714, i64 0
  store ptr %702, ptr %715, align 8
  %716 = getelementptr ptr, ptr %714, i64 1
  store ptr %703, ptr %716, align 8
  %717 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %717, i32 0, i32 0
  store ptr %714, ptr %718, align 8
  %719 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %717, i32 0, i32 1
  store i64 2, ptr %719, align 4
  %720 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %717, i32 0, i32 2
  store i64 2, ptr %720, align 4
  %721 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %717, align 8
  %722 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %713, %"github.com/goplus/llgo/internal/runtime.Slice" %721, i1 false)
  store ptr %722, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %723 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %724 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %724, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %699, ptr %725, align 8
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %724, i32 0, i32 1
  store ptr %723, ptr %726, align 8
  %727 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %724, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %727, align 8
  %728 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %724, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %728, align 8
  %729 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %724, align 8
  %730 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %730, i32 0, i32 0
  store ptr @26, ptr %731, align 8
  %732 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %730, i32 0, i32 1
  store i64 4, ptr %732, align 4
  %733 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %730, align 8
  %734 = load ptr, ptr @_llgo_int64, align 8
  %735 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %736 = icmp eq ptr %735, null
  br i1 %736, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %737 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %738 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %739 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %738, i32 0, i32 0
  store ptr %737, ptr %739, align 8
  %740 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %738, i32 0, i32 1
  store i64 0, ptr %740, align 4
  %741 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %738, i32 0, i32 2
  store i64 0, ptr %741, align 4
  %742 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %738, align 8
  %743 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %744 = getelementptr ptr, ptr %743, i64 0
  store ptr %734, ptr %744, align 8
  %745 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %745, i32 0, i32 0
  store ptr %743, ptr %746, align 8
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %745, i32 0, i32 1
  store i64 1, ptr %747, align 4
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %745, i32 0, i32 2
  store i64 1, ptr %748, align 4
  %749 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %745, align 8
  %750 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %742, %"github.com/goplus/llgo/internal/runtime.Slice" %749, i1 false)
  store ptr %750, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %751 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %752 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %733, ptr %753, align 8
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 1
  store ptr %751, ptr %754, align 8
  %755 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %755, align 8
  %756 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %752, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %756, align 8
  %757 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %752, align 8
  %758 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %758, i32 0, i32 0
  store ptr @27, ptr %759, align 8
  %760 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %758, i32 0, i32 1
  store i64 10, ptr %760, align 4
  %761 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %758, align 8
  %762 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %763 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %763, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %761, ptr %764, align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %763, i32 0, i32 1
  store ptr %762, ptr %765, align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %763, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %766, align 8
  %767 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %763, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %767, align 8
  %768 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %763, align 8
  %769 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %770 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %769, i32 0, i32 0
  store ptr @28, ptr %770, align 8
  %771 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %769, i32 0, i32 1
  store i64 10, ptr %771, align 4
  %772 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %769, align 8
  %773 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %774 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %775 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %774, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %772, ptr %775, align 8
  %776 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %774, i32 0, i32 1
  store ptr %773, ptr %776, align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %774, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %777, align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %774, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %778, align 8
  %779 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %774, align 8
  %780 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %781 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %780, i32 0, i32 0
  store ptr @5, ptr %781, align 8
  %782 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %780, i32 0, i32 1
  store i64 7, ptr %782, align 4
  %783 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %780, align 8
  %784 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %785 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %783, ptr %786, align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 1
  store ptr %784, ptr %787, align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %788, align 8
  %789 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %785, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %789, align 8
  %790 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %785, align 8
  %791 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %792 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %582, ptr %792, align 8
  %793 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %593, ptr %793, align 8
  %794 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %627, ptr %794, align 8
  %795 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %657, ptr %795, align 8
  %796 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %695, ptr %796, align 8
  %797 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %729, ptr %797, align 8
  %798 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %757, ptr %798, align 8
  %799 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %768, ptr %799, align 8
  %800 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %779, ptr %800, align 8
  %801 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %790, ptr %801, align 8
  %802 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %803 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %802, i32 0, i32 0
  store ptr %791, ptr %803, align 8
  %804 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %802, i32 0, i32 1
  store i64 10, ptr %804, align 4
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %802, i32 0, i32 2
  store i64 10, ptr %805, align 4
  %806 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %802, align 8
  %807 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %807, i32 0, i32 0
  store ptr @1, ptr %808, align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %807, i32 0, i32 1
  store i64 4, ptr %809, align 4
  %810 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %807, align 8
  %811 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %812 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %811, i32 0, i32 0
  store ptr @29, ptr %812, align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %811, i32 0, i32 1
  store i64 17, ptr %813, align 4
  %814 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %811, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %509, %"github.com/goplus/llgo/internal/runtime.String" %810, %"github.com/goplus/llgo/internal/runtime.String" %814, ptr %554, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %806)
  %815 = load ptr, ptr @_llgo_main.stringReader, align 8
  %816 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %815)
  store ptr %816, ptr @"*_llgo_main.stringReader", align 8
  %817 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %818 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %819 = icmp eq ptr %818, null
  br i1 %819, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %820 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %821 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %820, i32 0, i32 0
  store ptr @7, ptr %821, align 8
  %822 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %820, i32 0, i32 1
  store i64 4, ptr %822, align 4
  %823 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %820, align 8
  %824 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %825 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %824, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %823, ptr %825, align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %824, i32 0, i32 1
  store ptr %817, ptr %826, align 8
  %827 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %824, align 8
  %828 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %829 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %828, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %827, ptr %829, align 8
  %830 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %831 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %830, i32 0, i32 0
  store ptr %828, ptr %831, align 8
  %832 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %830, i32 0, i32 1
  store i64 1, ptr %832, align 4
  %833 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %830, i32 0, i32 2
  store i64 1, ptr %833, align 4
  %834 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %830, align 8
  %835 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %835, i32 0, i32 0
  store ptr @1, ptr %836, align 8
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %835, i32 0, i32 1
  store i64 4, ptr %837, align 4
  %838 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %835, align 8
  %839 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %839, i32 0, i32 0
  store ptr null, ptr %840, align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %839, i32 0, i32 1
  store i64 0, ptr %841, align 4
  %842 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %839, align 8
  %843 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %838, %"github.com/goplus/llgo/internal/runtime.String" %842, %"github.com/goplus/llgo/internal/runtime.Slice" %834)
  store ptr %843, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %844 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %844, ptr @_llgo_main.errorString, align 8
  %845 = load ptr, ptr @_llgo_string, align 8
  %846 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %847 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %846, i32 0, i32 0
  store ptr @18, ptr %847, align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %846, i32 0, i32 1
  store i64 1, ptr %848, align 4
  %849 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %846, align 8
  %850 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %850, i32 0, i32 0
  store ptr null, ptr %851, align 8
  %852 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %850, i32 0, i32 1
  store i64 0, ptr %852, align 4
  %853 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %850, align 8
  %854 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %849, ptr %845, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %853, i1 false)
  %855 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %856 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %855, i32 0, i32 0
  store ptr @1, ptr %856, align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %855, i32 0, i32 1
  store i64 4, ptr %857, align 4
  %858 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %855, align 8
  %859 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %860 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %859, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %854, ptr %860, align 8
  %861 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %861, i32 0, i32 0
  store ptr %859, ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %861, i32 0, i32 1
  store i64 1, ptr %863, align 4
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %861, i32 0, i32 2
  store i64 1, ptr %864, align 4
  %865 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %861, align 8
  %866 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %858, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %865)
  store ptr %866, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %867 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %868 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %868, i32 0, i32 0
  store ptr @0, ptr %869, align 8
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %868, i32 0, i32 1
  store i64 5, ptr %870, align 4
  %871 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %868, align 8
  %872 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %873 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %873, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %871, ptr %874, align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %873, i32 0, i32 1
  store ptr %872, ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %873, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %876, align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %873, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %877, align 8
  %878 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %873, align 8
  %879 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %880 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %878, ptr %880, align 8
  %881 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %881, i32 0, i32 0
  store ptr %879, ptr %882, align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %881, i32 0, i32 1
  store i64 1, ptr %883, align 4
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %881, i32 0, i32 2
  store i64 1, ptr %884, align 4
  %885 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %881, align 8
  %886 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 0
  store ptr @1, ptr %887, align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 1
  store i64 4, ptr %888, align 4
  %889 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %886, align 8
  %890 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %890, i32 0, i32 0
  store ptr @30, ptr %891, align 8
  %892 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %890, i32 0, i32 1
  store i64 16, ptr %892, align 4
  %893 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %890, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %844, %"github.com/goplus/llgo/internal/runtime.String" %889, %"github.com/goplus/llgo/internal/runtime.String" %893, ptr %867, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %885)
  %894 = load ptr, ptr @_llgo_main.errorString, align 8
  %895 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %894)
  store ptr %895, ptr @"*_llgo_main.errorString", align 8
  %896 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %897 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %898 = icmp eq ptr %897, null
  br i1 %898, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %899 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %900 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %899, i32 0, i32 0
  store ptr @0, ptr %900, align 8
  %901 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %899, i32 0, i32 1
  store i64 5, ptr %901, align 4
  %902 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %899, align 8
  %903 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %904 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %903, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %902, ptr %904, align 8
  %905 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %903, i32 0, i32 1
  store ptr %896, ptr %905, align 8
  %906 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %903, align 8
  %907 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %908 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %907, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %906, ptr %908, align 8
  %909 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %909, i32 0, i32 0
  store ptr %907, ptr %910, align 8
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %909, i32 0, i32 1
  store i64 1, ptr %911, align 4
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %909, i32 0, i32 2
  store i64 1, ptr %912, align 4
  %913 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %909, align 8
  %914 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %914, i32 0, i32 0
  store ptr @1, ptr %915, align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %914, i32 0, i32 1
  store i64 4, ptr %916, align 4
  %917 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %914, align 8
  %918 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %919 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %918, i32 0, i32 0
  store ptr null, ptr %919, align 8
  %920 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %918, i32 0, i32 1
  store i64 0, ptr %920, align 4
  %921 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %918, align 8
  %922 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %917, %"github.com/goplus/llgo/internal/runtime.String" %921, %"github.com/goplus/llgo/internal/runtime.Slice" %913)
  store ptr %922, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
