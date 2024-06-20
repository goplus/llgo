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
  store ptr %2, ptr @_llgo_byte, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_byte, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = or i8 %5, 32
  store i8 %6, ptr %4, align 1
  %7 = load ptr, ptr @_llgo_byte, align 8
  %8 = load ptr, ptr @"[]_llgo_byte", align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %7)
  store ptr %10, ptr @"[]_llgo_byte", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %11 = load ptr, ptr @"[]_llgo_byte", align 8
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %14, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %15 = load ptr, ptr @_llgo_int, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %15, i32 0, i32 6
  %17 = load i8, ptr %16, align 1
  %18 = or i8 %17, 32
  store i8 %18, ptr %16, align 1
  %19 = load ptr, ptr @_llgo_int, align 8
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %22, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %23 = load ptr, ptr @_llgo_string, align 8
  %24 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 1
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 2
  store i64 0, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %33 = getelementptr ptr, ptr %32, i64 0
  store ptr %23, ptr %33, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 0
  store ptr %32, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 1
  store i64 1, ptr %36, align 4
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, i32 0, i32 2
  store i64 1, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %34, align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %31, %"github.com/goplus/llgo/internal/runtime.Slice" %38, i1 false)
  store ptr %39, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %40 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %41 = load ptr, ptr @_llgo_error, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @0, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 5, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %47, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %46, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %47, i32 0, i32 1
  store ptr %40, ptr %49, align 8
  %50 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %52 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %51, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %50, ptr %52, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 0
  store ptr %51, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 1
  store i64 1, ptr %55, align 4
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, i32 0, i32 2
  store i64 1, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %53, align 8
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 0
  store ptr @1, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %58, i32 0, i32 1
  store i64 4, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %58, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @2, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 5, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %61, %"github.com/goplus/llgo/internal/runtime.String" %65, %"github.com/goplus/llgo/internal/runtime.Slice" %57)
  store ptr %66, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %67 = load ptr, ptr @_llgo_error, align 8
  %68 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %71 = getelementptr ptr, ptr %70, i64 0
  store ptr %11, ptr %71, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 0
  store ptr %70, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 1
  store i64 1, ptr %74, align 4
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, i32 0, i32 2
  store i64 1, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %72, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %78 = getelementptr ptr, ptr %77, i64 0
  store ptr %19, ptr %78, align 8
  %79 = getelementptr ptr, ptr %77, i64 1
  store ptr %67, ptr %79, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 0
  store ptr %77, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 1
  store i64 2, ptr %82, align 4
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, i32 0, i32 2
  store i64 2, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %80, align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %76, %"github.com/goplus/llgo/internal/runtime.Slice" %84, i1 false)
  store ptr %85, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %86 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %87 = load ptr, ptr @_llgo_main.Writer, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @3, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 5, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %92, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, i32 0, i32 1
  store ptr %86, ptr %95, align 8
  %96 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %98 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %97, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %96, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 0
  store ptr %97, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 1
  store i64 1, ptr %101, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 2
  store i64 1, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr @1, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 4, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr @4, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 11, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %107, %"github.com/goplus/llgo/internal/runtime.String" %111, %"github.com/goplus/llgo/internal/runtime.Slice" %103)
  store ptr %112, ptr @_llgo_main.Writer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %113 = load ptr, ptr @_llgo_main.Writer, align 8
  %114 = load ptr, ptr @_llgo_int64, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  store ptr %116, ptr @_llgo_int64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %117 = load ptr, ptr @_llgo_int64, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %117, i32 0, i32 6
  %119 = load i8, ptr %118, align 1
  %120 = or i8 %119, 32
  store i8 %120, ptr %118, align 1
  %121 = load ptr, ptr @_llgo_int64, align 8
  %122 = load ptr, ptr @_llgo_error, align 8
  %123 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %126 = getelementptr ptr, ptr %125, i64 0
  store ptr %113, ptr %126, align 8
  %127 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %127, i32 0, i32 0
  store ptr %125, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %127, i32 0, i32 1
  store i64 1, ptr %129, align 4
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %127, i32 0, i32 2
  store i64 1, ptr %130, align 4
  %131 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %127, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %133 = getelementptr ptr, ptr %132, i64 0
  store ptr %121, ptr %133, align 8
  %134 = getelementptr ptr, ptr %132, i64 1
  store ptr %122, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %132, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 2, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 2, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %131, %"github.com/goplus/llgo/internal/runtime.Slice" %139, i1 false)
  store ptr %140, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %141 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %142 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @5, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 7, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %148, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %147, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %148, i32 0, i32 1
  store ptr %141, ptr %150, align 8
  %151 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %153 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %152, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %151, ptr %153, align 8
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %154, i32 0, i32 0
  store ptr %152, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %154, i32 0, i32 1
  store i64 1, ptr %156, align 4
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %154, i32 0, i32 2
  store i64 1, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %154, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr @1, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 4, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 0
  store ptr @6, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 1
  store i64 13, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %163, align 8
  %167 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %162, %"github.com/goplus/llgo/internal/runtime.String" %166, %"github.com/goplus/llgo/internal/runtime.Slice" %158)
  store ptr %167, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
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
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 3, i64 3)
  store ptr %195, ptr @_llgo_main.nopCloserWriterTo, align 8
  %196 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %197 = load ptr, ptr @_llgo_main.Reader, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr @7, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 4, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  %203 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %203, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %202, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %203, i32 0, i32 1
  store ptr %196, ptr %205, align 8
  %206 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %203, align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %208 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %207, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %206, ptr %208, align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, i32 0, i32 0
  store ptr %207, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, i32 0, i32 1
  store i64 1, ptr %211, align 4
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, i32 0, i32 2
  store i64 1, ptr %212, align 4
  %213 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %209, align 8
  %214 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 0
  store ptr @1, ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 1
  store i64 4, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %214, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr @8, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 11, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %217, %"github.com/goplus/llgo/internal/runtime.String" %221, %"github.com/goplus/llgo/internal/runtime.Slice" %213)
  store ptr %222, ptr @_llgo_main.Reader, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %223 = load ptr, ptr @_llgo_main.Reader, align 8
  %224 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @9, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 6, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 0
  store ptr null, ptr %231, align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %230, i32 0, i32 1
  store i64 0, ptr %232, align 4
  %233 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %230, align 8
  %234 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %229, ptr %223, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %233, i1 true)
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @1, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 4, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %240 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %239, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %234, ptr %240, align 8
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, i32 0, i32 0
  store ptr %239, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, i32 0, i32 1
  store i64 1, ptr %243, align 4
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, i32 0, i32 2
  store i64 1, ptr %244, align 4
  %245 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %241, align 8
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %238, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %245)
  store ptr %246, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %247 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr @10, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 5, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = load ptr, ptr @_llgo_error, align 8
  %253 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %254 = icmp eq ptr %253, null
  br i1 %254, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %255 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, i32 0, i32 0
  store ptr %255, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, i32 0, i32 1
  store i64 0, ptr %258, align 4
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, i32 0, i32 2
  store i64 0, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %256, align 8
  %261 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %262 = getelementptr ptr, ptr %261, i64 0
  store ptr %252, ptr %262, align 8
  %263 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, i32 0, i32 0
  store ptr %261, ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, i32 0, i32 1
  store i64 1, ptr %265, align 4
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, i32 0, i32 2
  store i64 1, ptr %266, align 4
  %267 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %263, align 8
  %268 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %260, %"github.com/goplus/llgo/internal/runtime.Slice" %267, i1 false)
  store ptr %268, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %269 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %270 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %251, ptr %271, align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 1
  store ptr %269, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %274, align 8
  %275 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %270, align 8
  %276 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %276, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %251, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %276, i32 0, i32 1
  store ptr %269, ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %276, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %276, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %280, align 8
  %281 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %276, align 8
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 0
  store ptr @7, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 1
  store i64 4, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %282, align 8
  %286 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %287 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %285, ptr %288, align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 1
  store ptr %286, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %287, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %291, align 8
  %292 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %287, align 8
  %293 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %285, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 1
  store ptr %286, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %293, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %297, align 8
  %298 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %293, align 8
  %299 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %299, i32 0, i32 0
  store ptr @5, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %299, i32 0, i32 1
  store i64 7, ptr %301, align 4
  %302 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %299, align 8
  %303 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %304 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %302, ptr %305, align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i32 0, i32 1
  store ptr %303, ptr %306, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %307, align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %304, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %308, align 8
  %309 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %304, align 8
  %310 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %310, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %302, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %310, i32 0, i32 1
  store ptr %303, ptr %312, align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %310, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %310, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %314, align 8
  %315 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %310, align 8
  %316 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %317 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %316, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %281, ptr %317, align 8
  %318 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %316, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %298, ptr %318, align 8
  %319 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %316, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %315, ptr %319, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, i32 0, i32 0
  store ptr %316, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, i32 0, i32 1
  store i64 3, ptr %322, align 4
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, i32 0, i32 2
  store i64 3, ptr %323, align 4
  %324 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, align 8
  %325 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %326 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %325, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %275, ptr %326, align 8
  %327 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %325, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %292, ptr %327, align 8
  %328 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %325, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %309, ptr %328, align 8
  %329 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %329, i32 0, i32 0
  store ptr %325, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %329, i32 0, i32 1
  store i64 3, ptr %331, align 4
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %329, i32 0, i32 2
  store i64 3, ptr %332, align 4
  %333 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %329, align 8
  %334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 0
  store ptr @1, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 1
  store i64 4, ptr %336, align 4
  %337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %334, align 8
  %338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 0
  store ptr @11, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 1
  store i64 22, ptr %340, align 4
  %341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %338, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %195, %"github.com/goplus/llgo/internal/runtime.String" %337, %"github.com/goplus/llgo/internal/runtime.String" %341, ptr %247, %"github.com/goplus/llgo/internal/runtime.Slice" %324, %"github.com/goplus/llgo/internal/runtime.Slice" %333)
  %342 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %343 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %344 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %346 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 0
  store ptr @10, ptr %347, align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %346, i32 0, i32 1
  store i64 5, ptr %348, align 4
  %349 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %346, align 8
  %350 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %350, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %349, ptr %351, align 8
  %352 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %350, i32 0, i32 1
  store ptr %342, ptr %352, align 8
  %353 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %350, align 8
  %354 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %354, i32 0, i32 0
  store ptr @7, ptr %355, align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %354, i32 0, i32 1
  store i64 4, ptr %356, align 4
  %357 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %354, align 8
  %358 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %358, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %357, ptr %359, align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %358, i32 0, i32 1
  store ptr %343, ptr %360, align 8
  %361 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %358, align 8
  %362 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %363 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %362, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %353, ptr %363, align 8
  %364 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %362, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %361, ptr %364, align 8
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 0
  store ptr %362, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 1
  store i64 2, ptr %367, align 4
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, i32 0, i32 2
  store i64 2, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %365, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr @1, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 4, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  %374 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 0
  store ptr null, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 1
  store i64 0, ptr %376, align 4
  %377 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %374, align 8
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %373, %"github.com/goplus/llgo/internal/runtime.String" %377, %"github.com/goplus/llgo/internal/runtime.Slice" %369)
  store ptr %378, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %379 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %379, ptr @_llgo_main.nopCloser, align 8
  %380 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %381 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 0
  store ptr @10, ptr %382, align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %381, i32 0, i32 1
  store i64 5, ptr %383, align 4
  %384 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %381, align 8
  %385 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %386 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %386, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %384, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %386, i32 0, i32 1
  store ptr %385, ptr %388, align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %386, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %389, align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %386, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %390, align 8
  %391 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %386, align 8
  %392 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %392, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %384, ptr %393, align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %392, i32 0, i32 1
  store ptr %385, ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %392, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %395, align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %392, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %396, align 8
  %397 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %392, align 8
  %398 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %398, i32 0, i32 0
  store ptr @7, ptr %399, align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %398, i32 0, i32 1
  store i64 4, ptr %400, align 4
  %401 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %398, align 8
  %402 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %403 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %403, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %401, ptr %404, align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %403, i32 0, i32 1
  store ptr %402, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %403, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %406, align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %403, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %407, align 8
  %408 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %403, align 8
  %409 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %401, ptr %410, align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 1
  store ptr %402, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %412, align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %409, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %413, align 8
  %414 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %409, align 8
  %415 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %416 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %397, ptr %416, align 8
  %417 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %414, ptr %417, align 8
  %418 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, i32 0, i32 0
  store ptr %415, ptr %419, align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, i32 0, i32 1
  store i64 2, ptr %420, align 4
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, i32 0, i32 2
  store i64 2, ptr %421, align 4
  %422 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %418, align 8
  %423 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %424 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %423, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %391, ptr %424, align 8
  %425 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %423, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %408, ptr %425, align 8
  %426 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %426, i32 0, i32 0
  store ptr %423, ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %426, i32 0, i32 1
  store i64 2, ptr %428, align 4
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %426, i32 0, i32 2
  store i64 2, ptr %429, align 4
  %430 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %426, align 8
  %431 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %431, i32 0, i32 0
  store ptr @1, ptr %432, align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %431, i32 0, i32 1
  store i64 4, ptr %433, align 4
  %434 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %431, align 8
  %435 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %435, i32 0, i32 0
  store ptr @12, ptr %436, align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %435, i32 0, i32 1
  store i64 14, ptr %437, align 4
  %438 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %435, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %379, %"github.com/goplus/llgo/internal/runtime.String" %434, %"github.com/goplus/llgo/internal/runtime.String" %438, ptr %380, %"github.com/goplus/llgo/internal/runtime.Slice" %422, %"github.com/goplus/llgo/internal/runtime.Slice" %430)
  %439 = load ptr, ptr @_llgo_string, align 8
  %440 = load ptr, ptr @_llgo_int, align 8
  %441 = load ptr, ptr @_llgo_error, align 8
  %442 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %443 = icmp eq ptr %442, null
  br i1 %443, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %444 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %445 = getelementptr ptr, ptr %444, i64 0
  store ptr %439, ptr %445, align 8
  %446 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 0
  store ptr %444, ptr %447, align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 1
  store i64 1, ptr %448, align 4
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 2
  store i64 1, ptr %449, align 4
  %450 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, align 8
  %451 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %452 = getelementptr ptr, ptr %451, i64 0
  store ptr %440, ptr %452, align 8
  %453 = getelementptr ptr, ptr %451, i64 1
  store ptr %441, ptr %453, align 8
  %454 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %454, i32 0, i32 0
  store ptr %451, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %454, i32 0, i32 1
  store i64 2, ptr %456, align 4
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %454, i32 0, i32 2
  store i64 2, ptr %457, align 4
  %458 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %454, align 8
  %459 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %450, %"github.com/goplus/llgo/internal/runtime.Slice" %458, i1 false)
  store ptr %459, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %460 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %461 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %462 = icmp eq ptr %461, null
  br i1 %462, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %463 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %463, i32 0, i32 0
  store ptr @13, ptr %464, align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %463, i32 0, i32 1
  store i64 11, ptr %465, align 4
  %466 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %463, align 8
  %467 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %467, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %466, ptr %468, align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %467, i32 0, i32 1
  store ptr %460, ptr %469, align 8
  %470 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %467, align 8
  %471 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %472 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %471, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %470, ptr %472, align 8
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 0
  store ptr %471, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 1
  store i64 1, ptr %475, align 4
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 2
  store i64 1, ptr %476, align 4
  %477 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, align 8
  %478 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 0
  store ptr @1, ptr %479, align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 1
  store i64 4, ptr %480, align 4
  %481 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %478, align 8
  %482 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 0
  store ptr @14, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 1
  store i64 17, ptr %484, align 4
  %485 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %482, align 8
  %486 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %481, %"github.com/goplus/llgo/internal/runtime.String" %485, %"github.com/goplus/llgo/internal/runtime.Slice" %477)
  store ptr %486, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %487 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %488 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %489 = icmp eq ptr %488, null
  br i1 %489, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %490 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %490, i32 0, i32 0
  store ptr @13, ptr %491, align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %490, i32 0, i32 1
  store i64 11, ptr %492, align 4
  %493 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %490, align 8
  %494 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %494, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %493, ptr %495, align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %494, i32 0, i32 1
  store ptr %487, ptr %496, align 8
  %497 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %494, align 8
  %498 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %499 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %498, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %497, ptr %499, align 8
  %500 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, i32 0, i32 0
  store ptr %498, ptr %501, align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, i32 0, i32 1
  store i64 1, ptr %502, align 4
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, i32 0, i32 2
  store i64 1, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %500, align 8
  %505 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %505, i32 0, i32 0
  store ptr @1, ptr %506, align 8
  %507 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %505, i32 0, i32 1
  store i64 4, ptr %507, align 4
  %508 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %505, align 8
  %509 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %509, i32 0, i32 0
  store ptr null, ptr %510, align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %509, i32 0, i32 1
  store i64 0, ptr %511, align 4
  %512 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %509, align 8
  %513 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %508, %"github.com/goplus/llgo/internal/runtime.String" %512, %"github.com/goplus/llgo/internal/runtime.Slice" %504)
  store ptr %513, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %514 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 10)
  store ptr %514, ptr @_llgo_main.stringReader, align 8
  %515 = load ptr, ptr @_llgo_string, align 8
  %516 = load ptr, ptr @_llgo_int64, align 8
  %517 = load ptr, ptr @_llgo_int, align 8
  %518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 0
  store ptr @18, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 1
  store i64 1, ptr %520, align 4
  %521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %518, align 8
  %522 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 0
  store ptr null, ptr %523, align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 1
  store i64 0, ptr %524, align 4
  %525 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %522, align 8
  %526 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %521, ptr %515, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %525, i1 false)
  %527 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %528 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 0
  store ptr @19, ptr %528, align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %527, i32 0, i32 1
  store i64 1, ptr %529, align 4
  %530 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %527, align 8
  %531 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 0
  store ptr null, ptr %532, align 8
  %533 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %531, i32 0, i32 1
  store i64 0, ptr %533, align 4
  %534 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %531, align 8
  %535 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %530, ptr %516, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %534, i1 false)
  %536 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %537 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %536, i32 0, i32 0
  store ptr @20, ptr %537, align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %536, i32 0, i32 1
  store i64 8, ptr %538, align 4
  %539 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %536, align 8
  %540 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %540, i32 0, i32 0
  store ptr null, ptr %541, align 8
  %542 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %540, i32 0, i32 1
  store i64 0, ptr %542, align 4
  %543 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %540, align 8
  %544 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %539, ptr %517, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %543, i1 false)
  %545 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %546 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 0
  store ptr @1, ptr %546, align 8
  %547 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %545, i32 0, i32 1
  store i64 4, ptr %547, align 4
  %548 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %545, align 8
  %549 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %550 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %549, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %526, ptr %550, align 8
  %551 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %549, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %535, ptr %551, align 8
  %552 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %549, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %544, ptr %552, align 8
  %553 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %553, i32 0, i32 0
  store ptr %549, ptr %554, align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %553, i32 0, i32 1
  store i64 3, ptr %555, align 4
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %553, i32 0, i32 2
  store i64 3, ptr %556, align 4
  %557 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %553, align 8
  %558 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %548, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %557)
  store ptr %558, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %559 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %560 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %561 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %560, i32 0, i32 0
  store ptr @21, ptr %561, align 8
  %562 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %560, i32 0, i32 1
  store i64 3, ptr %562, align 4
  %563 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %560, align 8
  %564 = load ptr, ptr @_llgo_int, align 8
  %565 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %566 = icmp eq ptr %565, null
  br i1 %566, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %567 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %568 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, i32 0, i32 0
  store ptr %567, ptr %569, align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, i32 0, i32 1
  store i64 0, ptr %570, align 4
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, i32 0, i32 2
  store i64 0, ptr %571, align 4
  %572 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %568, align 8
  %573 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %574 = getelementptr ptr, ptr %573, i64 0
  store ptr %564, ptr %574, align 8
  %575 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %576 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %575, i32 0, i32 0
  store ptr %573, ptr %576, align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %575, i32 0, i32 1
  store i64 1, ptr %577, align 4
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %575, i32 0, i32 2
  store i64 1, ptr %578, align 4
  %579 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %575, align 8
  %580 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %572, %"github.com/goplus/llgo/internal/runtime.Slice" %579, i1 false)
  store ptr %580, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %581 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %582 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %582, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %563, ptr %583, align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %582, i32 0, i32 1
  store ptr %581, ptr %584, align 8
  %585 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %582, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %585, align 8
  %586 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %582, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %586, align 8
  %587 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %582, align 8
  %588 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %588, i32 0, i32 0
  store ptr @7, ptr %589, align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %588, i32 0, i32 1
  store i64 4, ptr %590, align 4
  %591 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %588, align 8
  %592 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %593 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %593, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %591, ptr %594, align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %593, i32 0, i32 1
  store ptr %592, ptr %595, align 8
  %596 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %593, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %596, align 8
  %597 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %593, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %597, align 8
  %598 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %593, align 8
  %599 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %600 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %599, i32 0, i32 0
  store ptr @22, ptr %600, align 8
  %601 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %599, i32 0, i32 1
  store i64 6, ptr %601, align 4
  %602 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %599, align 8
  %603 = load ptr, ptr @"[]_llgo_byte", align 8
  %604 = load ptr, ptr @_llgo_int64, align 8
  %605 = load ptr, ptr @_llgo_int, align 8
  %606 = load ptr, ptr @_llgo_error, align 8
  %607 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %608 = icmp eq ptr %607, null
  br i1 %608, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %609 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %610 = getelementptr ptr, ptr %609, i64 0
  store ptr %603, ptr %610, align 8
  %611 = getelementptr ptr, ptr %609, i64 1
  store ptr %604, ptr %611, align 8
  %612 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %613 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %612, i32 0, i32 0
  store ptr %609, ptr %613, align 8
  %614 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %612, i32 0, i32 1
  store i64 2, ptr %614, align 4
  %615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %612, i32 0, i32 2
  store i64 2, ptr %615, align 4
  %616 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %612, align 8
  %617 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %618 = getelementptr ptr, ptr %617, i64 0
  store ptr %605, ptr %618, align 8
  %619 = getelementptr ptr, ptr %617, i64 1
  store ptr %606, ptr %619, align 8
  %620 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %621 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %620, i32 0, i32 0
  store ptr %617, ptr %621, align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %620, i32 0, i32 1
  store i64 2, ptr %622, align 4
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %620, i32 0, i32 2
  store i64 2, ptr %623, align 4
  %624 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %620, align 8
  %625 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %616, %"github.com/goplus/llgo/internal/runtime.Slice" %624, i1 false)
  store ptr %625, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %626 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %627 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %602, ptr %628, align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 1
  store ptr %626, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %630, align 8
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %631, align 8
  %632 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %627, align 8
  %633 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 0
  store ptr @23, ptr %634, align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 1
  store i64 8, ptr %635, align 4
  %636 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %633, align 8
  %637 = load ptr, ptr @_llgo_byte, align 8
  %638 = load ptr, ptr @_llgo_error, align 8
  %639 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %640 = icmp eq ptr %639, null
  br i1 %640, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %641 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %642 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %643 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, i32 0, i32 0
  store ptr %641, ptr %643, align 8
  %644 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, i32 0, i32 1
  store i64 0, ptr %644, align 4
  %645 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, i32 0, i32 2
  store i64 0, ptr %645, align 4
  %646 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %642, align 8
  %647 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %648 = getelementptr ptr, ptr %647, i64 0
  store ptr %637, ptr %648, align 8
  %649 = getelementptr ptr, ptr %647, i64 1
  store ptr %638, ptr %649, align 8
  %650 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %651 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %650, i32 0, i32 0
  store ptr %647, ptr %651, align 8
  %652 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %650, i32 0, i32 1
  store i64 2, ptr %652, align 4
  %653 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %650, i32 0, i32 2
  store i64 2, ptr %653, align 4
  %654 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %650, align 8
  %655 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %646, %"github.com/goplus/llgo/internal/runtime.Slice" %654, i1 false)
  store ptr %655, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %656 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %657 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %636, ptr %658, align 8
  %659 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 1
  store ptr %656, ptr %659, align 8
  %660 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %660, align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %657, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %661, align 8
  %662 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %657, align 8
  %663 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %663, i32 0, i32 0
  store ptr @24, ptr %664, align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %663, i32 0, i32 1
  store i64 8, ptr %665, align 4
  %666 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %663, align 8
  %667 = load ptr, ptr @_llgo_rune, align 8
  %668 = icmp eq ptr %667, null
  br i1 %668, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %669 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  store ptr %669, ptr @_llgo_rune, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %670 = load ptr, ptr @_llgo_rune, align 8
  %671 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %670, i32 0, i32 6
  %672 = load i8, ptr %671, align 1
  %673 = or i8 %672, 32
  store i8 %673, ptr %671, align 1
  %674 = load ptr, ptr @_llgo_rune, align 8
  %675 = load ptr, ptr @_llgo_int, align 8
  %676 = load ptr, ptr @_llgo_error, align 8
  %677 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %678 = icmp eq ptr %677, null
  br i1 %678, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %679 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %680 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %681 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %680, i32 0, i32 0
  store ptr %679, ptr %681, align 8
  %682 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %680, i32 0, i32 1
  store i64 0, ptr %682, align 4
  %683 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %680, i32 0, i32 2
  store i64 0, ptr %683, align 4
  %684 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %680, align 8
  %685 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %686 = getelementptr ptr, ptr %685, i64 0
  store ptr %674, ptr %686, align 8
  %687 = getelementptr ptr, ptr %685, i64 1
  store ptr %675, ptr %687, align 8
  %688 = getelementptr ptr, ptr %685, i64 2
  store ptr %676, ptr %688, align 8
  %689 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %690 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %689, i32 0, i32 0
  store ptr %685, ptr %690, align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %689, i32 0, i32 1
  store i64 3, ptr %691, align 4
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %689, i32 0, i32 2
  store i64 3, ptr %692, align 4
  %693 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %689, align 8
  %694 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %684, %"github.com/goplus/llgo/internal/runtime.Slice" %693, i1 false)
  store ptr %694, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %695 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %696 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %697 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %666, ptr %697, align 8
  %698 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 1
  store ptr %695, ptr %698, align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %699, align 8
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %696, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %700, align 8
  %701 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %696, align 8
  %702 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %703 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %702, i32 0, i32 0
  store ptr @25, ptr %703, align 8
  %704 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %702, i32 0, i32 1
  store i64 4, ptr %704, align 4
  %705 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %702, align 8
  %706 = load ptr, ptr @_llgo_int64, align 8
  %707 = load ptr, ptr @_llgo_int, align 8
  %708 = load ptr, ptr @_llgo_int64, align 8
  %709 = load ptr, ptr @_llgo_error, align 8
  %710 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %711 = icmp eq ptr %710, null
  br i1 %711, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %712 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %713 = getelementptr ptr, ptr %712, i64 0
  store ptr %706, ptr %713, align 8
  %714 = getelementptr ptr, ptr %712, i64 1
  store ptr %707, ptr %714, align 8
  %715 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %716 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %715, i32 0, i32 0
  store ptr %712, ptr %716, align 8
  %717 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %715, i32 0, i32 1
  store i64 2, ptr %717, align 4
  %718 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %715, i32 0, i32 2
  store i64 2, ptr %718, align 4
  %719 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %715, align 8
  %720 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %721 = getelementptr ptr, ptr %720, i64 0
  store ptr %708, ptr %721, align 8
  %722 = getelementptr ptr, ptr %720, i64 1
  store ptr %709, ptr %722, align 8
  %723 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %723, i32 0, i32 0
  store ptr %720, ptr %724, align 8
  %725 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %723, i32 0, i32 1
  store i64 2, ptr %725, align 4
  %726 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %723, i32 0, i32 2
  store i64 2, ptr %726, align 4
  %727 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %723, align 8
  %728 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %719, %"github.com/goplus/llgo/internal/runtime.Slice" %727, i1 false)
  store ptr %728, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %729 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %730 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %705, ptr %731, align 8
  %732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 1
  store ptr %729, ptr %732, align 8
  %733 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %733, align 8
  %734 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %730, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %734, align 8
  %735 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %730, align 8
  %736 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %737 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %736, i32 0, i32 0
  store ptr @26, ptr %737, align 8
  %738 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %736, i32 0, i32 1
  store i64 4, ptr %738, align 4
  %739 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %736, align 8
  %740 = load ptr, ptr @_llgo_int64, align 8
  %741 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %742 = icmp eq ptr %741, null
  br i1 %742, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %743 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %744 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %745 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, i32 0, i32 0
  store ptr %743, ptr %745, align 8
  %746 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, i32 0, i32 1
  store i64 0, ptr %746, align 4
  %747 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, i32 0, i32 2
  store i64 0, ptr %747, align 4
  %748 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %744, align 8
  %749 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %750 = getelementptr ptr, ptr %749, i64 0
  store ptr %740, ptr %750, align 8
  %751 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %752 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %751, i32 0, i32 0
  store ptr %749, ptr %752, align 8
  %753 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %751, i32 0, i32 1
  store i64 1, ptr %753, align 4
  %754 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %751, i32 0, i32 2
  store i64 1, ptr %754, align 4
  %755 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %751, align 8
  %756 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %748, %"github.com/goplus/llgo/internal/runtime.Slice" %755, i1 false)
  store ptr %756, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %757 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %758 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %759 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %758, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %739, ptr %759, align 8
  %760 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %758, i32 0, i32 1
  store ptr %757, ptr %760, align 8
  %761 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %758, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %761, align 8
  %762 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %758, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %762, align 8
  %763 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %758, align 8
  %764 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %764, i32 0, i32 0
  store ptr @27, ptr %765, align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %764, i32 0, i32 1
  store i64 10, ptr %766, align 4
  %767 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %764, align 8
  %768 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %769 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %770 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %769, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %767, ptr %770, align 8
  %771 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %769, i32 0, i32 1
  store ptr %768, ptr %771, align 8
  %772 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %769, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %772, align 8
  %773 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %769, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %773, align 8
  %774 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %769, align 8
  %775 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %776 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %775, i32 0, i32 0
  store ptr @28, ptr %776, align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %775, i32 0, i32 1
  store i64 10, ptr %777, align 4
  %778 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %775, align 8
  %779 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %780 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %781 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %780, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %778, ptr %781, align 8
  %782 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %780, i32 0, i32 1
  store ptr %779, ptr %782, align 8
  %783 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %780, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %783, align 8
  %784 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %780, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %784, align 8
  %785 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %780, align 8
  %786 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %787 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %786, i32 0, i32 0
  store ptr @5, ptr %787, align 8
  %788 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %786, i32 0, i32 1
  store i64 7, ptr %788, align 4
  %789 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %786, align 8
  %790 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %791 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %789, ptr %792, align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i32 0, i32 1
  store ptr %790, ptr %793, align 8
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %794, align 8
  %795 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %791, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %795, align 8
  %796 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %791, align 8
  %797 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %798 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %587, ptr %798, align 8
  %799 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %598, ptr %799, align 8
  %800 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %632, ptr %800, align 8
  %801 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %662, ptr %801, align 8
  %802 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %701, ptr %802, align 8
  %803 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %735, ptr %803, align 8
  %804 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %763, ptr %804, align 8
  %805 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %774, ptr %805, align 8
  %806 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %785, ptr %806, align 8
  %807 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %797, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %796, ptr %807, align 8
  %808 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %808, i32 0, i32 0
  store ptr %797, ptr %809, align 8
  %810 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %808, i32 0, i32 1
  store i64 10, ptr %810, align 4
  %811 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %808, i32 0, i32 2
  store i64 10, ptr %811, align 4
  %812 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %808, align 8
  %813 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %813, i32 0, i32 0
  store ptr @1, ptr %814, align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %813, i32 0, i32 1
  store i64 4, ptr %815, align 4
  %816 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %813, align 8
  %817 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %818 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %817, i32 0, i32 0
  store ptr @29, ptr %818, align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %817, i32 0, i32 1
  store i64 17, ptr %819, align 4
  %820 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %817, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %514, %"github.com/goplus/llgo/internal/runtime.String" %816, %"github.com/goplus/llgo/internal/runtime.String" %820, ptr %559, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %812)
  %821 = load ptr, ptr @_llgo_main.stringReader, align 8
  %822 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %821)
  store ptr %822, ptr @"*_llgo_main.stringReader", align 8
  %823 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %824 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %825 = icmp eq ptr %824, null
  br i1 %825, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %826 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %826, i32 0, i32 0
  store ptr @7, ptr %827, align 8
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %826, i32 0, i32 1
  store i64 4, ptr %828, align 4
  %829 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %826, align 8
  %830 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %831 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %830, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %829, ptr %831, align 8
  %832 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %830, i32 0, i32 1
  store ptr %823, ptr %832, align 8
  %833 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %830, align 8
  %834 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %835 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %834, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %833, ptr %835, align 8
  %836 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %837 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %836, i32 0, i32 0
  store ptr %834, ptr %837, align 8
  %838 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %836, i32 0, i32 1
  store i64 1, ptr %838, align 4
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %836, i32 0, i32 2
  store i64 1, ptr %839, align 4
  %840 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %836, align 8
  %841 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 0
  store ptr @1, ptr %842, align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %841, i32 0, i32 1
  store i64 4, ptr %843, align 4
  %844 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %841, align 8
  %845 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %846 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %845, i32 0, i32 0
  store ptr null, ptr %846, align 8
  %847 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %845, i32 0, i32 1
  store i64 0, ptr %847, align 4
  %848 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %845, align 8
  %849 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %844, %"github.com/goplus/llgo/internal/runtime.String" %848, %"github.com/goplus/llgo/internal/runtime.Slice" %840)
  store ptr %849, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %850 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  store ptr %850, ptr @_llgo_main.errorString, align 8
  %851 = load ptr, ptr @_llgo_string, align 8
  %852 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %852, i32 0, i32 0
  store ptr @18, ptr %853, align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %852, i32 0, i32 1
  store i64 1, ptr %854, align 4
  %855 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %852, align 8
  %856 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 0
  store ptr null, ptr %857, align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 1
  store i64 0, ptr %858, align 4
  %859 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %856, align 8
  %860 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %855, ptr %851, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %859, i1 false)
  %861 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %862 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %861, i32 0, i32 0
  store ptr @1, ptr %862, align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %861, i32 0, i32 1
  store i64 4, ptr %863, align 4
  %864 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %861, align 8
  %865 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %866 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %865, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %860, ptr %866, align 8
  %867 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 0
  store ptr %865, ptr %868, align 8
  %869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 1
  store i64 1, ptr %869, align 4
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, i32 0, i32 2
  store i64 1, ptr %870, align 4
  %871 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %867, align 8
  %872 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %864, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %871)
  store ptr %872, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %873 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %874 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 0
  store ptr @0, ptr %875, align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %874, i32 0, i32 1
  store i64 5, ptr %876, align 4
  %877 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %874, align 8
  %878 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %879 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %880 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %877, ptr %880, align 8
  %881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 1
  store ptr %878, ptr %881, align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %882, align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %879, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %883, align 8
  %884 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %879, align 8
  %885 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %886 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %885, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %884, ptr %886, align 8
  %887 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %887, i32 0, i32 0
  store ptr %885, ptr %888, align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %887, i32 0, i32 1
  store i64 1, ptr %889, align 4
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %887, i32 0, i32 2
  store i64 1, ptr %890, align 4
  %891 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %887, align 8
  %892 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %892, i32 0, i32 0
  store ptr @1, ptr %893, align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %892, i32 0, i32 1
  store i64 4, ptr %894, align 4
  %895 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %892, align 8
  %896 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %897 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %896, i32 0, i32 0
  store ptr @30, ptr %897, align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %896, i32 0, i32 1
  store i64 16, ptr %898, align 4
  %899 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %896, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %850, %"github.com/goplus/llgo/internal/runtime.String" %895, %"github.com/goplus/llgo/internal/runtime.String" %899, ptr %873, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %891)
  %900 = load ptr, ptr @_llgo_main.errorString, align 8
  %901 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %900)
  store ptr %901, ptr @"*_llgo_main.errorString", align 8
  %902 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %903 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %904 = icmp eq ptr %903, null
  br i1 %904, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %905 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %906 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %905, i32 0, i32 0
  store ptr @0, ptr %906, align 8
  %907 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %905, i32 0, i32 1
  store i64 5, ptr %907, align 4
  %908 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %905, align 8
  %909 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %909, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %908, ptr %910, align 8
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %909, i32 0, i32 1
  store ptr %902, ptr %911, align 8
  %912 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %909, align 8
  %913 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %914 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %913, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %912, ptr %914, align 8
  %915 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %915, i32 0, i32 0
  store ptr %913, ptr %916, align 8
  %917 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %915, i32 0, i32 1
  store i64 1, ptr %917, align 4
  %918 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %915, i32 0, i32 2
  store i64 1, ptr %918, align 4
  %919 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %915, align 8
  %920 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %920, i32 0, i32 0
  store ptr @1, ptr %921, align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %920, i32 0, i32 1
  store i64 4, ptr %922, align 4
  %923 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %920, align 8
  %924 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %925 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %924, i32 0, i32 0
  store ptr null, ptr %925, align 8
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %924, i32 0, i32 1
  store i64 0, ptr %926, align 4
  %927 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %924, align 8
  %928 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %923, %"github.com/goplus/llgo/internal/runtime.String" %927, %"github.com/goplus/llgo/internal/runtime.Slice" %919)
  store ptr %928, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
