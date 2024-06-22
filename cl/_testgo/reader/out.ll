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
@"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE" = linkonce global ptr null, align 8
@"*_llgo_main.errorString" = global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@19 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@20 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@21 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@22 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@23 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@24 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@25 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

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
  store ptr @18, ptr %30, align 8
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
  store ptr @19, ptr %5, align 8
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
  store ptr @20, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 34, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.newError(%"github.com/goplus/llgo/internal/runtime.String" %19)
  %mrv = insertvalue { i64, %"github.com/goplus/llgo/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/internal/runtime.iface" poison }, %"github.com/goplus/llgo/internal/runtime.iface" %20, 1
  ret { i64, %"github.com/goplus/llgo/internal/runtime.iface" } %mrv

_llgo_8:                                          ; preds = %_llgo_1
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @21, ptr %22, align 8
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
  store ptr @22, ptr %5, align 8
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
  store ptr @23, ptr %5, align 8
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
  store ptr @24, ptr %13, align 8
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
  store ptr @25, ptr %21, align 8
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
  %188 = load ptr, ptr @_llgo_main.Reader, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @7, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 4, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %194, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %193, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %194, i32 0, i32 1
  store ptr %187, ptr %196, align 8
  %197 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %194, align 8
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %199 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %198, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %197, ptr %199, align 8
  %200 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %200, i32 0, i32 0
  store ptr %198, ptr %201, align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %200, i32 0, i32 1
  store i64 1, ptr %202, align 4
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %200, i32 0, i32 2
  store i64 1, ptr %203, align 4
  %204 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %200, align 8
  %205 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %205, i32 0, i32 0
  store ptr @1, ptr %206, align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %205, i32 0, i32 1
  store i64 4, ptr %207, align 4
  %208 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %205, align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr @8, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 11, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %208, %"github.com/goplus/llgo/internal/runtime.String" %212, %"github.com/goplus/llgo/internal/runtime.Slice" %204)
  store ptr %213, ptr @_llgo_main.Reader, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %214 = load ptr, ptr @_llgo_main.Reader, align 8
  %215 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 0
  store ptr @9, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %217, i32 0, i32 1
  store i64 6, ptr %219, align 4
  %220 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %217, align 8
  %221 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 0
  store ptr null, ptr %222, align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %221, i32 0, i32 1
  store i64 0, ptr %223, align 4
  %224 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %221, align 8
  %225 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %220, ptr %214, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %224, i1 true)
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 0
  store ptr @1, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %226, i32 0, i32 1
  store i64 4, ptr %228, align 4
  %229 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %226, align 8
  %230 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %231 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %230, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %225, ptr %231, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 0
  store ptr %230, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 1
  store i64 1, ptr %234, align 4
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 2
  store i64 1, ptr %235, align 4
  %236 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, align 8
  %237 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %229, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %236)
  store ptr %237, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %238 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 0
  store ptr @10, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 1
  store i64 5, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %239, align 8
  %243 = load ptr, ptr @_llgo_error, align 8
  %244 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, i32 0, i32 0
  store ptr %246, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, i32 0, i32 1
  store i64 0, ptr %249, align 4
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, i32 0, i32 2
  store i64 0, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %247, align 8
  %252 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %253 = getelementptr ptr, ptr %252, i64 0
  store ptr %243, ptr %253, align 8
  %254 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, i32 0, i32 0
  store ptr %252, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, i32 0, i32 1
  store i64 1, ptr %256, align 4
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, i32 0, i32 2
  store i64 1, ptr %257, align 4
  %258 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, align 8
  %259 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %251, %"github.com/goplus/llgo/internal/runtime.Slice" %258, i1 false)
  store ptr %259, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %260 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %261 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %242, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 1
  store ptr %260, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %265, align 8
  %266 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %261, align 8
  %267 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %242, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 1
  store ptr %260, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Close", ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Close, ptr %271, align 8
  %272 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %267, align 8
  %273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 0
  store ptr @7, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 1
  store i64 4, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %273, align 8
  %277 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %278 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %278, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %276, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %278, i32 0, i32 1
  store ptr %277, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %278, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %278, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %282, align 8
  %283 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %278, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %276, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 1
  store ptr %277, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).Read", ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %284, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.Read, ptr %288, align 8
  %289 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %284, align 8
  %290 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %290, i32 0, i32 0
  store ptr @5, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %290, i32 0, i32 1
  store i64 7, ptr %292, align 4
  %293 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %290, align 8
  %294 = load ptr, ptr @"_llgo_func$MrYxYl10p_I07B55pBsGw9la9zbzU2vGDPLWrT714Uk", align 8
  %295 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %293, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 1
  store ptr %294, ptr %297, align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %295, i32 0, i32 3
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %299, align 8
  %300 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %295, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %293, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 1
  store ptr %294, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 2
  store ptr @"main.(*nopCloserWriterTo).WriteTo", ptr %304, align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %301, i32 0, i32 3
  store ptr @main.nopCloserWriterTo.WriteTo, ptr %305, align 8
  %306 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %301, align 8
  %307 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %308 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %272, ptr %308, align 8
  %309 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %289, ptr %309, align 8
  %310 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %306, ptr %310, align 8
  %311 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, i32 0, i32 0
  store ptr %307, ptr %312, align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, i32 0, i32 1
  store i64 3, ptr %313, align 4
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, i32 0, i32 2
  store i64 3, ptr %314, align 4
  %315 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %311, align 8
  %316 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 120)
  %317 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %316, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %266, ptr %317, align 8
  %318 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %316, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %283, ptr %318, align 8
  %319 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %316, i64 2
  store %"github.com/goplus/llgo/internal/abi.Method" %300, ptr %319, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, i32 0, i32 0
  store ptr %316, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, i32 0, i32 1
  store i64 3, ptr %322, align 4
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, i32 0, i32 2
  store i64 3, ptr %323, align 4
  %324 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %320, align 8
  %325 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %325, i32 0, i32 0
  store ptr @1, ptr %326, align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %325, i32 0, i32 1
  store i64 4, ptr %327, align 4
  %328 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %325, align 8
  %329 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 0
  store ptr @11, ptr %330, align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %329, i32 0, i32 1
  store i64 17, ptr %331, align 4
  %332 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %329, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %186, %"github.com/goplus/llgo/internal/runtime.String" %328, %"github.com/goplus/llgo/internal/runtime.String" %332, ptr %238, %"github.com/goplus/llgo/internal/runtime.Slice" %315, %"github.com/goplus/llgo/internal/runtime.Slice" %324)
  %333 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %334 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %335 = load ptr, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  %336 = icmp eq ptr %335, null
  br i1 %336, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 0
  store ptr @10, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 1
  store i64 5, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %337, align 8
  %341 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %341, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %340, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %341, i32 0, i32 1
  store ptr %333, ptr %343, align 8
  %344 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %341, align 8
  %345 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %345, i32 0, i32 0
  store ptr @7, ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %345, i32 0, i32 1
  store i64 4, ptr %347, align 4
  %348 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %345, align 8
  %349 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %349, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %348, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %349, i32 0, i32 1
  store ptr %334, ptr %351, align 8
  %352 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %349, align 8
  %353 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %354 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %353, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %344, ptr %354, align 8
  %355 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %353, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %352, ptr %355, align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %356, i32 0, i32 0
  store ptr %353, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %356, i32 0, i32 1
  store i64 2, ptr %358, align 4
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %356, i32 0, i32 2
  store i64 2, ptr %359, align 4
  %360 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %356, align 8
  %361 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %361, i32 0, i32 0
  store ptr @1, ptr %362, align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %361, i32 0, i32 1
  store i64 4, ptr %363, align 4
  %364 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %361, align 8
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr null, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 0, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %364, %"github.com/goplus/llgo/internal/runtime.String" %368, %"github.com/goplus/llgo/internal/runtime.Slice" %360)
  store ptr %369, ptr @"_llgo_iface$L2Ik-AJcd0jsoBw5fQ07pQpfUM-kh78Wn2bOeak6M3I", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %370 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %370, ptr @_llgo_main.nopCloser, align 8
  %371 = load ptr, ptr @"_llgo_struct$_3ow4zXXILqvC0WDqDRNq5DPhjE1DInJgN924VHWc2Y", align 8
  %372 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %373 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %372, i32 0, i32 0
  store ptr @10, ptr %373, align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %372, i32 0, i32 1
  store i64 5, ptr %374, align 4
  %375 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %372, align 8
  %376 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %377 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %377, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %375, ptr %378, align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %377, i32 0, i32 1
  store ptr %376, ptr %379, align 8
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %377, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %380, align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %377, i32 0, i32 3
  store ptr @"main.(*nopCloser).Close", ptr %381, align 8
  %382 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %377, align 8
  %383 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %375, ptr %384, align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 1
  store ptr %376, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 2
  store ptr @"main.(*nopCloser).Close", ptr %386, align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %383, i32 0, i32 3
  store ptr @main.nopCloser.Close, ptr %387, align 8
  %388 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %383, align 8
  %389 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %389, i32 0, i32 0
  store ptr @7, ptr %390, align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %389, i32 0, i32 1
  store i64 4, ptr %391, align 4
  %392 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %389, align 8
  %393 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %394 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %394, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %392, ptr %395, align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %394, i32 0, i32 1
  store ptr %393, ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %394, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %397, align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %394, i32 0, i32 3
  store ptr @"main.(*nopCloser).Read", ptr %398, align 8
  %399 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %394, align 8
  %400 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %392, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 1
  store ptr %393, ptr %402, align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 2
  store ptr @"main.(*nopCloser).Read", ptr %403, align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %400, i32 0, i32 3
  store ptr @main.nopCloser.Read, ptr %404, align 8
  %405 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %400, align 8
  %406 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %407 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %388, ptr %407, align 8
  %408 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %405, ptr %408, align 8
  %409 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %409, i32 0, i32 0
  store ptr %406, ptr %410, align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %409, i32 0, i32 1
  store i64 2, ptr %411, align 4
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %409, i32 0, i32 2
  store i64 2, ptr %412, align 4
  %413 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %409, align 8
  %414 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %415 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %382, ptr %415, align 8
  %416 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %414, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %399, ptr %416, align 8
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, i32 0, i32 0
  store ptr %414, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, i32 0, i32 1
  store i64 2, ptr %419, align 4
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, i32 0, i32 2
  store i64 2, ptr %420, align 4
  %421 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %417, align 8
  %422 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 0
  store ptr @1, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 1
  store i64 4, ptr %424, align 4
  %425 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %422, align 8
  %426 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %426, i32 0, i32 0
  store ptr @12, ptr %427, align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %426, i32 0, i32 1
  store i64 9, ptr %428, align 4
  %429 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %426, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %370, %"github.com/goplus/llgo/internal/runtime.String" %425, %"github.com/goplus/llgo/internal/runtime.String" %429, ptr %371, %"github.com/goplus/llgo/internal/runtime.Slice" %413, %"github.com/goplus/llgo/internal/runtime.Slice" %421)
  %430 = load ptr, ptr @_llgo_string, align 8
  %431 = load ptr, ptr @_llgo_int, align 8
  %432 = load ptr, ptr @_llgo_error, align 8
  %433 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %434 = icmp eq ptr %433, null
  br i1 %434, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %435 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %436 = getelementptr ptr, ptr %435, i64 0
  store ptr %430, ptr %436, align 8
  %437 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, i32 0, i32 0
  store ptr %435, ptr %438, align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, i32 0, i32 1
  store i64 1, ptr %439, align 4
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, i32 0, i32 2
  store i64 1, ptr %440, align 4
  %441 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %437, align 8
  %442 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %443 = getelementptr ptr, ptr %442, i64 0
  store ptr %431, ptr %443, align 8
  %444 = getelementptr ptr, ptr %442, i64 1
  store ptr %432, ptr %444, align 8
  %445 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, i32 0, i32 0
  store ptr %442, ptr %446, align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, i32 0, i32 1
  store i64 2, ptr %447, align 4
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, i32 0, i32 2
  store i64 2, ptr %448, align 4
  %449 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %445, align 8
  %450 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %441, %"github.com/goplus/llgo/internal/runtime.Slice" %449, i1 false)
  store ptr %450, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %451 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %452 = load ptr, ptr @_llgo_main.StringWriter, align 8
  %453 = icmp eq ptr %452, null
  br i1 %453, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %454 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 0
  store ptr @13, ptr %455, align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %454, i32 0, i32 1
  store i64 11, ptr %456, align 4
  %457 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %454, align 8
  %458 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %458, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %457, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %458, i32 0, i32 1
  store ptr %451, ptr %460, align 8
  %461 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %458, align 8
  %462 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %463 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %462, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %461, ptr %463, align 8
  %464 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %464, i32 0, i32 0
  store ptr %462, ptr %465, align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %464, i32 0, i32 1
  store i64 1, ptr %466, align 4
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %464, i32 0, i32 2
  store i64 1, ptr %467, align 4
  %468 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %464, align 8
  %469 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 0
  store ptr @1, ptr %470, align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 1
  store i64 4, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %469, align 8
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 0
  store ptr @14, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 1
  store i64 17, ptr %475, align 4
  %476 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %473, align 8
  %477 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %472, %"github.com/goplus/llgo/internal/runtime.String" %476, %"github.com/goplus/llgo/internal/runtime.Slice" %468)
  store ptr %477, ptr @_llgo_main.StringWriter, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %478 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %479 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %480 = icmp eq ptr %479, null
  br i1 %480, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %481 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %482 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %481, i32 0, i32 0
  store ptr @13, ptr %482, align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %481, i32 0, i32 1
  store i64 11, ptr %483, align 4
  %484 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %481, align 8
  %485 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %486 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %485, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %484, ptr %486, align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %485, i32 0, i32 1
  store ptr %478, ptr %487, align 8
  %488 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %485, align 8
  %489 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %490 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %489, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %488, ptr %490, align 8
  %491 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %491, i32 0, i32 0
  store ptr %489, ptr %492, align 8
  %493 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %491, i32 0, i32 1
  store i64 1, ptr %493, align 4
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %491, i32 0, i32 2
  store i64 1, ptr %494, align 4
  %495 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %491, align 8
  %496 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %497 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %496, i32 0, i32 0
  store ptr @1, ptr %497, align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %496, i32 0, i32 1
  store i64 4, ptr %498, align 4
  %499 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %496, align 8
  %500 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %501 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %500, i32 0, i32 0
  store ptr null, ptr %501, align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %500, i32 0, i32 1
  store i64 0, ptr %502, align 4
  %503 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %500, align 8
  %504 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %499, %"github.com/goplus/llgo/internal/runtime.String" %503, %"github.com/goplus/llgo/internal/runtime.Slice" %495)
  store ptr %504, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %505 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 10)
  %506 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %505)
  store ptr %506, ptr @"*_llgo_main.stringReader", align 8
  %507 = load ptr, ptr @"_llgo_func$06yPPin-fnDnxFKkLLcJ1GEUhIobjPimde7T_Id_hmY", align 8
  %508 = load ptr, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  %509 = icmp eq ptr %508, null
  br i1 %509, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %510 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %511 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %510, i32 0, i32 0
  store ptr @7, ptr %511, align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %510, i32 0, i32 1
  store i64 4, ptr %512, align 4
  %513 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %510, align 8
  %514 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %514, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %513, ptr %515, align 8
  %516 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %514, i32 0, i32 1
  store ptr %507, ptr %516, align 8
  %517 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %514, align 8
  %518 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %519 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %518, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %517, ptr %519, align 8
  %520 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %521 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %520, i32 0, i32 0
  store ptr %518, ptr %521, align 8
  %522 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %520, i32 0, i32 1
  store i64 1, ptr %522, align 4
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %520, i32 0, i32 2
  store i64 1, ptr %523, align 4
  %524 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %520, align 8
  %525 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %525, i32 0, i32 0
  store ptr @1, ptr %526, align 8
  %527 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %525, i32 0, i32 1
  store i64 4, ptr %527, align 4
  %528 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %525, align 8
  %529 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %529, i32 0, i32 0
  store ptr null, ptr %530, align 8
  %531 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %529, i32 0, i32 1
  store i64 0, ptr %531, align 4
  %532 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %529, align 8
  %533 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %528, %"github.com/goplus/llgo/internal/runtime.String" %532, %"github.com/goplus/llgo/internal/runtime.Slice" %524)
  store ptr %533, ptr @"_llgo_iface$OFO8Us9n8ajWCabGedeuoJ-Za2zAMk4Jh0FunAcUCFE", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %534 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1)
  %535 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %534)
  store ptr %535, ptr @"*_llgo_main.errorString", align 8
  %536 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %537 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %538 = icmp eq ptr %537, null
  br i1 %538, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %539 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %539, i32 0, i32 0
  store ptr @0, ptr %540, align 8
  %541 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %539, i32 0, i32 1
  store i64 5, ptr %541, align 4
  %542 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %539, align 8
  %543 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %544 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %543, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %542, ptr %544, align 8
  %545 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %543, i32 0, i32 1
  store ptr %536, ptr %545, align 8
  %546 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %543, align 8
  %547 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %548 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %547, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %546, ptr %548, align 8
  %549 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %550 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %549, i32 0, i32 0
  store ptr %547, ptr %550, align 8
  %551 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %549, i32 0, i32 1
  store i64 1, ptr %551, align 4
  %552 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %549, i32 0, i32 2
  store i64 1, ptr %552, align 4
  %553 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %549, align 8
  %554 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %555 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %554, i32 0, i32 0
  store ptr @1, ptr %555, align 8
  %556 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %554, i32 0, i32 1
  store i64 4, ptr %556, align 4
  %557 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %554, align 8
  %558 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %559 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %558, i32 0, i32 0
  store ptr null, ptr %559, align 8
  %560 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %558, i32 0, i32 1
  store i64 0, ptr %560, align 4
  %561 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %558, align 8
  %562 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %557, %"github.com/goplus/llgo/internal/runtime.String" %561, %"github.com/goplus/llgo/internal/runtime.Slice" %553)
  store ptr %562, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

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
