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
@7 = private unnamed_addr constant [22 x i8] c"main.nopCloserWriterTo", align 1
@"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@9 = private unnamed_addr constant [4 x i8] c"Read", align 1
@10 = private unnamed_addr constant [11 x i8] c"main.Reader", align 1
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
@_llgo_byte = linkonce global ptr null, align 8
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
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 0
  store ptr @7, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 1
  store i64 22, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %180, align 8
  %184 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %183, i64 25, i64 16, i64 3, i64 3)
  store ptr %184, ptr @_llgo_main.nopCloserWriterTo, align 8
  %185 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %186 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %187 = icmp eq ptr %186, null
  br i1 %187, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 0
  store ptr @8, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 1
  store i64 6, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %188, align 8
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 0
  store ptr null, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 1
  store i64 0, ptr %194, align 4
  %195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %192, align 8
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @9, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 4, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %200, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %199, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %200, i32 0, i32 1
  store ptr %185, ptr %202, align 8
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
  store ptr @10, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 1
  store i64 11, ptr %217, align 4
  %218 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %215, align 8
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %214, %"github.com/goplus/llgo/internal/runtime.String" %218, %"github.com/goplus/llgo/internal/runtime.Slice" %210)
  %220 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %191, ptr %219, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %195, i1 true)
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr @1, ptr %222, align 8
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
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %233 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %234 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 0
  store ptr @11, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %234, i32 0, i32 1
  store i64 5, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %234, align 8
  %238 = load ptr, ptr @_llgo_error, align 8
  %239 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
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
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %254)
  store ptr %254, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
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
  store ptr @9, ptr %269, align 8
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
  store ptr @5, ptr %286, align 8
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
  store ptr @1, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 1
  store i64 4, ptr %322, align 4
  %323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %320, align 8
  %324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 0
  store ptr @12, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 1
  store i64 17, ptr %326, align 4
  %327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %324, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %184, %"github.com/goplus/llgo/internal/runtime.String" %323, %"github.com/goplus/llgo/internal/runtime.String" %327, ptr %233, %"github.com/goplus/llgo/internal/runtime.Slice" %310, %"github.com/goplus/llgo/internal/runtime.Slice" %319)
  %328 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %329 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %330 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %331 = icmp eq ptr %330, null
  br i1 %331, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 0
  store ptr @11, ptr %333, align 8
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
  store ptr @9, ptr %341, align 8
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
  store ptr @1, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 4, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 0
  store ptr null, ptr %361, align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 1
  store i64 0, ptr %362, align 4
  %363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %360, align 8
  %364 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %359, %"github.com/goplus/llgo/internal/runtime.String" %363, %"github.com/goplus/llgo/internal/runtime.Slice" %355)
  store ptr %364, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr @13, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 14, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %368, i64 25, i64 16, i64 2, i64 2)
  store ptr %369, ptr @_llgo_main.nopCloser, align 8
  %370 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %371 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 0
  store ptr @11, ptr %372, align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %371, i32 0, i32 1
  store i64 5, ptr %373, align 4
  %374 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %371, align 8
  %375 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %376 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %376, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %374, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %376, i32 0, i32 1
  store ptr %375, ptr %378, align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %376, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %379, align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %376, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %380, align 8
  %381 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %376, align 8
  %382 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %382, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %374, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %382, i32 0, i32 1
  store ptr %375, ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %382, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %382, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %386, align 8
  %387 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %382, align 8
  %388 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %389 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %388, i32 0, i32 0
  store ptr @9, ptr %389, align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %388, i32 0, i32 1
  store i64 4, ptr %390, align 4
  %391 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %388, align 8
  %392 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %393 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %393, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %391, ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %393, i32 0, i32 1
  store ptr %392, ptr %395, align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %393, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %393, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %397, align 8
  %398 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %393, align 8
  %399 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %399, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %391, ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %399, i32 0, i32 1
  store ptr %392, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %399, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %402, align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %399, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %403, align 8
  %404 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %399, align 8
  %405 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %406 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %405, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %387, ptr %406, align 8
  %407 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %405, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %404, ptr %407, align 8
  %408 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, i32 0, i32 0
  store ptr %405, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, i32 0, i32 1
  store i64 2, ptr %410, align 4
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, i32 0, i32 2
  store i64 2, ptr %411, align 4
  %412 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %408, align 8
  %413 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %414 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %413, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %381, ptr %414, align 8
  %415 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %413, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %398, ptr %415, align 8
  %416 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %416, i32 0, i32 0
  store ptr %413, ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %416, i32 0, i32 1
  store i64 2, ptr %418, align 4
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %416, i32 0, i32 2
  store i64 2, ptr %419, align 4
  %420 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %416, align 8
  %421 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 0
  store ptr @1, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 1
  store i64 4, ptr %423, align 4
  %424 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %421, align 8
  %425 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 0
  store ptr @14, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 1
  store i64 9, ptr %427, align 4
  %428 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %425, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %369, %"github.com/goplus/llgo/internal/runtime.String" %424, %"github.com/goplus/llgo/internal/runtime.String" %428, ptr %370, %"github.com/goplus/llgo/internal/runtime.Slice" %412, %"github.com/goplus/llgo/internal/runtime.Slice" %420)
  %429 = load ptr, ptr @_llgo_string, align 8
  %430 = load ptr, ptr @_llgo_int, align 8
  %431 = load ptr, ptr @_llgo_error, align 8
  %432 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %434 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %435 = getelementptr ptr, ptr %434, i64 0
  store ptr %429, ptr %435, align 8
  %436 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 0
  store ptr %434, ptr %437, align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 1
  store i64 1, ptr %438, align 4
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 2
  store i64 1, ptr %439, align 4
  %440 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, align 8
  %441 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %442 = getelementptr ptr, ptr %441, i64 0
  store ptr %430, ptr %442, align 8
  %443 = getelementptr ptr, ptr %441, i64 1
  store ptr %431, ptr %443, align 8
  %444 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, i32 0, i32 0
  store ptr %441, ptr %445, align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, i32 0, i32 1
  store i64 2, ptr %446, align 4
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, i32 0, i32 2
  store i64 2, ptr %447, align 4
  %448 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, align 8
  %449 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %440, %"github.com/goplus/llgo/internal/runtime.Slice" %448, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %449)
  store ptr %449, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %450 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %451 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %452 = icmp eq ptr %451, null
  br i1 %452, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 0
  store ptr @15, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 1
  store i64 11, ptr %455, align 4
  %456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %453, align 8
  %457 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %458 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %457, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %456, ptr %458, align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %457, i32 0, i32 1
  store ptr %450, ptr %459, align 8
  %460 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %457, align 8
  %461 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %462 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %461, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %460, ptr %462, align 8
  %463 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %463, i32 0, i32 0
  store ptr %461, ptr %464, align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %463, i32 0, i32 1
  store i64 1, ptr %465, align 4
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %463, i32 0, i32 2
  store i64 1, ptr %466, align 4
  %467 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %463, align 8
  %468 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %468, i32 0, i32 0
  store ptr @1, ptr %469, align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %468, i32 0, i32 1
  store i64 4, ptr %470, align 4
  %471 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %468, align 8
  %472 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %473 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %472, i32 0, i32 0
  store ptr @16, ptr %473, align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %472, i32 0, i32 1
  store i64 17, ptr %474, align 4
  %475 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %472, align 8
  %476 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %471, %"github.com/goplus/llgo/internal/runtime.String" %475, %"github.com/goplus/llgo/internal/runtime.Slice" %467)
  store ptr %476, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %477 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %478 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %479 = icmp eq ptr %478, null
  br i1 %479, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %480 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %480, i32 0, i32 0
  store ptr @15, ptr %481, align 8
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %480, i32 0, i32 1
  store i64 11, ptr %482, align 4
  %483 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %480, align 8
  %484 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %485 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %484, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %483, ptr %485, align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %484, i32 0, i32 1
  store ptr %477, ptr %486, align 8
  %487 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %484, align 8
  %488 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %489 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %488, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %487, ptr %489, align 8
  %490 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %490, i32 0, i32 0
  store ptr %488, ptr %491, align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %490, i32 0, i32 1
  store i64 1, ptr %492, align 4
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %490, i32 0, i32 2
  store i64 1, ptr %493, align 4
  %494 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %490, align 8
  %495 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %496 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 0
  store ptr @1, ptr %496, align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %495, i32 0, i32 1
  store i64 4, ptr %497, align 4
  %498 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %495, align 8
  %499 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %500 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %499, i32 0, i32 0
  store ptr null, ptr %500, align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %499, i32 0, i32 1
  store i64 0, ptr %501, align 4
  %502 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %499, align 8
  %503 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %498, %"github.com/goplus/llgo/internal/runtime.String" %502, %"github.com/goplus/llgo/internal/runtime.Slice" %494)
  store ptr %503, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %504 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %504, i32 0, i32 0
  store ptr @20, ptr %505, align 8
  %506 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %504, i32 0, i32 1
  store i64 17, ptr %506, align 4
  %507 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %504, align 8
  %508 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %507, i64 25, i64 32, i64 0, i64 10)
  store ptr %508, ptr @_llgo_main.stringReader, align 8
  %509 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %510 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %509, i32 0, i32 0
  store ptr @21, ptr %510, align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %509, i32 0, i32 1
  store i64 1, ptr %511, align 4
  %512 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %509, align 8
  %513 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %514 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 0
  store ptr null, ptr %514, align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %513, i32 0, i32 1
  store i64 0, ptr %515, align 4
  %516 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %513, align 8
  %517 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %518 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %512, ptr %517, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %516, i1 false)
  %519 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 0
  store ptr @22, ptr %520, align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %519, i32 0, i32 1
  store i64 1, ptr %521, align 4
  %522 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %519, align 8
  %523 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %523, i32 0, i32 0
  store ptr null, ptr %524, align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %523, i32 0, i32 1
  store i64 0, ptr %525, align 4
  %526 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %523, align 8
  %527 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %528 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %522, ptr %527, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %526, i1 false)
  %529 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %529, i32 0, i32 0
  store ptr @23, ptr %530, align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %529, i32 0, i32 1
  store i64 8, ptr %531, align 4
  %532 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %529, align 8
  %533 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %533, i32 0, i32 0
  store ptr null, ptr %534, align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %533, i32 0, i32 1
  store i64 0, ptr %535, align 4
  %536 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %533, align 8
  %537 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %538 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %532, ptr %537, i64 24, %"github.com/goplus/llgo/internal/runtime.String" %536, i1 false)
  %539 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %539, i32 0, i32 0
  store ptr @1, ptr %540, align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %539, i32 0, i32 1
  store i64 4, ptr %541, align 4
  %542 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %539, align 8
  %543 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %544 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %543, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %518, ptr %544, align 8
  %545 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %543, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %528, ptr %545, align 8
  %546 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %543, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %538, ptr %546, align 8
  %547 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %548 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %547, i32 0, i32 0
  store ptr %543, ptr %548, align 8
  %549 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %547, i32 0, i32 1
  store i64 3, ptr %549, align 4
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %547, i32 0, i32 2
  store i64 3, ptr %550, align 4
  %551 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %547, align 8
  %552 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %542, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %551)
  store ptr %552, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %553 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %554 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %554, i32 0, i32 0
  store ptr @24, ptr %555, align 8
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %554, i32 0, i32 1
  store i64 3, ptr %556, align 4
  %557 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %554, align 8
  %558 = load ptr, ptr @_llgo_int, align 8
  %559 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %560 = icmp eq ptr %559, null
  br i1 %560, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %561 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %562 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %563 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, i32 0, i32 0
  store ptr %561, ptr %563, align 8
  %564 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, i32 0, i32 1
  store i64 0, ptr %564, align 4
  %565 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, i32 0, i32 2
  store i64 0, ptr %565, align 4
  %566 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %562, align 8
  %567 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %568 = getelementptr ptr, ptr %567, i64 0
  store ptr %558, ptr %568, align 8
  %569 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %570 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, i32 0, i32 0
  store ptr %567, ptr %570, align 8
  %571 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, i32 0, i32 1
  store i64 1, ptr %571, align 4
  %572 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, i32 0, i32 2
  store i64 1, ptr %572, align 4
  %573 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %569, align 8
  %574 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %566, %"github.com/goplus/llgo/internal/runtime.Slice" %573, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %574)
  store ptr %574, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %575 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %576 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %577 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %557, ptr %577, align 8
  %578 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 1
  store ptr %575, ptr %578, align 8
  %579 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 2
  store ptr @"main.(*stringReader).Len", ptr %579, align 8
  %580 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %576, i32 0, i32 3
  store ptr @"main.(*stringReader).Len", ptr %580, align 8
  %581 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %576, align 8
  %582 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %583 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %582, i32 0, i32 0
  store ptr @9, ptr %583, align 8
  %584 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %582, i32 0, i32 1
  store i64 4, ptr %584, align 4
  %585 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %582, align 8
  %586 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %587 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %588 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %585, ptr %588, align 8
  %589 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 1
  store ptr %586, ptr %589, align 8
  %590 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 2
  store ptr @"main.(*stringReader).Read", ptr %590, align 8
  %591 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %587, i32 0, i32 3
  store ptr @"main.(*stringReader).Read", ptr %591, align 8
  %592 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %587, align 8
  %593 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %594 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 0
  store ptr @25, ptr %594, align 8
  %595 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %593, i32 0, i32 1
  store i64 6, ptr %595, align 4
  %596 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %593, align 8
  %597 = load ptr, ptr @"[]_llgo_byte", align 8
  %598 = load ptr, ptr @_llgo_int64, align 8
  %599 = load ptr, ptr @_llgo_int, align 8
  %600 = load ptr, ptr @_llgo_error, align 8
  %601 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %602 = icmp eq ptr %601, null
  br i1 %602, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %603 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %604 = getelementptr ptr, ptr %603, i64 0
  store ptr %597, ptr %604, align 8
  %605 = getelementptr ptr, ptr %603, i64 1
  store ptr %598, ptr %605, align 8
  %606 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %607 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, i32 0, i32 0
  store ptr %603, ptr %607, align 8
  %608 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, i32 0, i32 1
  store i64 2, ptr %608, align 4
  %609 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, i32 0, i32 2
  store i64 2, ptr %609, align 4
  %610 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %606, align 8
  %611 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %612 = getelementptr ptr, ptr %611, i64 0
  store ptr %599, ptr %612, align 8
  %613 = getelementptr ptr, ptr %611, i64 1
  store ptr %600, ptr %613, align 8
  %614 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %615 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %614, i32 0, i32 0
  store ptr %611, ptr %615, align 8
  %616 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %614, i32 0, i32 1
  store i64 2, ptr %616, align 4
  %617 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %614, i32 0, i32 2
  store i64 2, ptr %617, align 4
  %618 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %614, align 8
  %619 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %610, %"github.com/goplus/llgo/internal/runtime.Slice" %618, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %619)
  store ptr %619, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %620 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %621 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %622 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %621, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %596, ptr %622, align 8
  %623 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %621, i32 0, i32 1
  store ptr %620, ptr %623, align 8
  %624 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %621, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadAt", ptr %624, align 8
  %625 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %621, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadAt", ptr %625, align 8
  %626 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %621, align 8
  %627 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %628 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %627, i32 0, i32 0
  store ptr @26, ptr %628, align 8
  %629 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %627, i32 0, i32 1
  store i64 8, ptr %629, align 4
  %630 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %627, align 8
  %631 = load ptr, ptr @_llgo_byte, align 8
  %632 = icmp eq ptr %631, null
  br i1 %632, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %633 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %633, ptr @_llgo_byte, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %634 = load ptr, ptr @_llgo_byte, align 8
  %635 = load ptr, ptr @_llgo_error, align 8
  %636 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %637 = icmp eq ptr %636, null
  br i1 %637, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
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
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %652)
  store ptr %652, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %653 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %654 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %655 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %630, ptr %655, align 8
  %656 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 1
  store ptr %653, ptr %656, align 8
  %657 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadByte", ptr %657, align 8
  %658 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %654, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadByte", ptr %658, align 8
  %659 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %654, align 8
  %660 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %661 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %660, i32 0, i32 0
  store ptr @27, ptr %661, align 8
  %662 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %660, i32 0, i32 1
  store i64 8, ptr %662, align 4
  %663 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %660, align 8
  %664 = load ptr, ptr @_llgo_rune, align 8
  %665 = icmp eq ptr %664, null
  br i1 %665, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %666 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %666, ptr @_llgo_rune, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" %663, ptr %690, align 8
  %691 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 1
  store ptr %688, ptr %691, align 8
  %692 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 2
  store ptr @"main.(*stringReader).ReadRune", ptr %692, align 8
  %693 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %689, i32 0, i32 3
  store ptr @"main.(*stringReader).ReadRune", ptr %693, align 8
  %694 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %689, align 8
  %695 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %696 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %695, i32 0, i32 0
  store ptr @28, ptr %696, align 8
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
  store ptr @29, ptr %730, align 8
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
  store ptr @30, ptr %758, align 8
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
  store ptr @31, ptr %769, align 8
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
  store %"github.com/goplus/llgo/internal/abi.Method" %581, ptr %791, align 8
  %792 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %592, ptr %792, align 8
  %793 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %626, ptr %793, align 8
  %794 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %790, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %659, ptr %794, align 8
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
  store ptr @32, ptr %811, align 8
  %812 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %810, i32 0, i32 1
  store i64 12, ptr %812, align 4
  %813 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %810, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %508, %"github.com/goplus/llgo/internal/runtime.String" %809, %"github.com/goplus/llgo/internal/runtime.String" %813, ptr %553, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %805)
  %814 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %815 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %814, i32 0, i32 0
  store ptr @20, ptr %815, align 8
  %816 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %814, i32 0, i32 1
  store i64 17, ptr %816, align 4
  %817 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %814, align 8
  %818 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %817, i64 25, i64 32, i64 0, i64 10)
  %819 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %818)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %819)
  store ptr %819, ptr @"*_llgo_main.stringReader", align 8
  %820 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %821 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %822 = icmp eq ptr %821, null
  br i1 %822, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %823 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %824 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %823, i32 0, i32 0
  store ptr @9, ptr %824, align 8
  %825 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %823, i32 0, i32 1
  store i64 4, ptr %825, align 4
  %826 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %823, align 8
  %827 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %828 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %827, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %826, ptr %828, align 8
  %829 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %827, i32 0, i32 1
  store ptr %820, ptr %829, align 8
  %830 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %827, align 8
  %831 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %832 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %831, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %830, ptr %832, align 8
  %833 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %834 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %833, i32 0, i32 0
  store ptr %831, ptr %834, align 8
  %835 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %833, i32 0, i32 1
  store i64 1, ptr %835, align 4
  %836 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %833, i32 0, i32 2
  store i64 1, ptr %836, align 4
  %837 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %833, align 8
  %838 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %839 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %838, i32 0, i32 0
  store ptr @1, ptr %839, align 8
  %840 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %838, i32 0, i32 1
  store i64 4, ptr %840, align 4
  %841 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %838, align 8
  %842 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %843 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %842, i32 0, i32 0
  store ptr null, ptr %843, align 8
  %844 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %842, i32 0, i32 1
  store i64 0, ptr %844, align 4
  %845 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %842, align 8
  %846 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %841, %"github.com/goplus/llgo/internal/runtime.String" %845, %"github.com/goplus/llgo/internal/runtime.Slice" %837)
  store ptr %846, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %847 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %848 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 0
  store ptr @33, ptr %848, align 8
  %849 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %847, i32 0, i32 1
  store i64 16, ptr %849, align 4
  %850 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %847, align 8
  %851 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %850, i64 25, i64 16, i64 0, i64 1)
  store ptr %851, ptr @_llgo_main.errorString, align 8
  %852 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %853 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %852, i32 0, i32 0
  store ptr @21, ptr %853, align 8
  %854 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %852, i32 0, i32 1
  store i64 1, ptr %854, align 4
  %855 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %852, align 8
  %856 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %857 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 0
  store ptr null, ptr %857, align 8
  %858 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %856, i32 0, i32 1
  store i64 0, ptr %858, align 4
  %859 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %856, align 8
  %860 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %861 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %855, ptr %860, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %859, i1 false)
  %862 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %863 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %862, i32 0, i32 0
  store ptr @1, ptr %863, align 8
  %864 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %862, i32 0, i32 1
  store i64 4, ptr %864, align 4
  %865 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %862, align 8
  %866 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %867 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %866, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %861, ptr %867, align 8
  %868 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %869 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %868, i32 0, i32 0
  store ptr %866, ptr %869, align 8
  %870 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %868, i32 0, i32 1
  store i64 1, ptr %870, align 4
  %871 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %868, i32 0, i32 2
  store i64 1, ptr %871, align 4
  %872 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %868, align 8
  %873 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %865, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %872)
  store ptr %873, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %874 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %875 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %876 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %875, i32 0, i32 0
  store ptr @0, ptr %876, align 8
  %877 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %875, i32 0, i32 1
  store i64 5, ptr %877, align 4
  %878 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %875, align 8
  %879 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %880 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %881 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %880, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %878, ptr %881, align 8
  %882 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %880, i32 0, i32 1
  store ptr %879, ptr %882, align 8
  %883 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %880, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %883, align 8
  %884 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %880, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %884, align 8
  %885 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %880, align 8
  %886 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %887 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %886, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %885, ptr %887, align 8
  %888 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %889 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %888, i32 0, i32 0
  store ptr %886, ptr %889, align 8
  %890 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %888, i32 0, i32 1
  store i64 1, ptr %890, align 4
  %891 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %888, i32 0, i32 2
  store i64 1, ptr %891, align 4
  %892 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %888, align 8
  %893 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %894 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 0
  store ptr @1, ptr %894, align 8
  %895 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %893, i32 0, i32 1
  store i64 4, ptr %895, align 4
  %896 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %893, align 8
  %897 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %898 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %897, i32 0, i32 0
  store ptr @34, ptr %898, align 8
  %899 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %897, i32 0, i32 1
  store i64 11, ptr %899, align 4
  %900 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %897, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %851, %"github.com/goplus/llgo/internal/runtime.String" %896, %"github.com/goplus/llgo/internal/runtime.String" %900, ptr %874, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %892)
  %901 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %902 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %901, i32 0, i32 0
  store ptr @33, ptr %902, align 8
  %903 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %901, i32 0, i32 1
  store i64 16, ptr %903, align 4
  %904 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %901, align 8
  %905 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %904, i64 25, i64 16, i64 0, i64 1)
  %906 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %905)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %906)
  store ptr %906, ptr @"*_llgo_main.errorString", align 8
  %907 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %908 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %909 = icmp eq ptr %908, null
  br i1 %909, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %910 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %911 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %910, i32 0, i32 0
  store ptr @0, ptr %911, align 8
  %912 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %910, i32 0, i32 1
  store i64 5, ptr %912, align 4
  %913 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %910, align 8
  %914 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %915 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %914, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %913, ptr %915, align 8
  %916 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %914, i32 0, i32 1
  store ptr %907, ptr %916, align 8
  %917 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %914, align 8
  %918 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %919 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %918, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %917, ptr %919, align 8
  %920 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %921 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %920, i32 0, i32 0
  store ptr %918, ptr %921, align 8
  %922 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %920, i32 0, i32 1
  store i64 1, ptr %922, align 4
  %923 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %920, i32 0, i32 2
  store i64 1, ptr %923, align 4
  %924 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %920, align 8
  %925 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %926 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %925, i32 0, i32 0
  store ptr @1, ptr %926, align 8
  %927 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %925, i32 0, i32 1
  store i64 4, ptr %927, align 4
  %928 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %925, align 8
  %929 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %930 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %929, i32 0, i32 0
  store ptr null, ptr %930, align 8
  %931 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %929, i32 0, i32 1
  store i64 0, ptr %931, align 4
  %932 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %929, align 8
  %933 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %928, %"github.com/goplus/llgo/internal/runtime.String" %932, %"github.com/goplus/llgo/internal/runtime.Slice" %924)
  store ptr %933, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
