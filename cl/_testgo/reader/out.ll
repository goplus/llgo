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
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %12, ptr %8, 1
  ret %"github.com/goplus/llgo/internal/runtime.iface" %13

_llgo_2:                                          ; preds = %_llgo_5
  %14 = alloca %main.nopCloser, align 8
  call void @llvm.memset(ptr %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %main.nopCloser, ptr %14, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %15, align 8
  %16 = load %main.nopCloser, ptr %14, align 8
  %17 = load ptr, ptr @_llgo_main.nopCloser, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %main.nopCloser %16, ptr %18, align 8
  %19 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %19, ptr %17)
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %21, ptr %18, 1
  ret %"github.com/goplus/llgo/internal/runtime.iface" %22

_llgo_3:                                          ; preds = %_llgo_0
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %24 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %24, ptr %1)
  %26 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %26, ptr %23, 1
  %28 = insertvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/internal/runtime.iface" %27, 0
  %29 = insertvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %28, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %30 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %29, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %31 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %30, 0
  %32 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %30, 1
  br i1 %32, label %_llgo_1, label %_llgo_2
}

define { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } @main.ReadAll(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 512)
  %2 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 512, i64 0, i64 0, i64 512)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_3, %_llgo_0
  %3 = phi %"github.com/goplus/llgo/internal/runtime.Slice" [ %2, %_llgo_0 ], [ %24, %_llgo_3 ], [ %61, %_llgo_6 ]
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 1
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 2
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 2
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 0
  %8 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %7, i64 1, i64 %6, i64 %4, i64 %5, i64 %6)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %10 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16(ptr %15, %"github.com/goplus/llgo/internal/runtime.Slice" %8)
  %18 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17, 0
  %19 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17, 1
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 1
  %21 = add i64 %20, %18
  %22 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 2
  %23 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %3, 0
  %24 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %23, i64 1, i64 %22, i64 0, i64 %21, i64 %22)
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %19)
  %26 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %19, 1
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %27, ptr %26, 1
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %30, ptr null, 1
  %32 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %28, %"github.com/goplus/llgo/internal/runtime.eface" %31)
  %33 = xor i1 %32, true
  br i1 %33, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %34 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %19)
  %36 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %19, 1
  %37 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %37, ptr %36, 1
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %34)
  %40 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %34, 1
  %41 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %39, 0
  %42 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %41, ptr %40, 1
  %43 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %38, %"github.com/goplus/llgo/internal/runtime.eface" %42)
  br i1 %43, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %44 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %24, 1
  %45 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %24, 2
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %_llgo_6, label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  %47 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ %19, %_llgo_2 ], [ zeroinitializer, %_llgo_4 ]
  %48 = insertvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } undef, %"github.com/goplus/llgo/internal/runtime.Slice" %24, 0
  %49 = insertvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %48, %"github.com/goplus/llgo/internal/runtime.iface" %47, 1
  ret { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %49

_llgo_6:                                          ; preds = %_llgo_3
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 1)
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 0, ptr %51, align 1
  %52 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %52, i64 1, 1
  %54 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %53, i64 1, 2
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, 1
  %57 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/internal/runtime.Slice" %24, ptr %55, i64 %56, i64 1)
  %58 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %24, 1
  %59 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %57, 2
  %60 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %57, 0
  %61 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice3"(ptr %60, i64 1, i64 %59, i64 0, i64 %58, i64 %59)
  br label %_llgo_1
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.WriteString(%"github.com/goplus/llgo/internal/runtime.iface" %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %3 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %4 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %3, ptr %2)
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %40)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %40, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/internal/runtime.String" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, %"github.com/goplus/llgo/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17

_llgo_2:                                          ; preds = %_llgo_5
  %18 = call %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %0)
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 0
  %21 = getelementptr ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = insertvalue { ptr, ptr } undef, ptr %22, 0
  %24 = insertvalue { ptr, ptr } %23, ptr %19, 1
  %25 = extractvalue { ptr, ptr } %24, 1
  %26 = extractvalue { ptr, ptr } %24, 0
  %27 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %26(ptr %25, %"github.com/goplus/llgo/internal/runtime.Slice" %18)
  %28 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %27, 0
  %29 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %27, 1
  %30 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %28, 0
  %31 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %30, %"github.com/goplus/llgo/internal/runtime.iface" %29, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %31

_llgo_3:                                          ; preds = %_llgo_0
  %32 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %0, 1
  %33 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %33, ptr %2)
  %35 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %35, ptr %32, 1
  %37 = insertvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/internal/runtime.iface" %36, 0
  %38 = insertvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %37, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %39 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %38, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %40 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %39, 0
  %41 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %39, 1
  br i1 %41, label %_llgo_1, label %_llgo_2
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
  %1 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 3 })
  store %"github.com/goplus/llgo/internal/runtime.iface" %1, ptr @main.EOF, align 8
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 11 })
  store %"github.com/goplus/llgo/internal/runtime.iface" %2, ptr @main.ErrShortWrite, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 11 }, ptr %3, align 8
  %4 = load ptr, ptr @_llgo_main.stringReader, align 8
  %5 = load ptr, ptr @"*_llgo_main.stringReader", align 8
  %6 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %6, ptr %5)
  %8 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %8, ptr %2, 1
  %10 = call { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } @main.ReadAll(%"github.com/goplus/llgo/internal/runtime.iface" %9)
  %11 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %10, 0
  %12 = extractvalue { %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.iface" } %10, 1
  %13 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/internal/runtime.Slice" %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %12)
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
  %7 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %7, ptr %1, 1
  ret %"github.com/goplus/llgo/internal/runtime.iface" %8
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
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, %"github.com/goplus/llgo/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17
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
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, %"github.com/goplus/llgo/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16
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
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16, %"github.com/goplus/llgo/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17
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
  %11 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %11, ptr %8, 1
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %12, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %20(ptr %19, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %22 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21, 0
  %23 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21, 1
  %24 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %22, 0
  %25 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %24, %"github.com/goplus/llgo/internal/runtime.iface" %23, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %25

_llgo_2:                                          ; preds = %_llgo_0
  %26 = load ptr, ptr @_llgo_string, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 21 }, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %28, ptr %27, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %29)
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
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/internal/runtime.Slice" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %15, %"github.com/goplus/llgo/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %16
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*nopCloserWriterTo).WriteTo"(ptr %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load %main.nopCloserWriterTo, ptr %0, align 8
  %3 = call { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @main.nopCloserWriterTo.WriteTo(%main.nopCloserWriterTo %2, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  %4 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %3, 1
  %6 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %4, 0
  %7 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %6, %"github.com/goplus/llgo/internal/runtime.iface" %5, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %7
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
  %9 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %10, align 4
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %13 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %12, 1
  %16 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %12, i64 %14, i64 %15)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %16, 0
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %16, 1
  %19 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %1, ptr %17, i64 %18, i64 1)
  %20 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %22, ptr %23, align 4
  %24 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %19, 0
  %25 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %24, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %25
}

define { i64, %"github.com/goplus/llgo/internal/runtime.iface" } @"main.(*stringReader).ReadAt"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %1, i64 %2) {
_llgo_0:
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 37 })
  %5 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %4, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %7, 1
  %9 = icmp sge i64 %2, %8
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  %11 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %10, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %11

_llgo_4:                                          ; preds = %_llgo_2
  %12 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %13, 1
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %13, i64 %2, i64 %14)
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 0
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 1
  %18 = call i64 @"github.com/goplus/llgo/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/internal/runtime.Slice" %1, ptr %16, i64 %17, i64 1)
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %1, 1
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %21 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.EOF, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %22 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %21, %_llgo_5 ]
  %23 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %18, 0
  %24 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %23, %"github.com/goplus/llgo/internal/runtime.iface" %22, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %24
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
  %9 = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } { i8 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 1
  ret { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %13, 0
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %13, 1
  %16 = icmp slt i64 %11, 0
  %17 = icmp sge i64 %11, %15
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i8, ptr %14, i64 %11
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %23, ptr %24, align 4
  %25 = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i8 %20, 0
  %26 = insertvalue { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %25, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 1
  ret { i8, %"github.com/goplus/llgo/internal/runtime.iface" } %26
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
  %9 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i32 0, i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %8, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 %11, ptr %12, align 4
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
  %24 = icmp ult i8 %23, -128
  br i1 %24, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %25 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %27, ptr %28, align 4
  %29 = sext i8 %23 to i32
  %30 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i32 %29, 0
  %31 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %30, i64 1, 1
  %32 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %31, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %32

_llgo_4:                                          ; preds = %_llgo_2
  %33 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 0
  %34 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %35 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %34, 1
  %38 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %34, i64 %36, i64 %37)
  %39 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %38)
  %40 = extractvalue { i32, i64 } %39, 0
  %41 = extractvalue { i32, i64 } %39, 1
  %42 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = add i64 %43, %41
  %45 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %44, ptr %45, align 4
  %46 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i32 %40, 0
  %47 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %46, i64 %41, 1
  %48 = insertvalue { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %47, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/internal/runtime.iface" } %48
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
  %16 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 34 })
  %17 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @38, i64 37 })
  %19 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %18, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %19

_llgo_9:                                          ; preds = %_llgo_1
  %20 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %5, ptr %20, align 4
  %21 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %5, 0
  %22 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %21, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %22
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @39, i64 48 })
  ret %"github.com/goplus/llgo/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %5, align 4
  %6 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = sub i64 %7, 1
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  ret %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"main.(*stringReader).UnreadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @40, i64 49 })
  ret %"github.com/goplus/llgo/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 4
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @41, i64 62 })
  ret %"github.com/goplus/llgo/internal/runtime.iface" %8

_llgo_4:                                          ; preds = %_llgo_2
  %9 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %10, ptr %11, align 4
  %12 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  store i64 -1, ptr %12, align 4
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
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @42, i64 48 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %22, ptr %21, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %23)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %24 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = add i64 %25, %16
  %27 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 1
  store i64 %26, ptr %27, align 4
  %28 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %14, 1
  %29 = icmp ne i64 %16, %28
  br i1 %29, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  %30 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr @main.ErrShortWrite, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %31 = phi %"github.com/goplus/llgo/internal/runtime.iface" [ %17, %_llgo_4 ], [ %17, %_llgo_7 ], [ %30, %_llgo_5 ]
  %32 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } undef, i64 %16, 0
  %33 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %32, %"github.com/goplus/llgo/internal/runtime.iface" %31, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %33

_llgo_7:                                          ; preds = %_llgo_4
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %17)
  %35 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %17, 1
  %36 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %36, ptr %35, 1
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %39 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %39, ptr null, 1
  %41 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %37, %"github.com/goplus/llgo/internal/runtime.eface" %40)
  br i1 %41, label %_llgo_5, label %_llgo_6
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
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, i64 0, 2
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %25 = getelementptr ptr, ptr %24, i64 0
  store ptr %17, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, i64 1, 1
  %28 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %27, i64 1, 2
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %23, %"github.com/goplus/llgo/internal/runtime.Slice" %28, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %29)
  store ptr %29, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %30 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %31 = load ptr, ptr @_llgo_error, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %33 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 5 }, ptr undef }, ptr %30, 1
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %35 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %34, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %33, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %36, i64 1, 1
  %38 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %37, i64 1, 2
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 5 }, %"github.com/goplus/llgo/internal/runtime.Slice" %38)
  store ptr %39, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %40 = load ptr, ptr @_llgo_error, align 8
  %41 = load ptr, ptr @"[]_llgo_byte", align 8
  %42 = load ptr, ptr @_llgo_int, align 8
  %43 = load ptr, ptr @_llgo_error, align 8
  %44 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %47 = getelementptr ptr, ptr %46, i64 0
  store ptr %41, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %48, i64 1, 1
  %50 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %49, i64 1, 2
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %52 = getelementptr ptr, ptr %51, i64 0
  store ptr %42, ptr %52, align 8
  %53 = getelementptr ptr, ptr %51, i64 1
  store ptr %43, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %51, 0
  %55 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, i64 2, 1
  %56 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %55, i64 2, 2
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %50, %"github.com/goplus/llgo/internal/runtime.Slice" %56, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %57)
  store ptr %57, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %58 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %59 = load ptr, ptr @_llgo_main.Writer, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %61 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %58, 1
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %63 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %62, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %61, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %62, 0
  %65 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %64, i64 1, 1
  %66 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %65, i64 1, 2
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 11 }, %"github.com/goplus/llgo/internal/runtime.Slice" %66)
  store ptr %67, ptr @_llgo_main.Writer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %68 = load ptr, ptr @_llgo_main.Writer, align 8
  %69 = load ptr, ptr @_llgo_int64, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %71, ptr @_llgo_int64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %72 = load ptr, ptr @_llgo_int64, align 8
  %73 = load ptr, ptr @_llgo_main.Writer, align 8
  %74 = load ptr, ptr @_llgo_int64, align 8
  %75 = load ptr, ptr @_llgo_error, align 8
  %76 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %79 = getelementptr ptr, ptr %78, i64 0
  store ptr %73, ptr %79, align 8
  %80 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %78, 0
  %81 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, i64 1, 1
  %82 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %81, i64 1, 2
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %84 = getelementptr ptr, ptr %83, i64 0
  store ptr %74, ptr %84, align 8
  %85 = getelementptr ptr, ptr %83, i64 1
  store ptr %75, ptr %85, align 8
  %86 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %83, 0
  %87 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %86, i64 2, 1
  %88 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %87, i64 2, 2
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %82, %"github.com/goplus/llgo/internal/runtime.Slice" %88, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %89)
  store ptr %89, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %90 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %91 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %93 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 7 }, ptr undef }, ptr %90, 1
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %95 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %94, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %93, ptr %95, align 8
  %96 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %94, 0
  %97 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %96, i64 1, 1
  %98 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %97, i64 1, 2
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 13 }, %"github.com/goplus/llgo/internal/runtime.Slice" %98)
  store ptr %99, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %100 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %101 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %103 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 7 }, ptr undef }, ptr %100, 1
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %105 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %104, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %103, ptr %105, align 8
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %104, 0
  %107 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %106, i64 1, 1
  %108 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %107, i64 1, 2
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %108)
  store ptr %109, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 22 }, i64 25, i64 16, i64 3, i64 3)
  store ptr %110, ptr @_llgo_main.nopCloserWriterTo, align 8
  %111 = load ptr, ptr @"[]_llgo_byte", align 8
  %112 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %113 = load ptr, ptr @_llgo_main.Reader, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %115 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef }, ptr %112, 1
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %117 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %116, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %115, ptr %117, align 8
  %118 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %116, 0
  %119 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %118, i64 1, 1
  %120 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %119, i64 1, 2
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 11 }, %"github.com/goplus/llgo/internal/runtime.Slice" %120)
  store ptr %121, ptr @_llgo_main.Reader, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %122 = load ptr, ptr @_llgo_main.Reader, align 8
  %123 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %124 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %126 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef }, ptr %123, 1
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %128 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %126, ptr %128, align 8
  %129 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %127, 0
  %130 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %129, i64 1, 1
  %131 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %130, i64 1, 2
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 11 }, %"github.com/goplus/llgo/internal/runtime.Slice" %131)
  %133 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 6 }, ptr %132, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %135 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %134, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %133, ptr %135, align 8
  %136 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %134, 0
  %137 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %136, i64 1, 1
  %138 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %137, i64 1, 2
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %138)
  store ptr %139, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %140 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %141 = load ptr, ptr @_llgo_error, align 8
  %142 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %145 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %144, 0
  %146 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %145, i64 0, 1
  %147 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %146, i64 0, 2
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %149 = getelementptr ptr, ptr %148, i64 0
  store ptr %141, ptr %149, align 8
  %150 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %148, 0
  %151 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %150, i64 1, 1
  %152 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %151, i64 1, 2
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %147, %"github.com/goplus/llgo/internal/runtime.Slice" %152, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %153)
  store ptr %153, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %154 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %155 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %154, 1
  %156 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %155, ptr @"main.(*nopCloserWriterTo).Close", 2
  %157 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %156, ptr @"main.(*nopCloserWriterTo).Close", 3
  %158 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %154, 1
  %159 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %158, ptr @"main.(*nopCloserWriterTo).Close", 2
  %160 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %159, ptr @main.nopCloserWriterTo.Close, 3
  %161 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %162 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %161, 1
  %163 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %162, ptr @"main.(*nopCloserWriterTo).Read", 2
  %164 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %163, ptr @"main.(*nopCloserWriterTo).Read", 3
  %165 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %161, 1
  %166 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %165, ptr @"main.(*nopCloserWriterTo).Read", 2
  %167 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %166, ptr @main.nopCloserWriterTo.Read, 3
  %168 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %169 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %168, 1
  %170 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %169, ptr @"main.(*nopCloserWriterTo).WriteTo", 2
  %171 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %170, ptr @"main.(*nopCloserWriterTo).WriteTo", 3
  %172 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %168, 1
  %173 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %172, ptr @"main.(*nopCloserWriterTo).WriteTo", 2
  %174 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %173, ptr @main.nopCloserWriterTo.WriteTo, 3
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %176 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %160, ptr %176, align 8
  %177 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %167, ptr %177, align 8
  %178 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %174, ptr %178, align 8
  %179 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %175, 0
  %180 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %179, i64 3, 1
  %181 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %180, i64 3, 2
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %183 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %182, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %157, ptr %183, align 8
  %184 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %182, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %164, ptr %184, align 8
  %185 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %182, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %171, ptr %185, align 8
  %186 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %182, 0
  %187 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %186, i64 3, 1
  %188 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %187, i64 3, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %110, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 17 }, ptr %140, %"github.com/goplus/llgo/internal/runtime.Slice" %181, %"github.com/goplus/llgo/internal/runtime.Slice" %188)
  %189 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %190 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %191 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %193 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 5 }, ptr undef }, ptr %189, 1
  %194 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef }, ptr %190, 1
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %196 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %195, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %193, ptr %196, align 8
  %197 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %195, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %194, ptr %197, align 8
  %198 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %195, 0
  %199 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %198, i64 2, 1
  %200 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %199, i64 2, 2
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %200)
  store ptr %201, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 14 }, i64 25, i64 16, i64 2, i64 2)
  store ptr %202, ptr @_llgo_main.nopCloser, align 8
  %203 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %204 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %205 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %204, 1
  %206 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %205, ptr @"main.(*nopCloser).Close", 2
  %207 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %206, ptr @"main.(*nopCloser).Close", 3
  %208 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %204, 1
  %209 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %208, ptr @"main.(*nopCloser).Close", 2
  %210 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %209, ptr @main.nopCloser.Close, 3
  %211 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %212 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %211, 1
  %213 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %212, ptr @"main.(*nopCloser).Read", 2
  %214 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %213, ptr @"main.(*nopCloser).Read", 3
  %215 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %211, 1
  %216 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %215, ptr @"main.(*nopCloser).Read", 2
  %217 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %216, ptr @main.nopCloser.Read, 3
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %219 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %218, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %210, ptr %219, align 8
  %220 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %218, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %217, ptr %220, align 8
  %221 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %218, 0
  %222 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %221, i64 2, 1
  %223 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %222, i64 2, 2
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %225 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %224, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %207, ptr %225, align 8
  %226 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %224, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %214, ptr %226, align 8
  %227 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %224, 0
  %228 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %227, i64 2, 1
  %229 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %228, i64 2, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %202, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @14, i64 9 }, ptr %203, %"github.com/goplus/llgo/internal/runtime.Slice" %223, %"github.com/goplus/llgo/internal/runtime.Slice" %229)
  %230 = load ptr, ptr @_llgo_string, align 8
  %231 = load ptr, ptr @_llgo_int, align 8
  %232 = load ptr, ptr @_llgo_error, align 8
  %233 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %235 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %236 = getelementptr ptr, ptr %235, i64 0
  store ptr %230, ptr %236, align 8
  %237 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %235, 0
  %238 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %237, i64 1, 1
  %239 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %238, i64 1, 2
  %240 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %241 = getelementptr ptr, ptr %240, i64 0
  store ptr %231, ptr %241, align 8
  %242 = getelementptr ptr, ptr %240, i64 1
  store ptr %232, ptr %242, align 8
  %243 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %240, 0
  %244 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %243, i64 2, 1
  %245 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %244, i64 2, 2
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %239, %"github.com/goplus/llgo/internal/runtime.Slice" %245, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %246)
  store ptr %246, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %247 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %248 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %250 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @15, i64 11 }, ptr undef }, ptr %247, 1
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %252 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %251, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %250, ptr %252, align 8
  %253 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %251, 0
  %254 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %253, i64 1, 1
  %255 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %254, i64 1, 2
  %256 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @16, i64 17 }, %"github.com/goplus/llgo/internal/runtime.Slice" %255)
  store ptr %256, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %257 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %258 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %260 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @15, i64 11 }, ptr undef }, ptr %257, 1
  %261 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %262 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %261, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %260, ptr %262, align 8
  %263 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %261, 0
  %264 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %263, i64 1, 1
  %265 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %264, i64 1, 2
  %266 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %265)
  store ptr %266, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %267 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @20, i64 17 }, i64 25, i64 32, i64 0, i64 10)
  store ptr %267, ptr @_llgo_main.stringReader, align 8
  %268 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %269 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 1 }, ptr %268, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %270 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %271 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 1 }, ptr %270, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %272 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %273 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 8 }, ptr %272, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %274 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %275 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %274, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %269, ptr %275, align 8
  %276 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %274, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %271, ptr %276, align 8
  %277 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %274, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %273, ptr %277, align 8
  %278 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %274, 0
  %279 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %278, i64 3, 1
  %280 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %279, i64 3, 2
  %281 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %280)
  store ptr %281, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %282 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %283 = load ptr, ptr @_llgo_int, align 8
  %284 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %285 = icmp eq ptr %284, null
  br i1 %285, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %287 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %286, 0
  %288 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %287, i64 0, 1
  %289 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %288, i64 0, 2
  %290 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %291 = getelementptr ptr, ptr %290, i64 0
  store ptr %283, ptr %291, align 8
  %292 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %290, 0
  %293 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %292, i64 1, 1
  %294 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %293, i64 1, 2
  %295 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %289, %"github.com/goplus/llgo/internal/runtime.Slice" %294, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %295)
  store ptr %295, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %296 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %297 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %296, 1
  %298 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %297, ptr @"main.(*stringReader).Len", 2
  %299 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %298, ptr @"main.(*stringReader).Len", 3
  %300 = load ptr, ptr @"[]_llgo_byte", align 8
  %301 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %302 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %301, 1
  %303 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %302, ptr @"main.(*stringReader).Read", 2
  %304 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %303, ptr @"main.(*stringReader).Read", 3
  %305 = load ptr, ptr @"[]_llgo_byte", align 8
  %306 = load ptr, ptr @"[]_llgo_byte", align 8
  %307 = load ptr, ptr @_llgo_int64, align 8
  %308 = load ptr, ptr @_llgo_int, align 8
  %309 = load ptr, ptr @_llgo_error, align 8
  %310 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %312 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %313 = getelementptr ptr, ptr %312, i64 0
  store ptr %306, ptr %313, align 8
  %314 = getelementptr ptr, ptr %312, i64 1
  store ptr %307, ptr %314, align 8
  %315 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %312, 0
  %316 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %315, i64 2, 1
  %317 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %316, i64 2, 2
  %318 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %319 = getelementptr ptr, ptr %318, i64 0
  store ptr %308, ptr %319, align 8
  %320 = getelementptr ptr, ptr %318, i64 1
  store ptr %309, ptr %320, align 8
  %321 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %318, 0
  %322 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %321, i64 2, 1
  %323 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %322, i64 2, 2
  %324 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %317, %"github.com/goplus/llgo/internal/runtime.Slice" %323, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %324)
  store ptr %324, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %325 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %326 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %325, 1
  %327 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %326, ptr @"main.(*stringReader).ReadAt", 2
  %328 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %327, ptr @"main.(*stringReader).ReadAt", 3
  %329 = load ptr, ptr @_llgo_byte, align 8
  %330 = load ptr, ptr @_llgo_error, align 8
  %331 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %332 = icmp eq ptr %331, null
  br i1 %332, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %333 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %334 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %333, 0
  %335 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %334, i64 0, 1
  %336 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %335, i64 0, 2
  %337 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %338 = getelementptr ptr, ptr %337, i64 0
  store ptr %329, ptr %338, align 8
  %339 = getelementptr ptr, ptr %337, i64 1
  store ptr %330, ptr %339, align 8
  %340 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %337, 0
  %341 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %340, i64 2, 1
  %342 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %341, i64 2, 2
  %343 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %336, %"github.com/goplus/llgo/internal/runtime.Slice" %342, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %343)
  store ptr %343, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %344 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %345 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %344, 1
  %346 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %345, ptr @"main.(*stringReader).ReadByte", 2
  %347 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %346, ptr @"main.(*stringReader).ReadByte", 3
  %348 = load ptr, ptr @_llgo_rune, align 8
  %349 = icmp eq ptr %348, null
  br i1 %349, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %350, ptr @_llgo_rune, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %351 = load ptr, ptr @_llgo_rune, align 8
  %352 = load ptr, ptr @_llgo_rune, align 8
  %353 = load ptr, ptr @_llgo_int, align 8
  %354 = load ptr, ptr @_llgo_error, align 8
  %355 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %356 = icmp eq ptr %355, null
  br i1 %356, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %357 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %358 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %357, 0
  %359 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %358, i64 0, 1
  %360 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %359, i64 0, 2
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %362 = getelementptr ptr, ptr %361, i64 0
  store ptr %352, ptr %362, align 8
  %363 = getelementptr ptr, ptr %361, i64 1
  store ptr %353, ptr %363, align 8
  %364 = getelementptr ptr, ptr %361, i64 2
  store ptr %354, ptr %364, align 8
  %365 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %361, 0
  %366 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %365, i64 3, 1
  %367 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %366, i64 3, 2
  %368 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %360, %"github.com/goplus/llgo/internal/runtime.Slice" %367, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %368)
  store ptr %368, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %369 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %370 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %369, 1
  %371 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %370, ptr @"main.(*stringReader).ReadRune", 2
  %372 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %371, ptr @"main.(*stringReader).ReadRune", 3
  %373 = load ptr, ptr @_llgo_int64, align 8
  %374 = load ptr, ptr @_llgo_int, align 8
  %375 = load ptr, ptr @_llgo_int64, align 8
  %376 = load ptr, ptr @_llgo_error, align 8
  %377 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %379 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %380 = getelementptr ptr, ptr %379, i64 0
  store ptr %373, ptr %380, align 8
  %381 = getelementptr ptr, ptr %379, i64 1
  store ptr %374, ptr %381, align 8
  %382 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %379, 0
  %383 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %382, i64 2, 1
  %384 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %383, i64 2, 2
  %385 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %386 = getelementptr ptr, ptr %385, i64 0
  store ptr %375, ptr %386, align 8
  %387 = getelementptr ptr, ptr %385, i64 1
  store ptr %376, ptr %387, align 8
  %388 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %385, 0
  %389 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %388, i64 2, 1
  %390 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %389, i64 2, 2
  %391 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %384, %"github.com/goplus/llgo/internal/runtime.Slice" %390, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %391)
  store ptr %391, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %392 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %393 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %392, 1
  %394 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %393, ptr @"main.(*stringReader).Seek", 2
  %395 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %394, ptr @"main.(*stringReader).Seek", 3
  %396 = load ptr, ptr @_llgo_int64, align 8
  %397 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %398 = icmp eq ptr %397, null
  br i1 %398, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %399 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %400 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %399, 0
  %401 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %400, i64 0, 1
  %402 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %401, i64 0, 2
  %403 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %404 = getelementptr ptr, ptr %403, i64 0
  store ptr %396, ptr %404, align 8
  %405 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %403, 0
  %406 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %405, i64 1, 1
  %407 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %406, i64 1, 2
  %408 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %402, %"github.com/goplus/llgo/internal/runtime.Slice" %407, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %408)
  store ptr %408, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %409 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %410 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %409, 1
  %411 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %410, ptr @"main.(*stringReader).Size", 2
  %412 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %411, ptr @"main.(*stringReader).Size", 3
  %413 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %414 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %413, 1
  %415 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %414, ptr @"main.(*stringReader).UnreadByte", 2
  %416 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %415, ptr @"main.(*stringReader).UnreadByte", 3
  %417 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %418 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %417, 1
  %419 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %418, ptr @"main.(*stringReader).UnreadRune", 2
  %420 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %419, ptr @"main.(*stringReader).UnreadRune", 3
  %421 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %422 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %421, 1
  %423 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %422, ptr @"main.(*stringReader).WriteTo", 2
  %424 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %423, ptr @"main.(*stringReader).WriteTo", 3
  %425 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %426 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %299, ptr %426, align 8
  %427 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %304, ptr %427, align 8
  %428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %328, ptr %428, align 8
  %429 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %347, ptr %429, align 8
  %430 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %372, ptr %430, align 8
  %431 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %395, ptr %431, align 8
  %432 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %412, ptr %432, align 8
  %433 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %416, ptr %433, align 8
  %434 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %420, ptr %434, align 8
  %435 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %425, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %424, ptr %435, align 8
  %436 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %425, 0
  %437 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %436, i64 10, 1
  %438 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %437, i64 10, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %267, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 12 }, ptr %282, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %438)
  %439 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @20, i64 17 }, i64 25, i64 32, i64 0, i64 10)
  %440 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %439)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %440)
  store ptr %440, ptr @"*_llgo_main.stringReader", align 8
  %441 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %442 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %443 = icmp eq ptr %442, null
  br i1 %443, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %444 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 4 }, ptr undef }, ptr %441, 1
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %446 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %445, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %444, ptr %446, align 8
  %447 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %445, 0
  %448 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %447, i64 1, 1
  %449 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %448, i64 1, 2
  %450 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %449)
  store ptr %450, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %451 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 16 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %451, ptr @_llgo_main.errorString, align 8
  %452 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %453 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 1 }, ptr %452, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %454 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %455 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %454, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %453, ptr %455, align 8
  %456 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %454, 0
  %457 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %456, i64 1, 1
  %458 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %457, i64 1, 2
  %459 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %458)
  store ptr %459, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %460 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %461 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %462 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %461, 1
  %463 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %462, ptr @"main.(*errorString).Error", 2
  %464 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %463, ptr @"main.(*errorString).Error", 3
  %465 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %466 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %465, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %464, ptr %466, align 8
  %467 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %465, 0
  %468 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %467, i64 1, 1
  %469 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %468, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %451, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 11 }, ptr %460, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %469)
  %470 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 16 }, i64 25, i64 16, i64 0, i64 1)
  %471 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %470)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %471)
  store ptr %471, ptr @"*_llgo_main.errorString", align 8
  %472 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %473 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %474 = icmp eq ptr %473, null
  br i1 %474, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %475 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 5 }, ptr undef }, ptr %472, 1
  %476 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %477 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %476, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %475, ptr %477, align 8
  %478 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %476, 0
  %479 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %478, i64 1, 1
  %480 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %479, i64 1, 2
  %481 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %480)
  store ptr %481, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
