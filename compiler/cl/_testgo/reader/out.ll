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
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [8 x i8] c"WriterTo", align 1
@_llgo_main.Writer = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [6 x i8] c"Writer", align 1
@_llgo_byte = linkonce global ptr null, align 8
@"[]_llgo_byte" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"Write", align 1
@_llgo_int64 = linkonce global ptr null, align 8
@"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk" = linkonce global ptr null, align 8
@_llgo_main.nopCloserWriterTo = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [17 x i8] c"nopCloserWriterTo", align 1
@_llgo_main.Reader = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@9 = private unnamed_addr constant [4 x i8] c"Read", align 1
@"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I" = linkonce global ptr null, align 8
@_llgo_main.nopCloser = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [9 x i8] c"nopCloser", align 1
@_llgo_main.StringWriter = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [12 x i8] c"StringWriter", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@15 = private unnamed_addr constant [11 x i8] c"short write", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@16 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@_llgo_main.stringReader = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [12 x i8] c"stringReader", align 1
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
@24 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@_llgo_rune = linkonce global ptr null, align 8
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@28 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@"*_llgo_main.stringReader" = linkonce global ptr null, align 8
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@_llgo_main.errorString = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@"*_llgo_main.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@31 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@32 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@33 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@34 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@35 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@36 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@37 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

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
  %1 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @14, i64 3 })
  store %"github.com/goplus/llgo/internal/runtime.iface" %1, ptr @main.EOF, align 8
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @15, i64 11 })
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @16, i64 11 }, ptr %3, align 8
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @30, i64 21 }, ptr %27, align 8
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @31, i64 37 })
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
  %16 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @32, i64 34 })
  %17 = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" undef }, %"github.com/goplus/llgo/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %17

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @33, i64 37 })
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @34, i64 48 })
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
  %4 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @35, i64 49 })
  ret %"github.com/goplus/llgo/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %main.stringReader, ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 4
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" { ptr @36, i64 62 })
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
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @37, i64 48 }, ptr %21, align 8
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 8 })
  %1 = load ptr, ptr @_llgo_main.WriterTo, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.WriterTo, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 6 })
  %4 = load ptr, ptr @_llgo_main.Writer, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @_llgo_main.Writer, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_byte, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %8, ptr @_llgo_byte, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_byte, align 8
  %10 = load ptr, ptr @"[]_llgo_byte", align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %12)
  store ptr %13, ptr @"[]_llgo_byte", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %14 = load ptr, ptr @"[]_llgo_byte", align 8
  %15 = load ptr, ptr @_llgo_int, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %17, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %18 = load ptr, ptr @_llgo_int, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 })
  %20 = load ptr, ptr @_llgo_error, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %19, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %22 = load ptr, ptr @_llgo_string, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %24, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = load ptr, ptr @_llgo_string, align 8
  %27 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %30, i64 0, 1
  %32 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %31, i64 0, 2
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr ptr, ptr %33, i64 0
  store ptr %26, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %35, i64 1, 1
  %37 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %36, i64 1, 2
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %32, %"github.com/goplus/llgo/internal/runtime.Slice" %37, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %38)
  store ptr %38, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %39 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %21, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %40 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %39, 1
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %42 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %41, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %40, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %43, i64 1, 1
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %44, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamedInterface"(ptr %19, %"github.com/goplus/llgo/internal/runtime.Slice" %45)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %46 = load ptr, ptr @_llgo_error, align 8
  %47 = load ptr, ptr @"[]_llgo_byte", align 8
  %48 = load ptr, ptr @_llgo_int, align 8
  %49 = load ptr, ptr @_llgo_error, align 8
  %50 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %53 = getelementptr ptr, ptr %52, i64 0
  store ptr %47, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %54, i64 1, 1
  %56 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %55, i64 1, 2
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %58 = getelementptr ptr, ptr %57, i64 0
  store ptr %48, ptr %58, align 8
  %59 = getelementptr ptr, ptr %57, i64 1
  store ptr %49, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %57, 0
  %61 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %60, i64 2, 1
  %62 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, i64 2, 2
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %56, %"github.com/goplus/llgo/internal/runtime.Slice" %62, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %63)
  store ptr %63, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %64 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br i1 %5, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %65 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %64, 1
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %67 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %66, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %65, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %68, i64 1, 1
  %70 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %69, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamedInterface"(ptr %3, %"github.com/goplus/llgo/internal/runtime.Slice" %70)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %71 = load ptr, ptr @_llgo_main.Writer, align 8
  %72 = load ptr, ptr @_llgo_int64, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %74, ptr @_llgo_int64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %75 = load ptr, ptr @_llgo_int64, align 8
  %76 = load ptr, ptr @_llgo_main.Writer, align 8
  %77 = load ptr, ptr @_llgo_int64, align 8
  %78 = load ptr, ptr @_llgo_error, align 8
  %79 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %82 = getelementptr ptr, ptr %81, i64 0
  store ptr %76, ptr %82, align 8
  %83 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %81, 0
  %84 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %83, i64 1, 1
  %85 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %84, i64 1, 2
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %87 = getelementptr ptr, ptr %86, i64 0
  store ptr %77, ptr %87, align 8
  %88 = getelementptr ptr, ptr %86, i64 1
  store ptr %78, ptr %88, align 8
  %89 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %86, 0
  %90 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %89, i64 2, 1
  %91 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %90, i64 2, 2
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %85, %"github.com/goplus/llgo/internal/runtime.Slice" %91, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %92)
  store ptr %92, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %93 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  br i1 %2, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %94 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %93, 1
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %96 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %94, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %95, 0
  %98 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %97, i64 1, 1
  %99 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %98, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamedInterface"(ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %99)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %100 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %101 = load ptr, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %103 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %100, 1
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %105 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %104, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %103, ptr %105, align 8
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %104, 0
  %107 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %106, i64 1, 1
  %108 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %107, i64 1, 2
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.Slice" %108)
  store ptr %109, ptr @"_llgo_iface$eN81k1zqixGTyagHw_4nqH4mGfwwehTOCTXUlbT9kzk", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 17 }, i64 25, i64 16, i64 3, i64 3)
  store ptr %110, ptr @_llgo_main.nopCloserWriterTo, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 6 })
  %112 = load ptr, ptr @_llgo_main.Reader, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %111, ptr @_llgo_main.Reader, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %114 = load ptr, ptr @"[]_llgo_byte", align 8
  %115 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  br i1 %113, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %116 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %115, 1
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %118 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %117, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %116, ptr %118, align 8
  %119 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %117, 0
  %120 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %119, i64 1, 1
  %121 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %120, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamedInterface"(ptr %111, %"github.com/goplus/llgo/internal/runtime.Slice" %121)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %122 = load ptr, ptr @_llgo_main.Reader, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 6 })
  %124 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %126 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 6 }, ptr %123, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 true)
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %128 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %127, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %126, ptr %128, align 8
  %129 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %127, 0
  %130 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %129, i64 1, 1
  %131 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %130, i64 1, 2
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %131)
  store ptr %132, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %133 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %134 = load ptr, ptr @_llgo_error, align 8
  %135 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %138 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %137, 0
  %139 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %138, i64 0, 1
  %140 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %139, i64 0, 2
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %142 = getelementptr ptr, ptr %141, i64 0
  store ptr %134, ptr %142, align 8
  %143 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %141, 0
  %144 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %143, i64 1, 1
  %145 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, i64 1, 2
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %140, %"github.com/goplus/llgo/internal/runtime.Slice" %145, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %146)
  store ptr %146, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %147 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %148 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %147, 1
  %149 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %148, ptr @"main.(*nopCloserWriterTo).Close", 2
  %150 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %149, ptr @"main.(*nopCloserWriterTo).Close", 3
  %151 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %147, 1
  %152 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %151, ptr @"main.(*nopCloserWriterTo).Close", 2
  %153 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %152, ptr @main.nopCloserWriterTo.Close, 3
  %154 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %155 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %154, 1
  %156 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %155, ptr @"main.(*nopCloserWriterTo).Read", 2
  %157 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %156, ptr @"main.(*nopCloserWriterTo).Read", 3
  %158 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %154, 1
  %159 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %158, ptr @"main.(*nopCloserWriterTo).Read", 2
  %160 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %159, ptr @main.nopCloserWriterTo.Read, 3
  %161 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %162 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %161, 1
  %163 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %162, ptr @"main.(*nopCloserWriterTo).WriteTo", 2
  %164 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %163, ptr @"main.(*nopCloserWriterTo).WriteTo", 3
  %165 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %161, 1
  %166 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %165, ptr @"main.(*nopCloserWriterTo).WriteTo", 2
  %167 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %166, ptr @main.nopCloserWriterTo.WriteTo, 3
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %169 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %153, ptr %169, align 8
  %170 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %160, ptr %170, align 8
  %171 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %168, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %167, ptr %171, align 8
  %172 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %168, 0
  %173 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %172, i64 3, 1
  %174 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %173, i64 3, 2
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %176 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %150, ptr %176, align 8
  %177 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %157, ptr %177, align 8
  %178 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %175, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %164, ptr %178, align 8
  %179 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %175, 0
  %180 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %179, i64 3, 1
  %181 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %180, i64 3, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %110, ptr %133, %"github.com/goplus/llgo/internal/runtime.Slice" %174, %"github.com/goplus/llgo/internal/runtime.Slice" %181)
  %182 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %183 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %184 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %186 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 5 }, ptr undef }, ptr %182, 1
  %187 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %183, 1
  %188 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %189 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %188, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %186, ptr %189, align 8
  %190 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %188, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %187, ptr %190, align 8
  %191 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %188, 0
  %192 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %191, i64 2, 1
  %193 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %192, i64 2, 2
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.Slice" %193)
  store ptr %194, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 9 }, i64 25, i64 16, i64 2, i64 2)
  store ptr %195, ptr @_llgo_main.nopCloser, align 8
  %196 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %197 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %198 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %197, 1
  %199 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %198, ptr @"main.(*nopCloser).Close", 2
  %200 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %199, ptr @"main.(*nopCloser).Close", 3
  %201 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %197, 1
  %202 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %201, ptr @"main.(*nopCloser).Close", 2
  %203 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %202, ptr @main.nopCloser.Close, 3
  %204 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %205 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %204, 1
  %206 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %205, ptr @"main.(*nopCloser).Read", 2
  %207 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %206, ptr @"main.(*nopCloser).Read", 3
  %208 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %204, 1
  %209 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %208, ptr @"main.(*nopCloser).Read", 2
  %210 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %209, ptr @main.nopCloser.Read, 3
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %212 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %203, ptr %212, align 8
  %213 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %211, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %210, ptr %213, align 8
  %214 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %211, 0
  %215 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %214, i64 2, 1
  %216 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %215, i64 2, 2
  %217 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %218 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %200, ptr %218, align 8
  %219 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %217, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %207, ptr %219, align 8
  %220 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %217, 0
  %221 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %220, i64 2, 1
  %222 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %221, i64 2, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %195, ptr %196, %"github.com/goplus/llgo/internal/runtime.Slice" %216, %"github.com/goplus/llgo/internal/runtime.Slice" %222)
  %223 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 12 })
  %224 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  store ptr %223, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %226 = load ptr, ptr @_llgo_string, align 8
  %227 = load ptr, ptr @_llgo_int, align 8
  %228 = load ptr, ptr @_llgo_error, align 8
  %229 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %231 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %232 = getelementptr ptr, ptr %231, i64 0
  store ptr %226, ptr %232, align 8
  %233 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %231, 0
  %234 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %233, i64 1, 1
  %235 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %234, i64 1, 2
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %237 = getelementptr ptr, ptr %236, i64 0
  store ptr %227, ptr %237, align 8
  %238 = getelementptr ptr, ptr %236, i64 1
  store ptr %228, ptr %238, align 8
  %239 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %236, 0
  %240 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %239, i64 2, 1
  %241 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %240, i64 2, 2
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %235, %"github.com/goplus/llgo/internal/runtime.Slice" %241, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %242)
  store ptr %242, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %243 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br i1 %225, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %244 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %243, 1
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %246 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %245, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %244, ptr %246, align 8
  %247 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %245, 0
  %248 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %247, i64 1, 1
  %249 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %248, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamedInterface"(ptr %223, %"github.com/goplus/llgo/internal/runtime.Slice" %249)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %250 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %251 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %253 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %250, 1
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %255 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %254, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %253, ptr %255, align 8
  %256 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %254, 0
  %257 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %256, i64 1, 1
  %258 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %257, i64 1, 2
  %259 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.Slice" %258)
  store ptr %259, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %260 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  store ptr %260, ptr @_llgo_main.stringReader, align 8
  %261 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %262 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 1 }, ptr %261, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %263 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  %264 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @19, i64 1 }, ptr %263, i64 16, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %266 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @20, i64 8 }, ptr %265, i64 24, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %267 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %268 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %267, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %262, ptr %268, align 8
  %269 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %267, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %264, ptr %269, align 8
  %270 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %267, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %266, ptr %270, align 8
  %271 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %267, 0
  %272 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %271, i64 3, 1
  %273 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %272, i64 3, 2
  %274 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 32, %"github.com/goplus/llgo/internal/runtime.Slice" %273)
  store ptr %274, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %275 = load ptr, ptr @"main.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %276 = load ptr, ptr @_llgo_int, align 8
  %277 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %279 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %280 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %279, 0
  %281 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %280, i64 0, 1
  %282 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %281, i64 0, 2
  %283 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %284 = getelementptr ptr, ptr %283, i64 0
  store ptr %276, ptr %284, align 8
  %285 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %283, 0
  %286 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %285, i64 1, 1
  %287 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %286, i64 1, 2
  %288 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %282, %"github.com/goplus/llgo/internal/runtime.Slice" %287, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %288)
  store ptr %288, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %289 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %290 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %289, 1
  %291 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %290, ptr @"main.(*stringReader).Len", 2
  %292 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %291, ptr @"main.(*stringReader).Len", 3
  %293 = load ptr, ptr @"[]_llgo_byte", align 8
  %294 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %295 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %294, 1
  %296 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %295, ptr @"main.(*stringReader).Read", 2
  %297 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %296, ptr @"main.(*stringReader).Read", 3
  %298 = load ptr, ptr @"[]_llgo_byte", align 8
  %299 = load ptr, ptr @"[]_llgo_byte", align 8
  %300 = load ptr, ptr @_llgo_int64, align 8
  %301 = load ptr, ptr @_llgo_int, align 8
  %302 = load ptr, ptr @_llgo_error, align 8
  %303 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %305 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %306 = getelementptr ptr, ptr %305, i64 0
  store ptr %299, ptr %306, align 8
  %307 = getelementptr ptr, ptr %305, i64 1
  store ptr %300, ptr %307, align 8
  %308 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %305, 0
  %309 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %308, i64 2, 1
  %310 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %309, i64 2, 2
  %311 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %312 = getelementptr ptr, ptr %311, i64 0
  store ptr %301, ptr %312, align 8
  %313 = getelementptr ptr, ptr %311, i64 1
  store ptr %302, ptr %313, align 8
  %314 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %311, 0
  %315 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %314, i64 2, 1
  %316 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %315, i64 2, 2
  %317 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %310, %"github.com/goplus/llgo/internal/runtime.Slice" %316, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %317)
  store ptr %317, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %318 = load ptr, ptr @"_llgo_func$TY5Etv7VBKM_-2um1BDEeQEE2lP06Pt6G54EuKiNC3c", align 8
  %319 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @22, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %318, 1
  %320 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %319, ptr @"main.(*stringReader).ReadAt", 2
  %321 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %320, ptr @"main.(*stringReader).ReadAt", 3
  %322 = load ptr, ptr @_llgo_byte, align 8
  %323 = load ptr, ptr @_llgo_error, align 8
  %324 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %325 = icmp eq ptr %324, null
  br i1 %325, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %326 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %327 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %326, 0
  %328 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %327, i64 0, 1
  %329 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %328, i64 0, 2
  %330 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %331 = getelementptr ptr, ptr %330, i64 0
  store ptr %322, ptr %331, align 8
  %332 = getelementptr ptr, ptr %330, i64 1
  store ptr %323, ptr %332, align 8
  %333 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %330, 0
  %334 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %333, i64 2, 1
  %335 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %334, i64 2, 2
  %336 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %329, %"github.com/goplus/llgo/internal/runtime.Slice" %335, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %336)
  store ptr %336, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %337 = load ptr, ptr @"_llgo_func$6bvVpCcGPUc3z_EmsQTHB0AVT1hP5-NNLVRgm43teCM", align 8
  %338 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @23, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %337, 1
  %339 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %338, ptr @"main.(*stringReader).ReadByte", 2
  %340 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %339, ptr @"main.(*stringReader).ReadByte", 3
  %341 = load ptr, ptr @_llgo_rune, align 8
  %342 = icmp eq ptr %341, null
  br i1 %342, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %343 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %343, ptr @_llgo_rune, align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %344 = load ptr, ptr @_llgo_rune, align 8
  %345 = load ptr, ptr @_llgo_rune, align 8
  %346 = load ptr, ptr @_llgo_int, align 8
  %347 = load ptr, ptr @_llgo_error, align 8
  %348 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %349 = icmp eq ptr %348, null
  br i1 %349, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %350 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %351 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %350, 0
  %352 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %351, i64 0, 1
  %353 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %352, i64 0, 2
  %354 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %355 = getelementptr ptr, ptr %354, i64 0
  store ptr %345, ptr %355, align 8
  %356 = getelementptr ptr, ptr %354, i64 1
  store ptr %346, ptr %356, align 8
  %357 = getelementptr ptr, ptr %354, i64 2
  store ptr %347, ptr %357, align 8
  %358 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %354, 0
  %359 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %358, i64 3, 1
  %360 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %359, i64 3, 2
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %353, %"github.com/goplus/llgo/internal/runtime.Slice" %360, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %361)
  store ptr %361, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %362 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %363 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @24, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %362, 1
  %364 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %363, ptr @"main.(*stringReader).ReadRune", 2
  %365 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %364, ptr @"main.(*stringReader).ReadRune", 3
  %366 = load ptr, ptr @_llgo_int64, align 8
  %367 = load ptr, ptr @_llgo_int, align 8
  %368 = load ptr, ptr @_llgo_int64, align 8
  %369 = load ptr, ptr @_llgo_error, align 8
  %370 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %371 = icmp eq ptr %370, null
  br i1 %371, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %372 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %373 = getelementptr ptr, ptr %372, i64 0
  store ptr %366, ptr %373, align 8
  %374 = getelementptr ptr, ptr %372, i64 1
  store ptr %367, ptr %374, align 8
  %375 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %372, 0
  %376 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %375, i64 2, 1
  %377 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %376, i64 2, 2
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %379 = getelementptr ptr, ptr %378, i64 0
  store ptr %368, ptr %379, align 8
  %380 = getelementptr ptr, ptr %378, i64 1
  store ptr %369, ptr %380, align 8
  %381 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %378, 0
  %382 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %381, i64 2, 1
  %383 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %382, i64 2, 2
  %384 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %377, %"github.com/goplus/llgo/internal/runtime.Slice" %383, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %384)
  store ptr %384, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %385 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %386 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @25, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %385, 1
  %387 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %386, ptr @"main.(*stringReader).Seek", 2
  %388 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %387, ptr @"main.(*stringReader).Seek", 3
  %389 = load ptr, ptr @_llgo_int64, align 8
  %390 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %391 = icmp eq ptr %390, null
  br i1 %391, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %392 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %393 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %392, 0
  %394 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %393, i64 0, 1
  %395 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %394, i64 0, 2
  %396 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %397 = getelementptr ptr, ptr %396, i64 0
  store ptr %389, ptr %397, align 8
  %398 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %396, 0
  %399 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %398, i64 1, 1
  %400 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %399, i64 1, 2
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %395, %"github.com/goplus/llgo/internal/runtime.Slice" %400, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %401)
  store ptr %401, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %402 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %403 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @26, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %402, 1
  %404 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %403, ptr @"main.(*stringReader).Size", 2
  %405 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %404, ptr @"main.(*stringReader).Size", 3
  %406 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %407 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @27, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %406, 1
  %408 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %407, ptr @"main.(*stringReader).UnreadByte", 2
  %409 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %408, ptr @"main.(*stringReader).UnreadByte", 3
  %410 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %411 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @28, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %410, 1
  %412 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %411, ptr @"main.(*stringReader).UnreadRune", 2
  %413 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %412, ptr @"main.(*stringReader).UnreadRune", 3
  %414 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %415 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %414, 1
  %416 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %415, ptr @"main.(*stringReader).WriteTo", 2
  %417 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %416, ptr @"main.(*stringReader).WriteTo", 3
  %418 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 400)
  %419 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %292, ptr %419, align 8
  %420 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %297, ptr %420, align 8
  %421 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %321, ptr %421, align 8
  %422 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 3
  store %"github.com/goplus/llgo/internal/abi.Method" %340, ptr %422, align 8
  %423 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 4
  store %"github.com/goplus/llgo/internal/abi.Method" %365, ptr %423, align 8
  %424 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 5
  store %"github.com/goplus/llgo/internal/abi.Method" %388, ptr %424, align 8
  %425 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 6
  store %"github.com/goplus/llgo/internal/abi.Method" %405, ptr %425, align 8
  %426 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 7
  store %"github.com/goplus/llgo/internal/abi.Method" %409, ptr %426, align 8
  %427 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 8
  store %"github.com/goplus/llgo/internal/abi.Method" %413, ptr %427, align 8
  %428 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %418, i64 9
  store %"github.com/goplus/llgo/internal/abi.Method" %417, ptr %428, align 8
  %429 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %418, 0
  %430 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %429, i64 10, 1
  %431 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %430, i64 10, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %260, ptr %275, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %431)
  %432 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @17, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  %433 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %432)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %433)
  store ptr %433, ptr @"*_llgo_main.stringReader", align 8
  %434 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %435 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %436 = icmp eq ptr %435, null
  br i1 %436, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %437 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %434, 1
  %438 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %439 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %437, ptr %439, align 8
  %440 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %438, 0
  %441 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %440, i64 1, 1
  %442 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %441, i64 1, 2
  %443 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.Slice" %442)
  store ptr %443, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  %444 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %444, ptr @_llgo_main.errorString, align 8
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %446 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @18, i64 1 }, ptr %445, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %447 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %448 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %447, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %446, ptr %448, align 8
  %449 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %447, 0
  %450 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %449, i64 1, 1
  %451 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %450, i64 1, 2
  %452 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %451)
  store ptr %452, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %453 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %454 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %455 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %454, 1
  %456 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %455, ptr @"main.(*errorString).Error", 2
  %457 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %456, ptr @"main.(*errorString).Error", 3
  %458 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %459 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %458, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %457, ptr %459, align 8
  %460 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %458, 0
  %461 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %460, i64 1, 1
  %462 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %461, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %444, ptr %453, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %462)
  %463 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @29, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %464 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %463)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %464)
  store ptr %464, ptr @"*_llgo_main.errorString", align 8
  %465 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %466 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %467 = icmp eq ptr %466, null
  br i1 %467, label %_llgo_65, label %_llgo_66

_llgo_65:                                         ; preds = %_llgo_64
  %468 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %465, 1
  %469 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %470 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %469, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %468, ptr %470, align 8
  %471 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %469, 0
  %472 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %471, i64 1, 1
  %473 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %472, i64 1, 2
  %474 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/internal/runtime.Slice" %473)
  store ptr %474, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_66

_llgo_66:                                         ; preds = %_llgo_65, %_llgo_64
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

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
