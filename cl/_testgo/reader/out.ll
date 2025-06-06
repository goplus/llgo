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
@"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [17 x i8] c"nopCloserWriterTo", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"Reader", align 1
@9 = private unnamed_addr constant [4 x i8] c"Read", align 1
@"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [5 x i8] c"Close", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [9 x i8] c"nopCloser", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [12 x i8] c"StringWriter", align 1
@"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [11 x i8] c"WriteString", align 1
@"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [3 x i8] c"EOF", align 1
@15 = private unnamed_addr constant [11 x i8] c"short write", align 1
@16 = private unnamed_addr constant [11 x i8] c"hello world", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [12 x i8] c"stringReader", align 1
@"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [1 x i8] c"s", align 1
@19 = private unnamed_addr constant [1 x i8] c"i", align 1
@20 = private unnamed_addr constant [8 x i8] c"prevRune", align 1
@21 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [6 x i8] c"ReadAt", align 1
@"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [8 x i8] c"ReadByte", align 1
@"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ" = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [8 x i8] c"ReadRune", align 1
@_llgo_rune = linkonce global ptr null, align 8
@"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU" = linkonce global ptr null, align 8
@25 = private unnamed_addr constant [4 x i8] c"Seek", align 1
@"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms" = linkonce global ptr null, align 8
@26 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug" = linkonce global ptr null, align 8
@27 = private unnamed_addr constant [10 x i8] c"UnreadByte", align 1
@28 = private unnamed_addr constant [10 x i8] c"UnreadRune", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader" = linkonce global ptr null, align 8
@"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = linkonce global ptr null, align 8
@29 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@30 = private unnamed_addr constant [122 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/reader.Reader -> github.com/goplus/llgo/cl/_testgo/reader.WriterTo failed", align 1
@31 = private unnamed_addr constant [37 x i8] c"stringsReader.ReadAt: negative offset", align 1
@32 = private unnamed_addr constant [34 x i8] c"stringsReader.Seek: invalid whence", align 1
@33 = private unnamed_addr constant [37 x i8] c"stringsReader.Seek: negative position", align 1
@34 = private unnamed_addr constant [48 x i8] c"stringsReader.UnreadByte: at beginning of string", align 1
@35 = private unnamed_addr constant [49 x i8] c"strings.Reader.UnreadRune: at beginning of string", align 1
@36 = private unnamed_addr constant [62 x i8] c"strings.Reader.UnreadRune: previous operation was not ReadRune", align 1
@37 = private unnamed_addr constant [48 x i8] c"stringsReader.WriteTo: invalid WriteString count", align 1

define void @"github.com/goplus/llgo/cl/_testgo/reader.NopCloser"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %3)
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %6 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %5, ptr %4)
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %7, i32 0, i32 0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %8, align 8
  %10 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %7, align 8
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %10, ptr %12, align 8
  %13 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %14 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %14, ptr %11)
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr %12, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %17, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_5
  %18 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %18, i32 0, i32 0
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %19, align 8
  %21 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %18, align 8
  %22 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %21, ptr %23, align 8
  %24 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %24, ptr %22)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr %23, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, ptr %0, align 8
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 1
  %29 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %29, ptr %4)
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr %28, 1
  %33 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, 0
  %34 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %33, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %35 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %34, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %36 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %35, 0
  %37 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %35, 1
  br i1 %37, label %_llgo_1, label %_llgo_2
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 512)
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %3, ptr %2, i64 1, i64 512, i64 0, i64 0, i64 512)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_6, %_llgo_3, %_llgo_0
  %5 = phi %"github.com/goplus/llgo/runtime/internal/runtime.Slice" [ %4, %_llgo_0 ], [ %32, %_llgo_3 ], [ %80, %_llgo_6 ]
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 2
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 2
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %10, ptr %9, i64 1, i64 %8, i64 %6, i64 %7, i64 %8)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, ptr %13, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %13)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, 0
  %16 = getelementptr ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = insertvalue { ptr, ptr } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr } %19, 1
  %21 = extractvalue { ptr, ptr } %19, 0
  %22 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr %23, align 8
  call void %21(ptr %20, ptr %22, ptr %23)
  %24 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %22, align 8
  %25 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, 0
  %26 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, 1
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 1
  %28 = add i64 %27, %25
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 2
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, 0
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %31, ptr %30, i64 1, i64 %29, i64 0, i64 %28, i64 %29)
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %31, align 8
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr %33, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %33)
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %35, 1
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %38, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %38)
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr null, 1
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr %43, align 8
  %44 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %42, ptr %43)
  %45 = xor i1 %44, true
  br i1 %45, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr %47, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %47)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %49, 1
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, ptr %52, align 8
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %52)
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %46, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr %54, 1
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, ptr %57, align 8
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %58, align 8
  %59 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %57, ptr %58)
  br i1 %59, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 1
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 2
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %_llgo_6, label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  %63 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %26, %_llgo_2 ], [ zeroinitializer, %_llgo_4 ]
  %64 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 0
  %65 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 1
  store { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %65, ptr %0, align 8
  ret void

_llgo_6:                                          ; preds = %_llgo_3
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 1)
  %67 = getelementptr inbounds i8, ptr %66, i64 0
  store i8 0, ptr %67, align 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i64 1, 2
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 0
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, 1
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, ptr %74, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr %73, ptr %74, ptr %71, i64 %72, i64 1)
  %75 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %73, align 8
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, 1
  %77 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, 2
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, 0
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %79, ptr %78, i64 1, i64 %77, i64 0, i64 %76, i64 %77)
  %80 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %79, align 8
  br label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %4)
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %7 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %6, ptr %5)
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %16 = extractvalue { ptr, ptr } %14, 1
  %17 = extractvalue { ptr, ptr } %14, 0
  %18 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, ptr %19, align 8
  call void %17(ptr %16, ptr %18, ptr %19)
  %20 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %18, align 8
  %21 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %20, 0
  %22 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %20, 1
  %23 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %21, 0
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %23, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_5
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, ptr %27, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr %26, ptr %27)
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %26, align 8
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %30)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 0
  %33 = getelementptr ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = insertvalue { ptr, ptr } undef, ptr %34, 0
  %36 = insertvalue { ptr, ptr } %35, ptr %31, 1
  %37 = extractvalue { ptr, ptr } %36, 1
  %38 = extractvalue { ptr, ptr } %36, 0
  %39 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, ptr %40, align 8
  call void %38(ptr %37, ptr %39, ptr %40)
  %41 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %39, align 8
  %42 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 0
  %43 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, 1
  %44 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %42, 0
  %45 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %44, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %45, ptr %0, align 8
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 1
  %47 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %47, ptr %5)
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %46, 1
  %51 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, 0
  %52 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %51, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %53 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %52, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %54 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %53, 0
  %55 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %53, 1
  br i1 %55, label %_llgo_1, label %_llgo_2
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %3, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reader.init$guard", align 1
  call void @"unicode/utf8.init"()
  call void @"github.com/goplus/llgo/cl/_testgo/reader.init$after"()
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 3 }, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %1, ptr %2)
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr %5, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %4, ptr %5)
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 11 }, ptr %1, align 8
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %3 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %4 = load ptr, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %4, ptr %3)
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %0, 1
  %8 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %9, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.ReadAll"(ptr %8, ptr %9)
  %10 = load { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %8, align 8
  %11 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %10, 0
  %12 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %10, 1
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr %13, ptr %14)
  %15 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.errorString", ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %3, align 8
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %6 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %7 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %7, ptr %6)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %2, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(ptr %0, ptr %1) {
_llgo_0:
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %1, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %4, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %3, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %15 = extractvalue { ptr, ptr } %13, 1
  %16 = extractvalue { ptr, ptr } %13, 0
  %17 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, ptr %18, align 8
  call void %16(ptr %15, ptr %17, ptr %18)
  %19 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %17, align 8
  %20 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19, 0
  %21 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19, 1
  %22 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %20, 0
  %23 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %23, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %2, ptr %4, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close"(ptr %3, ptr %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %5, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %13 = extractvalue { ptr, ptr } %11, 1
  %14 = extractvalue { ptr, ptr } %11, 0
  %15 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, ptr %16, align 8
  call void %14(ptr %13, ptr %15, ptr %16)
  %17 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %15, align 8
  %18 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 0
  %19 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 1
  %20 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %18, 0
  %21 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %20, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %21, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(ptr %0, ptr %1) {
_llgo_0:
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %1, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %4, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %3, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %15 = extractvalue { ptr, ptr } %13, 1
  %16 = extractvalue { ptr, ptr } %13, 0
  %17 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, ptr %18, align 8
  call void %16(ptr %15, ptr %17, ptr %18)
  %19 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %17, align 8
  %20 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19, 0
  %21 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %19, 1
  %22 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %20, 0
  %23 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %23, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false)
  %4 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %1, align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %4, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %3, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %7)
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %10 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %9, ptr %8)
  br i1 %10, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1
  %12 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %12, ptr %8)
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %13, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, ptr %11, 1
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, ptr %16, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %16)
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %15, 0
  %19 = getelementptr ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue { ptr, ptr } undef, ptr %20, 0
  %22 = insertvalue { ptr, ptr } %21, ptr %17, 1
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %24 = extractvalue { ptr, ptr } %22, 1
  %25 = extractvalue { ptr, ptr } %22, 0
  %26 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %27, align 8
  call void %25(ptr %24, ptr %26, ptr %27)
  %28 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %26, align 8
  %29 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %28, 0
  %30 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %28, 1
  %31 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %29, 0
  %32 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %32, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %33 = load ptr, ptr @_llgo_string, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 122 }, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %34, 1
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %37, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %37)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %2, ptr %4, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close"(ptr %3, ptr %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %5, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %13 = extractvalue { ptr, ptr } %11, 1
  %14 = extractvalue { ptr, ptr } %11, 0
  %15 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, ptr %16, align 8
  call void %14(ptr %13, ptr %15, ptr %16)
  %17 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %15, align 8
  %18 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 0
  %19 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17, 1
  %20 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %18, 0
  %21 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %20, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %21, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %1, align 8
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %5 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %6 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %3, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %7, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo"(ptr %5, ptr %6, ptr %7)
  %8 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %5, align 8
  %9 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, 0
  %10 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, 1
  %11 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %9, 0
  %12 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %11, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %12, ptr %0, align 8
  ret void
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

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, 1
  %8 = icmp sge i64 %4, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %10 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %10, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 1
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %18, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %17, ptr %18, i64 %15, i64 %16)
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %19, 0
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %19, 1
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, ptr %23, align 8
  %24 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr %23, ptr %21, i64 %22, i64 1)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = add i64 %26, %24
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %27, ptr %28, align 4
  %29 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %24, 0
  %30 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %29, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %30, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt"(ptr %0, ptr %1, ptr %2, i64 %3) {
_llgo_0:
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 37 }, ptr %6, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %5, ptr %6)
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  %8 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %8, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %10, 1
  %12 = icmp sge i64 %3, %11
  br i1 %12, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %14 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %14, ptr %0, align 8
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 1
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, ptr %19, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %18, ptr %19, i64 %3, i64 %17)
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %20, 0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %20, 1
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, ptr %24, align 8
  %25 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr %24, ptr %22, i64 %23, i64 1)
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 1
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %30 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ zeroinitializer, %_llgo_4 ], [ %29, %_llgo_5 ]
  %31 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %25, 0
  %32 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %32, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, 1
  %8 = icmp sge i64 %4, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %10 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i8 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  store { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %10, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 0
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 1
  %17 = icmp slt i64 %12, 0
  %18 = icmp sge i64 %12, %16
  %19 = or i1 %18, %17
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %19)
  %20 = getelementptr inbounds i8, ptr %15, i64 %12
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %23 = load i64, ptr %22, align 4
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %24, ptr %25, align 4
  %26 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i8 %21, 0
  %27 = insertvalue { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  store { i8, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %27, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, 1
  %7 = icmp sge i64 %3, %6
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %10 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i32 0, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 2
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %10, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 %12, ptr %13, align 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %16, align 8
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 0
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 1
  %20 = icmp slt i64 %15, 0
  %21 = icmp sge i64 %15, %19
  %22 = or i1 %21, %20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %22)
  %23 = getelementptr inbounds i8, ptr %18, i64 %15
  %24 = load i8, ptr %23, align 1
  %25 = icmp ult i8 %24, -128
  br i1 %25, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %27 = load i64, ptr %26, align 4
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %28, ptr %29, align 4
  %30 = sext i8 %24 to i32
  %31 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %30, 0
  %32 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %31, i64 1, 1
  %33 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %32, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %33, ptr %0, align 8
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %34, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %37 = load i64, ptr %36, align 4
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, 1
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, ptr %40, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %39, ptr %40, i64 %37, i64 %38)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %39, align 8
  %42 = alloca { i32, i64 }, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %41, ptr %43, align 8
  call void @"unicode/utf8.DecodeRuneInString"(ptr %42, ptr %43)
  %44 = load { i32, i64 }, ptr %42, align 4
  %45 = extractvalue { i32, i64 } %44, 0
  %46 = extractvalue { i32, i64 } %44, 1
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  %49 = add i64 %48, %46
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %49, ptr %50, align 4
  %51 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i32 %45, 0
  %52 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %51, i64 %46, 1
  %53 = insertvalue { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %52, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 2
  store { i32, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %53, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek"(ptr %0, ptr %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %4, align 4
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %_llgo_2, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  %6 = phi i64 [ %2, %_llgo_2 ], [ %10, %_llgo_3 ], [ %15, %_llgo_5 ]
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %_llgo_8, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 4
  %10 = add i64 %9, %2
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %11 = icmp eq i64 %3, 1
  br i1 %11, label %_llgo_3, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_6
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, 1
  %15 = add i64 %14, %2
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_4
  %16 = icmp eq i64 %3, 2
  br i1 %16, label %_llgo_5, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 34 }, ptr %18, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %17, ptr %18)
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %17, align 8
  %20 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %20, ptr %0, align 8
  ret void

_llgo_8:                                          ; preds = %_llgo_1
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 37 }, ptr %22, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %21, ptr %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %21, align 8
  %24 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %24, ptr %0, align 8
  ret void

_llgo_9:                                          ; preds = %_llgo_1
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %6, ptr %25, align 4
  %26 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %6, 0
  %27 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %26, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %27, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, 1
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = icmp sle i64 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 48 }, ptr %6, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %5, ptr %6)
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = sub i64 %10, 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %11, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = icmp sle i64 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 49 }, ptr %6, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %5, ptr %6)
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %5, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 4
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 62 }, ptr %12, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.newError"(ptr %11, ptr %12)
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %11, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %0, align 8
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %15, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %17, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 2
  store i64 -1, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %7, 1
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } zeroinitializer, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 0
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %10, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %11, 1
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %11, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %15, ptr %16, i64 %13, i64 %14)
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %19 = alloca { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, ptr %21, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/reader.WriteString"(ptr %19, ptr %20, ptr %21)
  %22 = load { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %19, align 8
  %23 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22, 0
  %24 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %22, 1
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 1
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 48 }, ptr %28, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %28, 1
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr %31, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %31)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  %33 = load i64, ptr %32, align 4
  %34 = add i64 %33, %23
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %1, i32 0, i32 1
  store i64 %34, ptr %35, align 4
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 1
  %37 = icmp ne i64 %23, %36
  br i1 %37, label %_llgo_7, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_7
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_7, %_llgo_4
  %39 = phi %"github.com/goplus/llgo/runtime/internal/runtime.iface" [ %24, %_llgo_4 ], [ %24, %_llgo_7 ], [ %38, %_llgo_5 ]
  %40 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } undef, i64 %23, 0
  %41 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %40, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, 1
  store { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %41, ptr %0, align 8
  ret void

_llgo_7:                                          ; preds = %_llgo_4
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, ptr %42, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %42)
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %44, 1
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %47, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %47)
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr null, 1
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %51, align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %52, align 8
  %53 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %51, ptr %52)
  br i1 %53, label %_llgo_5, label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

define void @"github.com/goplus/llgo/cl/_testgo/reader.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %0, ptr %1)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %5, ptr %6)
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %7, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @_llgo_uint8, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %12, ptr @_llgo_uint8, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %13 = load ptr, ptr @_llgo_uint8, align 8
  %14 = load ptr, ptr @"[]_llgo_uint8", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %16)
  store ptr %17, ptr @"[]_llgo_uint8", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %18 = load ptr, ptr @"[]_llgo_uint8", align 8
  %19 = load ptr, ptr @_llgo_int, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %21, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %23, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr %24, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %23, ptr %24)
  %26 = load ptr, ptr @_llgo_error, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %25, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %28 = load ptr, ptr @_llgo_string, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %30, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = load ptr, ptr @_llgo_string, align 8
  %33 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 0, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 0, 2
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %40 = getelementptr ptr, ptr %39, i64 0
  store ptr %32, ptr %40, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %39, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 1, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 1, 2
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %44, align 8
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, ptr %45, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %44, ptr %45, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %46)
  store ptr %46, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %47 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %27, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %47, 1
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %50 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %49, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %48, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %49, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 1, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 2
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, ptr %54, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %25, ptr %54)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %55 = load ptr, ptr @_llgo_error, align 8
  %56 = load ptr, ptr @"[]_llgo_uint8", align 8
  %57 = load ptr, ptr @_llgo_int, align 8
  %58 = load ptr, ptr @_llgo_error, align 8
  %59 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %62 = getelementptr ptr, ptr %61, i64 0
  store ptr %56, ptr %62, align 8
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %61, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 1, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 1, 2
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %67 = getelementptr ptr, ptr %66, i64 0
  store ptr %57, ptr %67, align 8
  %68 = getelementptr ptr, ptr %66, i64 1
  store ptr %58, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i64 2, 1
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 2, 2
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, ptr %72, align 8
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, ptr %73, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %72, ptr %73, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %74)
  store ptr %74, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %75 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %9, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %75, 1
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %78 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %77, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %76, ptr %78, align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %77, 0
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, i64 1, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80, i64 1, 2
  %82 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, ptr %82, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %7, ptr %82)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %83 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %84 = load ptr, ptr @_llgo_int64, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  store ptr %86, ptr @_llgo_int64, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %87 = load ptr, ptr @_llgo_int64, align 8
  %88 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %89 = load ptr, ptr @_llgo_int64, align 8
  %90 = load ptr, ptr @_llgo_error, align 8
  %91 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %94 = getelementptr ptr, ptr %93, i64 0
  store ptr %88, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 1, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 2
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %99 = getelementptr ptr, ptr %98, i64 0
  store ptr %89, ptr %99, align 8
  %100 = getelementptr ptr, ptr %98, i64 1
  store ptr %90, ptr %100, align 8
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %98, 0
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i64 2, 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, i64 2, 2
  %104 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, ptr %105, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %104, ptr %105, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %106)
  store ptr %106, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %107 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  br i1 %4, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %107, 1
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %110 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %109, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %108, ptr %110, align 8
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %109, 0
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 1, 1
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 1, 2
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, ptr %114, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, ptr %114)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %115 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %116 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %115, 1
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %119, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %118, ptr %120, align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %119, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 1, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 2
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, ptr %125, align 8
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %124, ptr %125)
  store ptr %126, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %127 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %127, align 8
  %128 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 17 }, ptr %128, align 8
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %127, ptr %128, i64 25, i64 16, i64 3, i64 3)
  store ptr %129, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %130 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %130, align 8
  %131 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %131, align 8
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %130, ptr %131)
  %133 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %132, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %135 = load ptr, ptr @"[]_llgo_uint8", align 8
  %136 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %134, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %137 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %136, 1
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %139 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %138, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %137, ptr %139, align 8
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %138, 0
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, i64 1, 1
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, i64 1, 2
  %143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, ptr %143, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %132, ptr %143)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %144 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %145 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %145, align 8
  %146 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %146, align 8
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %145, ptr %146)
  %148 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %149 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %150, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %148, ptr %149, ptr %147, i64 0, ptr %150, i1 true)
  %151 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %153 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %152, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %151, ptr %153, align 8
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %152, 0
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, i64 1, 1
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, i64 1, 2
  %157 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %157, align 8
  %158 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, ptr %158, align 8
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %157, i64 16, ptr %158)
  store ptr %159, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %160 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %161 = load ptr, ptr @_llgo_error, align 8
  %162 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %164, 0
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165, i64 0, 1
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %166, i64 0, 2
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %169 = getelementptr ptr, ptr %168, i64 0
  store ptr %161, ptr %169, align 8
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %168, 0
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %170, i64 1, 1
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %171, i64 1, 2
  %173 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167, ptr %173, align 8
  %174 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172, ptr %174, align 8
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %173, ptr %174, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %175)
  store ptr %175, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %176 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %177 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %176, 1
  %178 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %177, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %179 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %178, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 3
  %180 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %176, 1
  %181 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %180, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %182 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %181, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close", 3
  %183 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %184 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %183, 1
  %185 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %184, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %186 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %185, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 3
  %187 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %183, 1
  %188 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %187, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %189 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %188, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read", 3
  %190 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %191 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %190, 1
  %192 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %191, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %193 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %192, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 3
  %194 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %190, 1
  %195 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %194, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %196 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %195, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo", 3
  %197 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %198 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %197, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %182, ptr %198, align 8
  %199 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %197, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %189, ptr %199, align 8
  %200 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %197, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %196, ptr %200, align 8
  %201 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %197, 0
  %202 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %201, i64 3, 1
  %203 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %202, i64 3, 2
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %205 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %204, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %179, ptr %205, align 8
  %206 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %204, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %186, ptr %206, align 8
  %207 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %204, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %193, ptr %207, align 8
  %208 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %204, 0
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %208, i64 3, 1
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209, i64 3, 2
  %211 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %203, ptr %211, align 8
  %212 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210, ptr %212, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %129, ptr %160, ptr %211, ptr %212)
  %213 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %214 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %215 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %217 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef }, ptr %213, 1
  %218 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %214, 1
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %220 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %219, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %217, ptr %220, align 8
  %221 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %219, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %218, ptr %221, align 8
  %222 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %219, 0
  %223 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %222, i64 2, 1
  %224 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %223, i64 2, 2
  %225 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %225, align 8
  %226 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %224, ptr %226, align 8
  %227 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %225, ptr %226)
  store ptr %227, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %228 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %228, align 8
  %229 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, ptr %229, align 8
  %230 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %228, ptr %229, i64 25, i64 16, i64 2, i64 2)
  store ptr %230, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %231 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %232 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %233 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %232, 1
  %234 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %233, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %235 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %234, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 3
  %236 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %232, 1
  %237 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %236, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %238 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %237, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close", 3
  %239 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %239, 1
  %241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %240, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %242 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %241, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 3
  %243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %239, 1
  %244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %243, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %244, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read", 3
  %246 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %247 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %246, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %238, ptr %247, align 8
  %248 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %246, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %245, ptr %248, align 8
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %246, 0
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %249, i64 2, 1
  %251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %250, i64 2, 2
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %253 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %252, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %235, ptr %253, align 8
  %254 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %252, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %242, ptr %254, align 8
  %255 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %252, 0
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %255, i64 2, 1
  %257 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, i64 2, 2
  %258 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %251, ptr %258, align 8
  %259 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %257, ptr %259, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %230, ptr %231, ptr %258, ptr %259)
  %260 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %260, align 8
  %261 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 12 }, ptr %261, align 8
  %262 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %260, ptr %261)
  %263 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %262, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %265 = load ptr, ptr @_llgo_string, align 8
  %266 = load ptr, ptr @_llgo_int, align 8
  %267 = load ptr, ptr @_llgo_error, align 8
  %268 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %271 = getelementptr ptr, ptr %270, i64 0
  store ptr %265, ptr %271, align 8
  %272 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %270, 0
  %273 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %272, i64 1, 1
  %274 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %273, i64 1, 2
  %275 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %276 = getelementptr ptr, ptr %275, i64 0
  store ptr %266, ptr %276, align 8
  %277 = getelementptr ptr, ptr %275, i64 1
  store ptr %267, ptr %277, align 8
  %278 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %275, 0
  %279 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %278, i64 2, 1
  %280 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %279, i64 2, 2
  %281 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %274, ptr %281, align 8
  %282 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, ptr %282, align 8
  %283 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %281, ptr %282, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %283)
  store ptr %283, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %284 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br i1 %264, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %285 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %284, 1
  %286 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %287 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %286, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %285, ptr %287, align 8
  %288 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %286, 0
  %289 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %288, i64 1, 1
  %290 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %289, i64 1, 2
  %291 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %290, ptr %291, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %262, ptr %291)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %292 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %293 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %295 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %292, 1
  %296 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %297 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %296, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %295, ptr %297, align 8
  %298 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %296, 0
  %299 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %298, i64 1, 1
  %300 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %299, i64 1, 2
  %301 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %301, align 8
  %302 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %300, ptr %302, align 8
  %303 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %301, ptr %302)
  store ptr %303, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %304 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %304, align 8
  %305 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, ptr %305, align 8
  %306 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %304, ptr %305, i64 25, i64 32, i64 0, i64 10)
  store ptr %306, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %307 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %308 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %309 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %309, align 8
  %310 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %310, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %308, ptr %309, ptr %307, i64 0, ptr %310, i1 false)
  %311 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %308, align 8
  %312 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %313 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %314 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 }, ptr %314, align 8
  %315 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %315, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %313, ptr %314, ptr %312, i64 16, ptr %315, i1 false)
  %316 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %313, align 8
  %317 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %318 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %319 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr %319, align 8
  %320 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %320, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %318, ptr %319, ptr %317, i64 24, ptr %320, i1 false)
  %321 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %318, align 8
  %322 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %323 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %322, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %311, ptr %323, align 8
  %324 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %322, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %316, ptr %324, align 8
  %325 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %322, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %321, ptr %325, align 8
  %326 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %322, 0
  %327 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %326, i64 3, 1
  %328 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %327, i64 3, 2
  %329 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %329, align 8
  %330 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %328, ptr %330, align 8
  %331 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %329, i64 32, ptr %330)
  store ptr %331, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %332 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %333 = load ptr, ptr @_llgo_int, align 8
  %334 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %335 = icmp eq ptr %334, null
  br i1 %335, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %336 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %337 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %336, 0
  %338 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %337, i64 0, 1
  %339 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %338, i64 0, 2
  %340 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %341 = getelementptr ptr, ptr %340, i64 0
  store ptr %333, ptr %341, align 8
  %342 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %340, 0
  %343 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %342, i64 1, 1
  %344 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %343, i64 1, 2
  %345 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %339, ptr %345, align 8
  %346 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %344, ptr %346, align 8
  %347 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %345, ptr %346, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %347)
  store ptr %347, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %348 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %349 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %348, 1
  %350 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %349, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 2
  %351 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %350, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 3
  %352 = load ptr, ptr @"[]_llgo_uint8", align 8
  %353 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %354 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %353, 1
  %355 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %354, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 2
  %356 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %355, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 3
  %357 = load ptr, ptr @"[]_llgo_uint8", align 8
  %358 = load ptr, ptr @"[]_llgo_uint8", align 8
  %359 = load ptr, ptr @_llgo_int64, align 8
  %360 = load ptr, ptr @_llgo_int, align 8
  %361 = load ptr, ptr @_llgo_error, align 8
  %362 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %363 = icmp eq ptr %362, null
  br i1 %363, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %364 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %365 = getelementptr ptr, ptr %364, i64 0
  store ptr %358, ptr %365, align 8
  %366 = getelementptr ptr, ptr %364, i64 1
  store ptr %359, ptr %366, align 8
  %367 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %364, 0
  %368 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %367, i64 2, 1
  %369 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %368, i64 2, 2
  %370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %371 = getelementptr ptr, ptr %370, i64 0
  store ptr %360, ptr %371, align 8
  %372 = getelementptr ptr, ptr %370, i64 1
  store ptr %361, ptr %372, align 8
  %373 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %370, 0
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %373, i64 2, 1
  %375 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, i64 2, 2
  %376 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %369, ptr %376, align 8
  %377 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %375, ptr %377, align 8
  %378 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %376, ptr %377, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %378)
  store ptr %378, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %379 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %380 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %379, 1
  %381 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %380, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 2
  %382 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %381, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 3
  %383 = load ptr, ptr @_llgo_uint8, align 8
  %384 = load ptr, ptr @_llgo_error, align 8
  %385 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %386 = icmp eq ptr %385, null
  br i1 %386, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %387 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %388 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %387, 0
  %389 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %388, i64 0, 1
  %390 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %389, i64 0, 2
  %391 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %392 = getelementptr ptr, ptr %391, i64 0
  store ptr %383, ptr %392, align 8
  %393 = getelementptr ptr, ptr %391, i64 1
  store ptr %384, ptr %393, align 8
  %394 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %391, 0
  %395 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %394, i64 2, 1
  %396 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %395, i64 2, 2
  %397 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %390, ptr %397, align 8
  %398 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %396, ptr %398, align 8
  %399 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %397, ptr %398, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %399)
  store ptr %399, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %400 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %401 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %400, 1
  %402 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %401, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 2
  %403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %402, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 3
  %404 = load ptr, ptr @_llgo_rune, align 8
  %405 = icmp eq ptr %404, null
  br i1 %405, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %406 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %406, ptr @_llgo_rune, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %407 = load ptr, ptr @_llgo_rune, align 8
  %408 = load ptr, ptr @_llgo_rune, align 8
  %409 = load ptr, ptr @_llgo_int, align 8
  %410 = load ptr, ptr @_llgo_error, align 8
  %411 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %414 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %413, 0
  %415 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %414, i64 0, 1
  %416 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %415, i64 0, 2
  %417 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %418 = getelementptr ptr, ptr %417, i64 0
  store ptr %408, ptr %418, align 8
  %419 = getelementptr ptr, ptr %417, i64 1
  store ptr %409, ptr %419, align 8
  %420 = getelementptr ptr, ptr %417, i64 2
  store ptr %410, ptr %420, align 8
  %421 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %417, 0
  %422 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %421, i64 3, 1
  %423 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %422, i64 3, 2
  %424 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %416, ptr %424, align 8
  %425 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %423, ptr %425, align 8
  %426 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %424, ptr %425, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %426)
  store ptr %426, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %427 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %428 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %427, 1
  %429 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %428, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 2
  %430 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %429, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 3
  %431 = load ptr, ptr @_llgo_int64, align 8
  %432 = load ptr, ptr @_llgo_int, align 8
  %433 = load ptr, ptr @_llgo_int64, align 8
  %434 = load ptr, ptr @_llgo_error, align 8
  %435 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %436 = icmp eq ptr %435, null
  br i1 %436, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %437 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %438 = getelementptr ptr, ptr %437, i64 0
  store ptr %431, ptr %438, align 8
  %439 = getelementptr ptr, ptr %437, i64 1
  store ptr %432, ptr %439, align 8
  %440 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %437, 0
  %441 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %440, i64 2, 1
  %442 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %441, i64 2, 2
  %443 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %444 = getelementptr ptr, ptr %443, i64 0
  store ptr %433, ptr %444, align 8
  %445 = getelementptr ptr, ptr %443, i64 1
  store ptr %434, ptr %445, align 8
  %446 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %443, 0
  %447 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %446, i64 2, 1
  %448 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %447, i64 2, 2
  %449 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %442, ptr %449, align 8
  %450 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %448, ptr %450, align 8
  %451 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %449, ptr %450, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %451)
  store ptr %451, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %452 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %453 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %452, 1
  %454 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %453, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 2
  %455 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %454, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 3
  %456 = load ptr, ptr @_llgo_int64, align 8
  %457 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %459 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %460 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %459, 0
  %461 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %460, i64 0, 1
  %462 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %461, i64 0, 2
  %463 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %464 = getelementptr ptr, ptr %463, i64 0
  store ptr %456, ptr %464, align 8
  %465 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %463, 0
  %466 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %465, i64 1, 1
  %467 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %466, i64 1, 2
  %468 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %462, ptr %468, align 8
  %469 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %467, ptr %469, align 8
  %470 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %468, ptr %469, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %470)
  store ptr %470, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %471 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %472 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %471, 1
  %473 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %472, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 2
  %474 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %473, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 3
  %475 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %476 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %475, 1
  %477 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %476, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 2
  %478 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %477, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 3
  %479 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %480 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %479, 1
  %481 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %480, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 2
  %482 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %481, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 3
  %483 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %484 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %483, 1
  %485 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %484, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 2
  %486 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %485, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 3
  %487 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 400)
  %488 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %351, ptr %488, align 8
  %489 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %356, ptr %489, align 8
  %490 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %382, ptr %490, align 8
  %491 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %403, ptr %491, align 8
  %492 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %430, ptr %492, align 8
  %493 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %455, ptr %493, align 8
  %494 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %474, ptr %494, align 8
  %495 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %478, ptr %495, align 8
  %496 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %482, ptr %496, align 8
  %497 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %487, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %486, ptr %497, align 8
  %498 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %487, 0
  %499 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %498, i64 10, 1
  %500 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %499, i64 10, 2
  %501 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %501, align 8
  %502 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %500, ptr %502, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %306, ptr %332, ptr %501, ptr %502)
  %503 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %503, align 8
  %504 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, ptr %504, align 8
  %505 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %503, ptr %504, i64 25, i64 32, i64 0, i64 10)
  %506 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %505)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %506)
  store ptr %506, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %507 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %508 = load ptr, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  %509 = icmp eq ptr %508, null
  br i1 %509, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %510 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %507, 1
  %511 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %512 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %511, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %510, ptr %512, align 8
  %513 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %511, 0
  %514 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %513, i64 1, 1
  %515 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %514, i64 1, 2
  %516 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %516, align 8
  %517 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %515, ptr %517, align 8
  %518 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %516, ptr %517)
  store ptr %518, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %519 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %519, align 8
  %520 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, ptr %520, align 8
  %521 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %519, ptr %520, i64 25, i64 16, i64 0, i64 1)
  store ptr %521, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %522 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %523 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %524 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %524, align 8
  %525 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %525, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %523, ptr %524, ptr %522, i64 0, ptr %525, i1 false)
  %526 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %523, align 8
  %527 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %528 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %527, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %526, ptr %528, align 8
  %529 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %527, 0
  %530 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %529, i64 1, 1
  %531 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %530, i64 1, 2
  %532 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %532, align 8
  %533 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %531, ptr %533, align 8
  %534 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %532, i64 16, ptr %533)
  store ptr %534, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %535 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %536 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %537 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %536, 1
  %538 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %537, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 2
  %539 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %538, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 3
  %540 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %541 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %540, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %539, ptr %541, align 8
  %542 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %540, 0
  %543 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %542, i64 1, 1
  %544 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %543, i64 1, 2
  %545 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %545, align 8
  %546 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %544, ptr %546, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %521, ptr %535, ptr %545, ptr %546)
  %547 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %547, align 8
  %548 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, ptr %548, align 8
  %549 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %547, ptr %548, i64 25, i64 16, i64 0, i64 1)
  %550 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %549)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %550)
  store ptr %550, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %551 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %552 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %553 = icmp eq ptr %552, null
  br i1 %553, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %554 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %551, 1
  %555 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %556 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %555, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %554, ptr %556, align 8
  %557 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %555, 0
  %558 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %557, i64 1, 1
  %559 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %558, i64 1, 2
  %560 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %560, align 8
  %561 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %559, ptr %561, align 8
  %562 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %560, ptr %561)
  store ptr %562, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr, ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr, ptr)

declare void @"unicode/utf8.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr, ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"unicode/utf8.DecodeRuneInString"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
