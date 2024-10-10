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
  %9 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %10 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %7)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %8, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %15

_llgo_2:                                          ; preds = %_llgo_5
  %16 = alloca %main.nopCloser, align 8
  call void @llvm.memset(ptr %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %main.nopCloser, ptr %16, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %17, align 8
  %18 = load %main.nopCloser, ptr %16, align 8
  %19 = load ptr, ptr @_llgo_main.nopCloser, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloser %18, ptr %20, align 8
  %21 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %21, ptr %19)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %23, i32 0, i32 1
  store ptr %20, ptr %25, align 8
  %26 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %23, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %26

_llgo_3:                                          ; preds = %_llgo_0
  %27 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %28 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %28, ptr %1)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %30, i32 0, i32 0
  store ptr %29, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %30, i32 0, i32 1
  store ptr %27, ptr %32, align 8
  %33 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %30, align 8
  %34 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %35 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %34, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %33, ptr %35, align 8
  %36 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %34, i32 0, i32 1
  store i1 true, ptr %36, align 1
  %37 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %34, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  %38 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %39 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %38, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %39, align 8
  %40 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %38, i32 0, i32 1
  store i1 false, ptr %40, align 1
  %41 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %38, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %42 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %37, %_llgo_3 ], [ %41, %_llgo_4 ]
  %43 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %42, 0
  %44 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %42, 1
  br i1 %44, label %_llgo_1, label %_llgo_2
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
  %8 = load ptr, ptr @_llgo_main.stringReader, align 8
  %9 = load ptr, ptr @"*_llgo_main.stringReader", align 8
  %10 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %9)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %2, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  %16 = call { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } @main.ReadAll(%"github.com/goplus/llgo/internal/runtime.iface" %15)
  %17 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %16, 0
  %18 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %16, 1
  %19 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

define %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.errorString, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @_llgo_main.errorString, align 8
  %4 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %5 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %5, ptr %4)
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, i32 0, i32 1
  store ptr %1, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %7, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %10
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
  %62 = load ptr, ptr @"[]_llgo_byte", align 8
  %63 = load ptr, ptr @_llgo_int, align 8
  %64 = load ptr, ptr @_llgo_error, align 8
  %65 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %68 = getelementptr ptr, ptr %67, i64 0
  store ptr %62, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 0
  store ptr %67, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 1
  store i64 1, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 2
  store i64 1, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %75 = getelementptr ptr, ptr %74, i64 0
  store ptr %63, ptr %75, align 8
  %76 = getelementptr ptr, ptr %74, i64 1
  store ptr %64, ptr %76, align 8
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 0
  store ptr %74, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 1
  store i64 2, ptr %79, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 2
  store i64 2, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %73, %"github.com/goplus/llgo/internal/runtime.Slice" %81, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %82)
  store ptr %82, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %83 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %84 = load ptr, ptr @_llgo_main.Writer, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 0
  store ptr @3, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 1
  store i64 5, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %86, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %89, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, i32 0, i32 1
  store ptr %83, ptr %92, align 8
  %93 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %95 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %94, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 1
  store i64 1, ptr %98, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 2
  store i64 1, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @1, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 4, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 0
  store ptr @4, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 1
  store i64 11, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %105, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %104, %"github.com/goplus/llgo/internal/runtime.String" %108, %"github.com/goplus/llgo/internal/runtime.Slice" %100)
  store ptr %109, ptr @_llgo_main.Writer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %110 = load ptr, ptr @_llgo_main.Writer, align 8
  %111 = load ptr, ptr @_llgo_int64, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %113, ptr @_llgo_int64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %114 = load ptr, ptr @_llgo_int64, align 8
  %115 = load ptr, ptr @_llgo_main.Writer, align 8
  %116 = load ptr, ptr @_llgo_int64, align 8
  %117 = load ptr, ptr @_llgo_error, align 8
  %118 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %121 = getelementptr ptr, ptr %120, i64 0
  store ptr %115, ptr %121, align 8
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
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %135)
  store ptr %135, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %136 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %137 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
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
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %163 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %164 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
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
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @7, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 22, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %193, i64 25, i64 16, i64 3, i64 3)
  store ptr %194, ptr @_llgo_main.nopCloserWriterTo, align 8
  %195 = load ptr, ptr @"[]_llgo_byte", align 8
  %196 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %197 = load ptr, ptr @_llgo_main.Reader, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr @8, ptr %200, align 8
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
  store ptr @9, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 11, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %217, %"github.com/goplus/llgo/internal/runtime.String" %221, %"github.com/goplus/llgo/internal/runtime.Slice" %213)
  store ptr %222, ptr @_llgo_main.Reader, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %223 = load ptr, ptr @_llgo_main.Reader, align 8
  %224 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %225 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %227 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 0
  store ptr @10, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 1
  store i64 6, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %227, align 8
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 0
  store ptr null, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 1
  store i64 0, ptr %233, align 4
  %234 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %231, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @8, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 4, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %239, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %238, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %239, i32 0, i32 1
  store ptr %224, ptr %241, align 8
  %242 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %239, align 8
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %244 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %243, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %242, ptr %244, align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, i32 0, i32 0
  store ptr %243, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, i32 0, i32 1
  store i64 1, ptr %247, align 4
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, i32 0, i32 2
  store i64 1, ptr %248, align 4
  %249 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %245, align 8
  %250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 0
  store ptr @1, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 1
  store i64 4, ptr %252, align 4
  %253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %250, align 8
  %254 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %254, i32 0, i32 0
  store ptr @9, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %254, i32 0, i32 1
  store i64 11, ptr %256, align 4
  %257 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %254, align 8
  %258 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %253, %"github.com/goplus/llgo/internal/runtime.String" %257, %"github.com/goplus/llgo/internal/runtime.Slice" %249)
  %259 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %230, ptr %258, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %234, i1 true)
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr @1, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 4, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %265 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %264, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %259, ptr %265, align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %266, i32 0, i32 0
  store ptr %264, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %266, i32 0, i32 1
  store i64 1, ptr %268, align 4
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %266, i32 0, i32 2
  store i64 1, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %266, align 8
  %271 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %263, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %270)
  store ptr %271, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %272 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 0
  store ptr @11, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 1
  store i64 5, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %273, align 8
  %277 = load ptr, ptr @_llgo_error, align 8
  %278 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %279 = icmp eq ptr %278, null
  br i1 %279, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %280 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 0
  store ptr %280, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 1
  store i64 0, ptr %283, align 4
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, i32 0, i32 2
  store i64 0, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %281, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %287 = getelementptr ptr, ptr %286, i64 0
  store ptr %277, ptr %287, align 8
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 0
  store ptr %286, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 1
  store i64 1, ptr %290, align 4
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, i32 0, i32 2
  store i64 1, ptr %291, align 4
  %292 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %288, align 8
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %285, %"github.com/goplus/llgo/internal/runtime.Slice" %292, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %293)
  store ptr %293, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %294 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %295 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %276, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 1
  store ptr %294, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %299, align 8
  %300 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %295, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %276, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 1
  store ptr %294, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %304, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %305, align 8
  %306 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %301, align 8
  %307 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %307, i32 0, i32 0
  store ptr @8, ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %307, i32 0, i32 1
  store i64 4, ptr %309, align 4
  %310 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %307, align 8
  %311 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %312 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %312, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %310, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %312, i32 0, i32 1
  store ptr %311, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %312, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %312, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %316, align 8
  %317 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %312, align 8
  %318 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %318, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %310, ptr %319, align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %318, i32 0, i32 1
  store ptr %311, ptr %320, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %318, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %318, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %322, align 8
  %323 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %318, align 8
  %324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 0
  store ptr @5, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 1
  store i64 7, ptr %326, align 4
  %327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %324, align 8
  %328 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %329 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %327, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 1
  store ptr %328, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %329, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %333, align 8
  %334 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %329, align 8
  %335 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %327, ptr %336, align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 1
  store ptr %328, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %335, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %339, align 8
  %340 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %335, align 8
  %341 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %342 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %341, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %306, ptr %342, align 8
  %343 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %341, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %323, ptr %343, align 8
  %344 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %341, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %340, ptr %344, align 8
  %345 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, i32 0, i32 0
  store ptr %341, ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, i32 0, i32 1
  store i64 3, ptr %347, align 4
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, i32 0, i32 2
  store i64 3, ptr %348, align 4
  %349 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %345, align 8
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %351 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %350, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %300, ptr %351, align 8
  %352 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %350, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %317, ptr %352, align 8
  %353 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %350, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %334, ptr %353, align 8
  %354 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, i32 0, i32 0
  store ptr %350, ptr %355, align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, i32 0, i32 1
  store i64 3, ptr %356, align 4
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, i32 0, i32 2
  store i64 3, ptr %357, align 4
  %358 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %354, align 8
  %359 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 0
  store ptr @1, ptr %360, align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 1
  store i64 4, ptr %361, align 4
  %362 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %359, align 8
  %363 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 0
  store ptr @12, ptr %364, align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %363, i32 0, i32 1
  store i64 17, ptr %365, align 4
  %366 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %363, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %194, %"github.com/goplus/llgo/internal/runtime.String" %362, %"github.com/goplus/llgo/internal/runtime.String" %366, ptr %272, %"github.com/goplus/llgo/internal/runtime.Slice" %349, %"github.com/goplus/llgo/internal/runtime.Slice" %358)
  %367 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %368 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %369 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %370 = icmp eq ptr %369, null
  br i1 %370, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 0
  store ptr @11, ptr %372, align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 1
  store i64 5, ptr %373, align 4
  %374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %371, align 8
  %375 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %375, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %374, ptr %376, align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %375, i32 0, i32 1
  store ptr %367, ptr %377, align 8
  %378 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %375, align 8
  %379 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %379, i32 0, i32 0
  store ptr @8, ptr %380, align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %379, i32 0, i32 1
  store i64 4, ptr %381, align 4
  %382 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %379, align 8
  %383 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %383, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %382, ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %383, i32 0, i32 1
  store ptr %368, ptr %385, align 8
  %386 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %383, align 8
  %387 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %388 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %387, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %378, ptr %388, align 8
  %389 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %387, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %386, ptr %389, align 8
  %390 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, i32 0, i32 0
  store ptr %387, ptr %391, align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, i32 0, i32 1
  store i64 2, ptr %392, align 4
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, i32 0, i32 2
  store i64 2, ptr %393, align 4
  %394 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, align 8
  %395 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %395, i32 0, i32 0
  store ptr @1, ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %395, i32 0, i32 1
  store i64 4, ptr %397, align 4
  %398 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %395, align 8
  %399 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %399, i32 0, i32 0
  store ptr null, ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %399, i32 0, i32 1
  store i64 0, ptr %401, align 4
  %402 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %399, align 8
  %403 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %398, %"github.com/goplus/llgo/internal/runtime.String" %402, %"github.com/goplus/llgo/internal/runtime.Slice" %394)
  store ptr %403, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 0
  store ptr @13, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 1
  store i64 14, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %404, align 8
  %408 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %407, i64 25, i64 16, i64 2, i64 2)
  store ptr %408, ptr @_llgo_main.nopCloser, align 8
  %409 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %410 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %410, i32 0, i32 0
  store ptr @11, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %410, i32 0, i32 1
  store i64 5, ptr %412, align 4
  %413 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %410, align 8
  %414 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %415 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %413, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 1
  store ptr %414, ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %415, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %419, align 8
  %420 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %415, align 8
  %421 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %421, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %413, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %421, i32 0, i32 1
  store ptr %414, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %421, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %424, align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %421, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %425, align 8
  %426 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %421, align 8
  %427 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 0
  store ptr @8, ptr %428, align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 1
  store i64 4, ptr %429, align 4
  %430 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %427, align 8
  %431 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %432 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %430, ptr %433, align 8
  %434 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 1
  store ptr %431, ptr %434, align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %432, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %436, align 8
  %437 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %432, align 8
  %438 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %438, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %430, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %438, i32 0, i32 1
  store ptr %431, ptr %440, align 8
  %441 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %438, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %441, align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %438, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %442, align 8
  %443 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %438, align 8
  %444 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %445 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %444, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %426, ptr %445, align 8
  %446 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %444, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %443, ptr %446, align 8
  %447 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %447, i32 0, i32 0
  store ptr %444, ptr %448, align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %447, i32 0, i32 1
  store i64 2, ptr %449, align 4
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %447, i32 0, i32 2
  store i64 2, ptr %450, align 4
  %451 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %447, align 8
  %452 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %453 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %452, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %420, ptr %453, align 8
  %454 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %452, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %437, ptr %454, align 8
  %455 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, i32 0, i32 0
  store ptr %452, ptr %456, align 8
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, i32 0, i32 1
  store i64 2, ptr %457, align 4
  %458 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %455, i32 0, i32 2
  store i64 2, ptr %458, align 4
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
  store i64 9, ptr %466, align 4
  %467 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %464, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %408, %"github.com/goplus/llgo/internal/runtime.String" %463, %"github.com/goplus/llgo/internal/runtime.String" %467, ptr %409, %"github.com/goplus/llgo/internal/runtime.Slice" %451, %"github.com/goplus/llgo/internal/runtime.Slice" %459)
  %468 = load ptr, ptr @_llgo_string, align 8
  %469 = load ptr, ptr @_llgo_int, align 8
  %470 = load ptr, ptr @_llgo_error, align 8
  %471 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %472 = icmp eq ptr %471, null
  br i1 %472, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %473 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %474 = getelementptr ptr, ptr %473, i64 0
  store ptr %468, ptr %474, align 8
  %475 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, i32 0, i32 0
  store ptr %473, ptr %476, align 8
  %477 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, i32 0, i32 1
  store i64 1, ptr %477, align 4
  %478 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, i32 0, i32 2
  store i64 1, ptr %478, align 4
  %479 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %475, align 8
  %480 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %481 = getelementptr ptr, ptr %480, i64 0
  store ptr %469, ptr %481, align 8
  %482 = getelementptr ptr, ptr %480, i64 1
  store ptr %470, ptr %482, align 8
  %483 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, i32 0, i32 0
  store ptr %480, ptr %484, align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, i32 0, i32 1
  store i64 2, ptr %485, align 4
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, i32 0, i32 2
  store i64 2, ptr %486, align 4
  %487 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %483, align 8
  %488 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %479, %"github.com/goplus/llgo/internal/runtime.Slice" %487, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %488)
  store ptr %488, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %489 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %490 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %491 = icmp eq ptr %490, null
  br i1 %491, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %492 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %492, i32 0, i32 0
  store ptr @15, ptr %493, align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %492, i32 0, i32 1
  store i64 11, ptr %494, align 4
  %495 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %492, align 8
  %496 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %496, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %495, ptr %497, align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %496, i32 0, i32 1
  store ptr %489, ptr %498, align 8
  %499 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %496, align 8
  %500 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %501 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %500, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %499, ptr %501, align 8
  %502 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %502, i32 0, i32 0
  store ptr %500, ptr %503, align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %502, i32 0, i32 1
  store i64 1, ptr %504, align 4
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %502, i32 0, i32 2
  store i64 1, ptr %505, align 4
  %506 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %502, align 8
  %507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 0
  store ptr @1, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 1
  store i64 4, ptr %509, align 4
  %510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %507, align 8
  %511 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 0
  store ptr @16, ptr %512, align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 1
  store i64 17, ptr %513, align 4
  %514 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %511, align 8
  %515 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %510, %"github.com/goplus/llgo/internal/runtime.String" %514, %"github.com/goplus/llgo/internal/runtime.Slice" %506)
  store ptr %515, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %516 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %517 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %518 = icmp eq ptr %517, null
  br i1 %518, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %519 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 0
  store ptr @15, ptr %520, align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 1
  store i64 11, ptr %521, align 4
  %522 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %519, align 8
  %523 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %523, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %522, ptr %524, align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %523, i32 0, i32 1
  store ptr %516, ptr %525, align 8
  %526 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %523, align 8
  %527 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %528 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %527, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %526, ptr %528, align 8
  %529 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %529, i32 0, i32 0
  store ptr %527, ptr %530, align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %529, i32 0, i32 1
  store i64 1, ptr %531, align 4
  %532 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %529, i32 0, i32 2
  store i64 1, ptr %532, align 4
  %533 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %529, align 8
  %534 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %534, i32 0, i32 0
  store ptr @1, ptr %535, align 8
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %534, i32 0, i32 1
  store i64 4, ptr %536, align 4
  %537 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %534, align 8
  %538 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %538, i32 0, i32 0
  store ptr null, ptr %539, align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %538, i32 0, i32 1
  store i64 0, ptr %540, align 4
  %541 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %538, align 8
  %542 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %537, %"github.com/goplus/llgo/internal/runtime.String" %541, %"github.com/goplus/llgo/internal/runtime.Slice" %533)
  store ptr %542, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %543 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %543, i32 0, i32 0
  store ptr @20, ptr %544, align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %543, i32 0, i32 1
  store i64 17, ptr %545, align 4
  %546 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %543, align 8
  %547 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %546, i64 25, i64 32, i64 0, i64 10)
  store ptr %547, ptr @_llgo_main.stringReader, align 8
  %548 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %548, i32 0, i32 0
  store ptr @21, ptr %549, align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %548, i32 0, i32 1
  store i64 1, ptr %550, align 4
  %551 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %548, align 8
  %552 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %553 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %552, i32 0, i32 0
  store ptr null, ptr %553, align 8
  %554 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %552, i32 0, i32 1
  store i64 0, ptr %554, align 4
  %555 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %552, align 8
  %556 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %557 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %551, ptr %556, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %555, i1 false)
  %558 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %558, i32 0, i32 0
  store ptr @22, ptr %559, align 8
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %558, i32 0, i32 1
  store i64 1, ptr %560, align 4
  %561 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %558, align 8
  %562 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %562, i32 0, i32 0
  store ptr null, ptr %563, align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %562, i32 0, i32 1
  store i64 0, ptr %564, align 4
  %565 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %562, align 8
  %566 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %567 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %561, ptr %566, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %565, i1 false)
  %568 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %569 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %568, i32 0, i32 0
  store ptr @23, ptr %569, align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %568, i32 0, i32 1
  store i64 8, ptr %570, align 4
  %571 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %568, align 8
  %572 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %573 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %572, i32 0, i32 0
  store ptr null, ptr %573, align 8
  %574 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %572, i32 0, i32 1
  store i64 0, ptr %574, align 4
  %575 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %572, align 8
  %576 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %577 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %571, ptr %576, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %575, i1 false)
  %578 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %578, i32 0, i32 0
  store ptr @1, ptr %579, align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %578, i32 0, i32 1
  store i64 4, ptr %580, align 4
  %581 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %578, align 8
  %582 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %583 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %582, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %557, ptr %583, align 8
  %584 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %582, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %567, ptr %584, align 8
  %585 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %582, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %577, ptr %585, align 8
  %586 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %587 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %586, i32 0, i32 0
  store ptr %582, ptr %587, align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %586, i32 0, i32 1
  store i64 3, ptr %588, align 4
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %586, i32 0, i32 2
  store i64 3, ptr %589, align 4
  %590 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %586, align 8
  %591 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %581, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %590)
  store ptr %591, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %592 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %593 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 0
  store ptr @24, ptr %594, align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 1
  store i64 3, ptr %595, align 4
  %596 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %593, align 8
  %597 = load ptr, ptr @_llgo_int, align 8
  %598 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %599 = icmp eq ptr %598, null
  br i1 %599, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %600 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %601 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %602 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, i32 0, i32 0
  store ptr %600, ptr %602, align 8
  %603 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, i32 0, i32 1
  store i64 0, ptr %603, align 4
  %604 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, i32 0, i32 2
  store i64 0, ptr %604, align 4
  %605 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %601, align 8
  %606 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %607 = getelementptr ptr, ptr %606, i64 0
  store ptr %597, ptr %607, align 8
  %608 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, i32 0, i32 0
  store ptr %606, ptr %609, align 8
  %610 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, i32 0, i32 1
  store i64 1, ptr %610, align 4
  %611 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, i32 0, i32 2
  store i64 1, ptr %611, align 4
  %612 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %608, align 8
  %613 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %605, %"github.com/goplus/llgo/internal/runtime.Slice" %612, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %613)
  store ptr %613, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %614 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %615 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %596, ptr %616, align 8
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 1
  store ptr %614, ptr %617, align 8
  %618 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %618, align 8
  %619 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %615, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %619, align 8
  %620 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %615, align 8
  %621 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 0
  store ptr @8, ptr %622, align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %621, i32 0, i32 1
  store i64 4, ptr %623, align 4
  %624 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %621, align 8
  %625 = load ptr, ptr @"[]_llgo_byte", align 8
  %626 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %627 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %624, ptr %628, align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 1
  store ptr %626, ptr %629, align 8
  %630 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %630, align 8
  %631 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %627, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %631, align 8
  %632 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %627, align 8
  %633 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %634 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 0
  store ptr @25, ptr %634, align 8
  %635 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %633, i32 0, i32 1
  store i64 6, ptr %635, align 4
  %636 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %633, align 8
  %637 = load ptr, ptr @"[]_llgo_byte", align 8
  %638 = load ptr, ptr @"[]_llgo_byte", align 8
  %639 = load ptr, ptr @_llgo_int64, align 8
  %640 = load ptr, ptr @_llgo_int, align 8
  %641 = load ptr, ptr @_llgo_error, align 8
  %642 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %643 = icmp eq ptr %642, null
  br i1 %643, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %644 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %645 = getelementptr ptr, ptr %644, i64 0
  store ptr %638, ptr %645, align 8
  %646 = getelementptr ptr, ptr %644, i64 1
  store ptr %639, ptr %646, align 8
  %647 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %648 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, i32 0, i32 0
  store ptr %644, ptr %648, align 8
  %649 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, i32 0, i32 1
  store i64 2, ptr %649, align 4
  %650 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, i32 0, i32 2
  store i64 2, ptr %650, align 4
  %651 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %647, align 8
  %652 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %653 = getelementptr ptr, ptr %652, i64 0
  store ptr %640, ptr %653, align 8
  %654 = getelementptr ptr, ptr %652, i64 1
  store ptr %641, ptr %654, align 8
  %655 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %655, i32 0, i32 0
  store ptr %652, ptr %656, align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %655, i32 0, i32 1
  store i64 2, ptr %657, align 4
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %655, i32 0, i32 2
  store i64 2, ptr %658, align 4
  %659 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %655, align 8
  %660 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %651, %"github.com/goplus/llgo/internal/runtime.Slice" %659, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %660)
  store ptr %660, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %661 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %662 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %663 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %636, ptr %663, align 8
  %664 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 1
  store ptr %661, ptr %664, align 8
  %665 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %665, align 8
  %666 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %662, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %666, align 8
  %667 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %662, align 8
  %668 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %669 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %668, i32 0, i32 0
  store ptr @26, ptr %669, align 8
  %670 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %668, i32 0, i32 1
  store i64 8, ptr %670, align 4
  %671 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %668, align 8
  %672 = load ptr, ptr @_llgo_byte, align 8
  %673 = load ptr, ptr @_llgo_error, align 8
  %674 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %675 = icmp eq ptr %674, null
  br i1 %675, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %676 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %677 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %678 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, i32 0, i32 0
  store ptr %676, ptr %678, align 8
  %679 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, i32 0, i32 1
  store i64 0, ptr %679, align 4
  %680 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, i32 0, i32 2
  store i64 0, ptr %680, align 4
  %681 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %677, align 8
  %682 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %683 = getelementptr ptr, ptr %682, i64 0
  store ptr %672, ptr %683, align 8
  %684 = getelementptr ptr, ptr %682, i64 1
  store ptr %673, ptr %684, align 8
  %685 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %686 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, i32 0, i32 0
  store ptr %682, ptr %686, align 8
  %687 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, i32 0, i32 1
  store i64 2, ptr %687, align 4
  %688 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, i32 0, i32 2
  store i64 2, ptr %688, align 4
  %689 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %685, align 8
  %690 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %681, %"github.com/goplus/llgo/internal/runtime.Slice" %689, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %690)
  store ptr %690, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %691 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %692 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %671, ptr %693, align 8
  %694 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 1
  store ptr %691, ptr %694, align 8
  %695 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %695, align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %692, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %696, align 8
  %697 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %692, align 8
  %698 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %699 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %698, i32 0, i32 0
  store ptr @27, ptr %699, align 8
  %700 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %698, i32 0, i32 1
  store i64 8, ptr %700, align 4
  %701 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %698, align 8
  %702 = load ptr, ptr @_llgo_rune, align 8
  %703 = icmp eq ptr %702, null
  br i1 %703, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %704 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %704, ptr @_llgo_rune, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %705 = load ptr, ptr @_llgo_rune, align 8
  %706 = load ptr, ptr @_llgo_rune, align 8
  %707 = load ptr, ptr @_llgo_int, align 8
  %708 = load ptr, ptr @_llgo_error, align 8
  %709 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %710 = icmp eq ptr %709, null
  br i1 %710, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %711 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %712 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %713 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %712, i32 0, i32 0
  store ptr %711, ptr %713, align 8
  %714 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %712, i32 0, i32 1
  store i64 0, ptr %714, align 4
  %715 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %712, i32 0, i32 2
  store i64 0, ptr %715, align 4
  %716 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %712, align 8
  %717 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %718 = getelementptr ptr, ptr %717, i64 0
  store ptr %706, ptr %718, align 8
  %719 = getelementptr ptr, ptr %717, i64 1
  store ptr %707, ptr %719, align 8
  %720 = getelementptr ptr, ptr %717, i64 2
  store ptr %708, ptr %720, align 8
  %721 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %722 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %721, i32 0, i32 0
  store ptr %717, ptr %722, align 8
  %723 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %721, i32 0, i32 1
  store i64 3, ptr %723, align 4
  %724 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %721, i32 0, i32 2
  store i64 3, ptr %724, align 4
  %725 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %721, align 8
  %726 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %716, %"github.com/goplus/llgo/internal/runtime.Slice" %725, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %726)
  store ptr %726, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %727 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %728 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %729 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %701, ptr %729, align 8
  %730 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i32 0, i32 1
  store ptr %727, ptr %730, align 8
  %731 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %731, align 8
  %732 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %728, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %732, align 8
  %733 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %728, align 8
  %734 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %735 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %734, i32 0, i32 0
  store ptr @28, ptr %735, align 8
  %736 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %734, i32 0, i32 1
  store i64 4, ptr %736, align 4
  %737 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %734, align 8
  %738 = load ptr, ptr @_llgo_int64, align 8
  %739 = load ptr, ptr @_llgo_int, align 8
  %740 = load ptr, ptr @_llgo_int64, align 8
  %741 = load ptr, ptr @_llgo_error, align 8
  %742 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %743 = icmp eq ptr %742, null
  br i1 %743, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %744 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %745 = getelementptr ptr, ptr %744, i64 0
  store ptr %738, ptr %745, align 8
  %746 = getelementptr ptr, ptr %744, i64 1
  store ptr %739, ptr %746, align 8
  %747 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %748 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, i32 0, i32 0
  store ptr %744, ptr %748, align 8
  %749 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, i32 0, i32 1
  store i64 2, ptr %749, align 4
  %750 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, i32 0, i32 2
  store i64 2, ptr %750, align 4
  %751 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %747, align 8
  %752 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %753 = getelementptr ptr, ptr %752, i64 0
  store ptr %740, ptr %753, align 8
  %754 = getelementptr ptr, ptr %752, i64 1
  store ptr %741, ptr %754, align 8
  %755 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %756 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %755, i32 0, i32 0
  store ptr %752, ptr %756, align 8
  %757 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %755, i32 0, i32 1
  store i64 2, ptr %757, align 4
  %758 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %755, i32 0, i32 2
  store i64 2, ptr %758, align 4
  %759 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %755, align 8
  %760 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %751, %"github.com/goplus/llgo/internal/runtime.Slice" %759, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %760)
  store ptr %760, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %761 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %762 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %763 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %737, ptr %763, align 8
  %764 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 1
  store ptr %761, ptr %764, align 8
  %765 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 2
  store ptr @"main.(*stringReader).Seek", ptr %765, align 8
  %766 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %762, i32 0, i32 3
  store ptr @"main.(*stringReader).Seek", ptr %766, align 8
  %767 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %762, align 8
  %768 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %769 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %768, i32 0, i32 0
  store ptr @29, ptr %769, align 8
  %770 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %768, i32 0, i32 1
  store i64 4, ptr %770, align 4
  %771 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %768, align 8
  %772 = load ptr, ptr @_llgo_int64, align 8
  %773 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %774 = icmp eq ptr %773, null
  br i1 %774, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %775 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %776 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %777 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, i32 0, i32 0
  store ptr %775, ptr %777, align 8
  %778 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, i32 0, i32 1
  store i64 0, ptr %778, align 4
  %779 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, i32 0, i32 2
  store i64 0, ptr %779, align 4
  %780 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %776, align 8
  %781 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %782 = getelementptr ptr, ptr %781, i64 0
  store ptr %772, ptr %782, align 8
  %783 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %784 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, i32 0, i32 0
  store ptr %781, ptr %784, align 8
  %785 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, i32 0, i32 1
  store i64 1, ptr %785, align 4
  %786 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, i32 0, i32 2
  store i64 1, ptr %786, align 4
  %787 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %783, align 8
  %788 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %780, %"github.com/goplus/llgo/internal/runtime.Slice" %787, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %788)
  store ptr %788, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %789 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %790 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %791 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %771, ptr %791, align 8
  %792 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 1
  store ptr %789, ptr %792, align 8
  %793 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 2
  store ptr @"main.(*stringReader).Size", ptr %793, align 8
  %794 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i32 0, i32 3
  store ptr @"main.(*stringReader).Size", ptr %794, align 8
  %795 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %790, align 8
  %796 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %797 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %796, i32 0, i32 0
  store ptr @30, ptr %797, align 8
  %798 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %796, i32 0, i32 1
  store i64 10, ptr %798, align 4
  %799 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %796, align 8
  %800 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %801 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %802 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %801, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %799, ptr %802, align 8
  %803 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %801, i32 0, i32 1
  store ptr %800, ptr %803, align 8
  %804 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %801, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadByte", ptr %804, align 8
  %805 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %801, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadByte", ptr %805, align 8
  %806 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %801, align 8
  %807 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %808 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %807, i32 0, i32 0
  store ptr @31, ptr %808, align 8
  %809 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %807, i32 0, i32 1
  store i64 10, ptr %809, align 4
  %810 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %807, align 8
  %811 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %812 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %813 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %812, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %810, ptr %813, align 8
  %814 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %812, i32 0, i32 1
  store ptr %811, ptr %814, align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %812, i32 0, i32 2
  store ptr @"main.(*stringReader).UnreadRune", ptr %815, align 8
  %816 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %812, i32 0, i32 3
  store ptr @"main.(*stringReader).UnreadRune", ptr %816, align 8
  %817 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %812, align 8
  %818 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %819 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 0
  store ptr @5, ptr %819, align 8
  %820 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %818, i32 0, i32 1
  store i64 7, ptr %820, align 4
  %821 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %818, align 8
  %822 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %823 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %823, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %821, ptr %824, align 8
  %825 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %823, i32 0, i32 1
  store ptr %822, ptr %825, align 8
  %826 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %823, i32 0, i32 2
  store ptr @"main.(*stringReader).WriteTo", ptr %826, align 8
  %827 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %823, i32 0, i32 3
  store ptr @"main.(*stringReader).WriteTo", ptr %827, align 8
  %828 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %823, align 8
  %829 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %830 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %620, ptr %830, align 8
  %831 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %632, ptr %831, align 8
  %832 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %667, ptr %832, align 8
  %833 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %697, ptr %833, align 8
  %834 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %733, ptr %834, align 8
  %835 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %767, ptr %835, align 8
  %836 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %795, ptr %836, align 8
  %837 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %806, ptr %837, align 8
  %838 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %817, ptr %838, align 8
  %839 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %829, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %828, ptr %839, align 8
  %840 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %841 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %840, i32 0, i32 0
  store ptr %829, ptr %841, align 8
  %842 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %840, i32 0, i32 1
  store i64 10, ptr %842, align 4
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %840, i32 0, i32 2
  store i64 10, ptr %843, align 4
  %844 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %840, align 8
  %845 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %846 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %845, i32 0, i32 0
  store ptr @1, ptr %846, align 8
  %847 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %845, i32 0, i32 1
  store i64 4, ptr %847, align 4
  %848 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %845, align 8
  %849 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %850 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %849, i32 0, i32 0
  store ptr @32, ptr %850, align 8
  %851 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %849, i32 0, i32 1
  store i64 12, ptr %851, align 4
  %852 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %849, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %547, %"github.com/goplus/llgo/internal/runtime.String" %848, %"github.com/goplus/llgo/internal/runtime.String" %852, ptr %592, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %844)
  %853 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %853, i32 0, i32 0
  store ptr @20, ptr %854, align 8
  %855 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %853, i32 0, i32 1
  store i64 17, ptr %855, align 4
  %856 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %853, align 8
  %857 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %856, i64 25, i64 32, i64 0, i64 10)
  %858 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %857)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %858)
  store ptr %858, ptr @"*_llgo_main.stringReader", align 8
  %859 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %860 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %861 = icmp eq ptr %860, null
  br i1 %861, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %862 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %862, i32 0, i32 0
  store ptr @8, ptr %863, align 8
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %862, i32 0, i32 1
  store i64 4, ptr %864, align 4
  %865 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %862, align 8
  %866 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %867 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %866, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %865, ptr %867, align 8
  %868 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %866, i32 0, i32 1
  store ptr %859, ptr %868, align 8
  %869 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %866, align 8
  %870 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %871 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %870, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %869, ptr %871, align 8
  %872 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %873 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %872, i32 0, i32 0
  store ptr %870, ptr %873, align 8
  %874 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %872, i32 0, i32 1
  store i64 1, ptr %874, align 4
  %875 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %872, i32 0, i32 2
  store i64 1, ptr %875, align 4
  %876 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %872, align 8
  %877 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %878 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %877, i32 0, i32 0
  store ptr @1, ptr %878, align 8
  %879 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %877, i32 0, i32 1
  store i64 4, ptr %879, align 4
  %880 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %877, align 8
  %881 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %881, i32 0, i32 0
  store ptr null, ptr %882, align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %881, i32 0, i32 1
  store i64 0, ptr %883, align 4
  %884 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %881, align 8
  %885 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %880, %"github.com/goplus/llgo/internal/runtime.String" %884, %"github.com/goplus/llgo/internal/runtime.Slice" %876)
  store ptr %885, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %886 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %887 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 0
  store ptr @33, ptr %887, align 8
  %888 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %886, i32 0, i32 1
  store i64 16, ptr %888, align 4
  %889 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %886, align 8
  %890 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %889, i64 25, i64 16, i64 0, i64 1)
  store ptr %890, ptr @_llgo_main.errorString, align 8
  %891 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %892 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %891, i32 0, i32 0
  store ptr @21, ptr %892, align 8
  %893 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %891, i32 0, i32 1
  store i64 1, ptr %893, align 4
  %894 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %891, align 8
  %895 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %896 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %895, i32 0, i32 0
  store ptr null, ptr %896, align 8
  %897 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %895, i32 0, i32 1
  store i64 0, ptr %897, align 4
  %898 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %895, align 8
  %899 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %900 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %894, ptr %899, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %898, i1 false)
  %901 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %901, i32 0, i32 0
  store ptr @1, ptr %902, align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %901, i32 0, i32 1
  store i64 4, ptr %903, align 4
  %904 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %901, align 8
  %905 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %906 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %905, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %900, ptr %906, align 8
  %907 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %908 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %907, i32 0, i32 0
  store ptr %905, ptr %908, align 8
  %909 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %907, i32 0, i32 1
  store i64 1, ptr %909, align 4
  %910 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %907, i32 0, i32 2
  store i64 1, ptr %910, align 4
  %911 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %907, align 8
  %912 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %904, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %911)
  store ptr %912, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %913 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %914 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %915 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %914, i32 0, i32 0
  store ptr @0, ptr %915, align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %914, i32 0, i32 1
  store i64 5, ptr %916, align 4
  %917 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %914, align 8
  %918 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %919 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %920 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %919, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %917, ptr %920, align 8
  %921 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %919, i32 0, i32 1
  store ptr %918, ptr %921, align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %919, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %922, align 8
  %923 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %919, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %923, align 8
  %924 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %919, align 8
  %925 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %926 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %925, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %924, ptr %926, align 8
  %927 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %928 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %927, i32 0, i32 0
  store ptr %925, ptr %928, align 8
  %929 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %927, i32 0, i32 1
  store i64 1, ptr %929, align 4
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %927, i32 0, i32 2
  store i64 1, ptr %930, align 4
  %931 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %927, align 8
  %932 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %933 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %932, i32 0, i32 0
  store ptr @1, ptr %933, align 8
  %934 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %932, i32 0, i32 1
  store i64 4, ptr %934, align 4
  %935 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %932, align 8
  %936 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %937 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %936, i32 0, i32 0
  store ptr @34, ptr %937, align 8
  %938 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %936, i32 0, i32 1
  store i64 11, ptr %938, align 4
  %939 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %936, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %890, %"github.com/goplus/llgo/internal/runtime.String" %935, %"github.com/goplus/llgo/internal/runtime.String" %939, ptr %913, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %931)
  %940 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %941 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %940, i32 0, i32 0
  store ptr @33, ptr %941, align 8
  %942 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %940, i32 0, i32 1
  store i64 16, ptr %942, align 4
  %943 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %940, align 8
  %944 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %943, i64 25, i64 16, i64 0, i64 1)
  %945 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %944)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %945)
  store ptr %945, ptr @"*_llgo_main.errorString", align 8
  %946 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %947 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %948 = icmp eq ptr %947, null
  br i1 %948, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %949 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %950 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %949, i32 0, i32 0
  store ptr @0, ptr %950, align 8
  %951 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %949, i32 0, i32 1
  store i64 5, ptr %951, align 4
  %952 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %949, align 8
  %953 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %954 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %953, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %952, ptr %954, align 8
  %955 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %953, i32 0, i32 1
  store ptr %946, ptr %955, align 8
  %956 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %953, align 8
  %957 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %958 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %957, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %956, ptr %958, align 8
  %959 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %960 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %959, i32 0, i32 0
  store ptr %957, ptr %960, align 8
  %961 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %959, i32 0, i32 1
  store i64 1, ptr %961, align 4
  %962 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %959, i32 0, i32 2
  store i64 1, ptr %962, align 4
  %963 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %959, align 8
  %964 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %965 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %964, i32 0, i32 0
  store ptr @1, ptr %965, align 8
  %966 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %964, i32 0, i32 1
  store i64 4, ptr %966, align 4
  %967 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %964, align 8
  %968 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %969 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %968, i32 0, i32 0
  store ptr null, ptr %969, align 8
  %970 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %968, i32 0, i32 1
  store i64 0, ptr %970, align 4
  %971 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %968, align 8
  %972 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %967, %"github.com/goplus/llgo/internal/runtime.String" %971, %"github.com/goplus/llgo/internal/runtime.Slice" %963)
  store ptr %972, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
