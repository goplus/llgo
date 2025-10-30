; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reader'
source_filename = "github.com/goplus/llgo/cl/_testgo/reader"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/reader.errorString" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/cl/_testgo/reader.stringReader" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/reader.EOF" = global %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite" = global %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testgo/reader.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/reader", align 1
@1 = private unnamed_addr constant [8 x i8] c"WriterTo", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [6 x i8] c"Writer", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@"[]_llgo_uint8" = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"Write", align 1
@_llgo_int64 = linkonce global ptr null, align 8
@"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [7 x i8] c"WriteTo", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [17 x i8] c"nopCloserWriterTo", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@9 = private unnamed_addr constant [4 x i8] c"Read", align 1
@"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.ReadCloser" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [10 x i8] c"ReadCloser", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [9 x i8] c"nopCloser", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [12 x i8] c"StringWriter", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@15 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@16 = private unnamed_addr constant [11 x i8] c"short write", align 1
@17 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [12 x i8] c"stringReader", align 1
@"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [1 x i8] c"s", align 1
@20 = private unnamed_addr constant [1 x i8] c"i", align 1
@21 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@22 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@_llgo_rune = linkonce global ptr null, align 8
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = linkonce global ptr null, align 8
@28 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@29 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = linkonce global ptr null, align 8
@31 = private unnamed_addr constant [122 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/reader.Reader -> github.com/goplus/llgo/cl/_testgo/reader.WriterTo failed", align 1
@32 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@33 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@34 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@35 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@36 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@37 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@38 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.NopCloser"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %3 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %2, ptr %1)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %4, align 8
  %7 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %6, ptr %8, align 8
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.ReadCloser", align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %9, ptr %7)
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %8, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12

_llgo_2:                                          ; preds = %_llgo_5
  %13 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %13, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %13, align 8
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %15, ptr %17, align 8
  %18 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.ReadCloser", align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %18, ptr %16)
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %17, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21

_llgo_3:                                          ; preds = %_llgo_0
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %23 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %23, ptr %1)
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %22, 1
  %27 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, 0
  %28 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %27, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %29 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %28, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %30 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %29, 0
  %31 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %29, 1
  br i1 %31, label %_llgo_1, label %_llgo_2
}

define { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 512)
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %1, i64 1, i64 512, i64 0, i64 0, i64 512)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_3, %_llgo_0
  %3 = phi %"github.com/goplus/llgo/runtime/internal/runtime.Slice" [ %2, %_llgo_0 ], [ %24, %_llgo_3 ], [ %61, %_llgo_6 ]
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %7, i64 1, i64 %6, i64 %4, i64 %5, i64 %6)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16(ptr %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  %18 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 0
  %19 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 1
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %21 = add i64 %20, %18
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %24 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %23, i64 1, i64 %22, i64 0, i64 %21, i64 %22)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %19)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %26, 1
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr null, 1
  %32 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  %33 = xor i1 %32, true
  br i1 %33, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %19)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %36, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %34)
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %39, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr %40, 1
  %43 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42)
  br i1 %43, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 1
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 2
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %_llgo_6, label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  %47 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %19, %_llgo_2 ], [ zeroinitializer, %_llgo_4 ]
  %48 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 0
  %49 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  ret { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %49

_llgo_6:                                          ; preds = %_llgo_3
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 0, ptr %51, align 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 1
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 1, 2
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 0
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, ptr %55, i64 %56, i64 1)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, 1
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, 2
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, 0
  %61 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %60, i64 1, i64 %59, i64 0, i64 %58, i64 %59)
  br label %_llgo_1
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %4 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %3, ptr %2)
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %40)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17

_llgo_2:                                          ; preds = %_llgo_5
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %21 = getelementptr ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = insertvalue { ptr, ptr } undef, ptr %22, 0
  %24 = insertvalue { ptr, ptr } %23, ptr %19, 1
  %25 = extractvalue { ptr, ptr } %24, 1
  %26 = extractvalue { ptr, ptr } %24, 0
  %27 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26(ptr %25, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  %28 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %27, 0
  %29 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %27, 1
  %30 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %28, 0
  %31 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %30, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31

_llgo_3:                                          ; preds = %_llgo_0
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %33 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %33, ptr %2)
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %32, 1
  %37 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, 0
  %38 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %37, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %39 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %38, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %40 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %39, 0
  %41 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %39, 1
  br i1 %41, label %_llgo_1, label %_llgo_2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  call void @"unicode/utf8.init"()
  call void @"github.com/goplus/llgo/cl/_testgo/reader.init$after"()
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 3 })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 11 })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 11 }, ptr %1, align 8
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %3 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %4, ptr %3)
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %0, 1
  %8 = call { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %9 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, 0
  %10 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, 1
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %5 = load ptr, ptr @_llgo_error, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %4)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12(ptr %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 0
  %15 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %13, 1
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %14, 0
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %7 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %6, ptr %5)
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %9, ptr %5)
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %8, 1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %20(ptr %19, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %22 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %21, 0
  %23 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %21, 1
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %22, 0
  %25 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25

_llgo_2:                                          ; preds = %_llgo_0
  %26 = load ptr, ptr @_llgo_string, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 122 }, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %27, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  unreachable
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  %13 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 0
  %14 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, 1
  %15 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %13, 0
  %16 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %16
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %0, align 8
  %3 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(%"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %2, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %4 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 0
  %5 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %3, 1
  %6 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %4, 0
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %6, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, 1
  %6 = icmp sge i64 %2, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 0

_llgo_2:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, 1
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = sub i64 %9, %11
  ret i64 %12
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %9 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %12, 1
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %12, i64 %14, i64 %15)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 0
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 1
  %19 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %17, i64 %18, i64 1)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %22, ptr %23, align 4
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %19, 0
  %25 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, i64 %2) {
_llgo_0:
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 37 })
  %5 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %5

_llgo_2:                                          ; preds = %_llgo_0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, 1
  %9 = icmp sge i64 %2, %8
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %11 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11

_llgo_4:                                          ; preds = %_llgo_2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 1
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13, i64 %2, i64 %14)
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, 0
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, 1
  %18 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %16, i64 %17, i64 1)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %22 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %21, %_llgo_5 ]
  %23 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %18, 0
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %23, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24
}

define { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %9 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i8 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 0
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 1
  %16 = icmp slt i64 %11, 0
  %17 = icmp sge i64 %11, %15
  %18 = or i1 %17, %16
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %18)
  %19 = getelementptr inbounds i8, ptr %14, i64 %11
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 4
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %23, ptr %24, align 4
  %25 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %20, 0
  %26 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %25, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26
}

define { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, 1
  %6 = icmp sge i64 %2, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %9 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i32 0, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %9

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 %11, ptr %12, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 0
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 1
  %19 = icmp slt i64 %14, 0
  %20 = icmp sge i64 %14, %18
  %21 = or i1 %20, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %21)
  %22 = getelementptr inbounds i8, ptr %17, i64 %14
  %23 = load i8, ptr %22, align 1
  %24 = icmp ult i8 %23, -128
  br i1 %24, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %27, ptr %28, align 4
  %29 = sext i8 %23 to i32
  %30 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %29, 0
  %31 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %30, i64 1, 1
  %32 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %32

_llgo_4:                                          ; preds = %_llgo_2
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %34 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %33, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 4
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %34, 1
  %38 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %34, i64 %36, i64 %37)
  %39 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %38)
  %40 = extractvalue { i32, i64 } %39, 0
  %41 = extractvalue { i32, i64 } %39, 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %43 = load i64, ptr %42, align 4
  %44 = add i64 %43, %41
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %44, ptr %45, align 4
  %46 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %40, 0
  %47 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %46, i64 %41, 1
  %48 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %47, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  ret { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %48
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
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
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %8, %1
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %10 = icmp eq i64 %2, 1
  br i1 %10, label %_llgo_3, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_6
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %12, 1
  %14 = add i64 %13, %1
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_4
  %15 = icmp eq i64 %2, 2
  br i1 %15, label %_llgo_5, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 34 })
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 37 })
  %19 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19

_llgo_9:                                          ; preds = %_llgo_1
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %5, ptr %20, align 4
  %21 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %5, 0
  %22 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %21, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, 1
  ret i64 %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 48 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = sub i64 %7, 1
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %8, ptr %9, align 4
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 4
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 49 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 4
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 62 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8

_llgo_4:                                          ; preds = %_llgo_2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %10, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %12, align 4
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  store i64 -1, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, 1
  %8 = icmp sge i64 %4, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %10, 1
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %10, i64 %12, i64 %13)
  %15 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" %14)
  %16 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, 0
  %17 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %15, 1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 1
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 48 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  %26 = add i64 %25, %16
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 1
  store i64 %26, ptr %27, align 4
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 1
  %29 = icmp ne i64 %16, %28
  br i1 %29, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  %30 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %31 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %17, %_llgo_4 ], [ %17, %_llgo_7 ], [ %30, %_llgo_5 ]
  %32 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %16, 0
  %33 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %32, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %33

_llgo_7:                                          ; preds = %_llgo_4
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %17)
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %35, 1
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr null, 1
  %41 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
  br i1 %41, label %_llgo_5, label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/cl/_testgo/reader.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 })
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_uint8, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %8, ptr @_llgo_uint8, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_uint8, align 8
  %10 = load ptr, ptr @"[]_llgo_uint8", align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %12)
  store ptr %13, ptr @"[]_llgo_uint8", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %14 = load ptr, ptr @"[]_llgo_uint8", align 8
  %15 = load ptr, ptr @_llgo_int, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %17, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %18 = load ptr, ptr @_llgo_int, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
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
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %24, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 0, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 0, 2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr ptr, ptr %33, i64 0
  store ptr %32, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 1, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 2
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %38)
  store ptr %38, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %39 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %21, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %39, 1
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %42 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %41, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %40, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 1, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %19, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %46 = load ptr, ptr @_llgo_error, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %48 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %50)
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %53 = getelementptr ptr, ptr %52, i64 0
  store ptr %51, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 1, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 2
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %59 = getelementptr ptr, ptr %58, i64 0
  store ptr %57, ptr %59, align 8
  %60 = getelementptr ptr, ptr %58, i64 1
  store ptr %47, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %58, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 2, 2
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %64)
  store ptr %64, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %65 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %5, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %65, 1
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %68 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %67, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %66, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i64 1, 1
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %72 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %73 = load ptr, ptr @_llgo_int64, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  store ptr %75, ptr @_llgo_int64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %76 = load ptr, ptr @_llgo_int64, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %79 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %82 = getelementptr ptr, ptr %81, i64 0
  store ptr %77, ptr %82, align 8
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i64 1, 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, i64 1, 2
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %88 = getelementptr ptr, ptr %87, i64 0
  store ptr %86, ptr %88, align 8
  %89 = getelementptr ptr, ptr %87, i64 1
  store ptr %78, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %87, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 2, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 2, 2
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %93)
  store ptr %93, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %94 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  br i1 %2, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %94, 1
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %97 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %96, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %95, ptr %97, align 8
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %96, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 1, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 17 }, i64 25, i64 16, i64 3, i64 3)
  store ptr %101, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  %103 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  store ptr %102, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %105 = load ptr, ptr @"[]_llgo_uint8", align 8
  %106 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %104, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %106, 1
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %109 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %108, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %107, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %108, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 1, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %102, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112)
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %113 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  %115 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %114, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %116, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %115, ptr %117, align 8
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %116, 0
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 1, 1
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, i64 1, 2
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120)
  store ptr %121, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %122 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %124 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %126, 0
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, i64 0, 1
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %128, i64 0, 2
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %131 = getelementptr ptr, ptr %130, i64 0
  store ptr %123, ptr %131, align 8
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %130, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %132, i64 1, 1
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 1, 2
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %129, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %135)
  store ptr %135, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %136 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %137 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %136, 1
  %138 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %137, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %139 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %138, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 3
  %140 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %136, 1
  %141 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %140, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %142 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %141, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close", 3
  %143 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %144 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %143, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %144, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %146 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %145, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 3
  %147 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %143, 1
  %148 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %147, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %149 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %148, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read", 3
  %150 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %151 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %150, 1
  %152 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %151, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %153 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %152, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 3
  %154 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %150, 1
  %155 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %154, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %156 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %155, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo", 3
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %158 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %157, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %142, ptr %158, align 8
  %159 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %157, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %149, ptr %159, align 8
  %160 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %157, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %156, ptr %160, align 8
  %161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %157, 0
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %161, i64 3, 1
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %162, i64 3, 2
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %165 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %164, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %139, ptr %165, align 8
  %166 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %164, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %146, ptr %166, align 8
  %167 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %164, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %153, ptr %167, align 8
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %164, 0
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %168, i64 3, 1
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %169, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %101, ptr %122, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %170)
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 10 })
  %172 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.ReadCloser", align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  store ptr %171, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.ReadCloser", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %174 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %175 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %173, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %176 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef }, ptr %174, 1
  %177 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %175, 1
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %179 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %178, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %176, ptr %179, align 8
  %180 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %178, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %177, ptr %180, align 8
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %178, 0
  %182 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %181, i64 2, 1
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %171, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183)
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 9 }, i64 25, i64 16, i64 2, i64 2)
  store ptr %184, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %185 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %186 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %187 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %186, 1
  %188 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %187, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %189 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %188, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 3
  %190 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %186, 1
  %191 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %190, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %192 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %191, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close", 3
  %193 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %194 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %193, 1
  %195 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %194, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %196 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %195, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 3
  %197 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %193, 1
  %198 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %197, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %199 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %198, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read", 3
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %201 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %200, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %192, ptr %201, align 8
  %202 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %200, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %199, ptr %202, align 8
  %203 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %200, 0
  %204 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %203, i64 2, 1
  %205 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %204, i64 2, 2
  %206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %207 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %206, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %189, ptr %207, align 8
  %208 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %206, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %196, ptr %208, align 8
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %206, 0
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209, i64 2, 1
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %184, ptr %185, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %205, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %211)
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 12 })
  %213 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %214 = icmp eq ptr %213, null
  br i1 %214, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %212, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %216 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %220 = getelementptr ptr, ptr %219, i64 0
  store ptr %218, ptr %220, align 8
  %221 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %219, 0
  %222 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %221, i64 1, 1
  %223 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %222, i64 1, 2
  %224 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %226 = getelementptr ptr, ptr %225, i64 0
  store ptr %224, ptr %226, align 8
  %227 = getelementptr ptr, ptr %225, i64 1
  store ptr %215, ptr %227, align 8
  %228 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %225, 0
  %229 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %228, i64 2, 1
  %230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %229, i64 2, 2
  %231 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %230, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %231)
  store ptr %231, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %232 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br i1 %214, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %233 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr undef }, ptr %232, 1
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %235 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %234, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %233, ptr %235, align 8
  %236 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %234, 0
  %237 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %236, i64 1, 1
  %238 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %237, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %212, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %238)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %239 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  store ptr %239, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %240 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %241 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 }, ptr %240, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %242 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %243 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 1 }, ptr %242, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %245 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 8 }, ptr %244, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %246 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %247 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %246, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %241, ptr %247, align 8
  %248 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %246, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %243, ptr %248, align 8
  %249 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %246, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %245, ptr %249, align 8
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %246, 0
  %251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %250, i64 3, 1
  %252 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %251, i64 3, 2
  %253 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %252)
  store ptr %253, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %254 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %255 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %257 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %258 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %257, 0
  %259 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %258, i64 0, 1
  %260 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %259, i64 0, 2
  %261 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %262 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %263 = getelementptr ptr, ptr %262, i64 0
  store ptr %261, ptr %263, align 8
  %264 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %262, 0
  %265 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %264, i64 1, 1
  %266 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %265, i64 1, 2
  %267 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %260, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %267)
  store ptr %267, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %268 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %269 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %268, 1
  %270 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %269, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 2
  %271 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %270, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 3
  %272 = load ptr, ptr @"[]_llgo_uint8", align 8
  %273 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %274 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %273, 1
  %275 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %274, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 2
  %276 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %275, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 3
  %277 = load ptr, ptr @"[]_llgo_uint8", align 8
  %278 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %279 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %281 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %282 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %281)
  %283 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %284 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %285 = getelementptr ptr, ptr %284, i64 0
  store ptr %282, ptr %285, align 8
  %286 = getelementptr ptr, ptr %284, i64 1
  store ptr %283, ptr %286, align 8
  %287 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %284, 0
  %288 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %287, i64 2, 1
  %289 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %288, i64 2, 2
  %290 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %291 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %292 = getelementptr ptr, ptr %291, i64 0
  store ptr %290, ptr %292, align 8
  %293 = getelementptr ptr, ptr %291, i64 1
  store ptr %278, ptr %293, align 8
  %294 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %291, 0
  %295 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %294, i64 2, 1
  %296 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %295, i64 2, 2
  %297 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %289, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %296, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %297)
  store ptr %297, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %298 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %299 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %298, 1
  %300 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %299, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 2
  %301 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %300, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 3
  %302 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %303 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %305 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %306 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %305, 0
  %307 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %306, i64 0, 1
  %308 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %307, i64 0, 2
  %309 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %310 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %311 = getelementptr ptr, ptr %310, i64 0
  store ptr %309, ptr %311, align 8
  %312 = getelementptr ptr, ptr %310, i64 1
  store ptr %302, ptr %312, align 8
  %313 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %310, 0
  %314 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %313, i64 2, 1
  %315 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %314, i64 2, 2
  %316 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %308, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %315, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %316)
  store ptr %316, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %317 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %318 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %317, 1
  %319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %318, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 2
  %320 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %319, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 3
  %321 = load ptr, ptr @_llgo_rune, align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %323 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %323, ptr @_llgo_rune, align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %324 = load ptr, ptr @_llgo_rune, align 8
  %325 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %326 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %328 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %329 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %328, 0
  %330 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %329, i64 0, 1
  %331 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %330, i64 0, 2
  %332 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  %333 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %334 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %335 = getelementptr ptr, ptr %334, i64 0
  store ptr %332, ptr %335, align 8
  %336 = getelementptr ptr, ptr %334, i64 1
  store ptr %333, ptr %336, align 8
  %337 = getelementptr ptr, ptr %334, i64 2
  store ptr %325, ptr %337, align 8
  %338 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %334, 0
  %339 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %338, i64 3, 1
  %340 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %339, i64 3, 2
  %341 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %331, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %340, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %341)
  store ptr %341, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %342 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %343 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %342, 1
  %344 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %343, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 2
  %345 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %344, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 3
  %346 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %347 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %349 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %350 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %351 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %352 = getelementptr ptr, ptr %351, i64 0
  store ptr %349, ptr %352, align 8
  %353 = getelementptr ptr, ptr %351, i64 1
  store ptr %350, ptr %353, align 8
  %354 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %351, 0
  %355 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %354, i64 2, 1
  %356 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %355, i64 2, 2
  %357 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %358 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %359 = getelementptr ptr, ptr %358, i64 0
  store ptr %357, ptr %359, align 8
  %360 = getelementptr ptr, ptr %358, i64 1
  store ptr %346, ptr %360, align 8
  %361 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %358, 0
  %362 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %361, i64 2, 1
  %363 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %362, i64 2, 2
  %364 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %356, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %363, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %364)
  store ptr %364, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %365 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %366 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %365, 1
  %367 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %366, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 2
  %368 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %367, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 3
  %369 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %370 = icmp eq ptr %369, null
  br i1 %370, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %372 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %371, 0
  %373 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %372, i64 0, 1
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %373, i64 0, 2
  %375 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %377 = getelementptr ptr, ptr %376, i64 0
  store ptr %375, ptr %377, align 8
  %378 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %376, 0
  %379 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %378, i64 1, 1
  %380 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %379, i64 1, 2
  %381 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %380, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %381)
  store ptr %381, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %382 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %383 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %382, 1
  %384 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %383, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 2
  %385 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %384, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 3
  %386 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %387 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %386, 1
  %388 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %387, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 2
  %389 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %388, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 3
  %390 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %391 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %390, 1
  %392 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %391, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 2
  %393 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %392, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 3
  %394 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %395 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %394, 1
  %396 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %395, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 2
  %397 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %396, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 3
  %398 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 400)
  %399 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %271, ptr %399, align 8
  %400 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %276, ptr %400, align 8
  %401 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %301, ptr %401, align 8
  %402 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %320, ptr %402, align 8
  %403 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %345, ptr %403, align 8
  %404 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %368, ptr %404, align 8
  %405 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %385, ptr %405, align 8
  %406 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %389, ptr %406, align 8
  %407 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %393, ptr %407, align 8
  %408 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %398, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %397, ptr %408, align 8
  %409 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %398, 0
  %410 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %409, i64 10, 1
  %411 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %410, i64 10, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %239, ptr %254, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %411)
  %412 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  %413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %412)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %413)
  store ptr %413, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %414 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %414, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %415 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %416 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 }, ptr %415, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %417 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %418 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %417, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %416, ptr %418, align 8
  %419 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %417, 0
  %420 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %419, i64 1, 1
  %421 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %420, i64 1, 2
  %422 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %421)
  store ptr %422, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %423 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %424 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %425 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %424, 1
  %426 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %425, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 2
  %427 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %426, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 3
  %428 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %429 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %428, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %427, ptr %429, align 8
  %430 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %428, 0
  %431 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %430, i64 1, 1
  %432 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %431, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %414, ptr %423, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %432)
  %433 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %434 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %433)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %434)
  store ptr %434, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"unicode/utf8.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
