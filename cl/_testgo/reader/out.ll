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
  %9 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %10 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %10, ptr %7)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, ptr %8, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13

_llgo_2:                                          ; preds = %_llgo_5
  %14 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  call void @llvm.memset(ptr %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %14, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %15, align 8
  %16 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser", ptr %14, align 8
  %17 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %16, ptr %18, align 8
  %19 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %19, ptr %17)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %18, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22

_llgo_3:                                          ; preds = %_llgo_0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %24 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %24, ptr %1)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr %23, 1
  %28 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, 0
  %29 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %28, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %30 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %29, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %31 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %30, 0
  %32 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %30, 1
  br i1 %32, label %_llgo_1, label %_llgo_2
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
  %33 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
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
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 3 })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, ptr @"github.com/goplus/llgo/cl/_testgo/reader.EOF", align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr @"github.com/goplus/llgo/cl/_testgo/reader.ErrShortWrite", align 8
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
  %5 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
  %9 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 122 }, ptr %27, align 8
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
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 37 })
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
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 34 })
  %17 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, 1
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %17

_llgo_8:                                          ; preds = %_llgo_1
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 37 })
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
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 48 })
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
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 49 })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.stringReader", ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 4
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/reader.newError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 62 })
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
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 48 }, ptr %21, align 8
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
  %101 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %102 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %101, 1
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %106 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %105, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %104, ptr %106, align 8
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %105, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 1, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 1, 2
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109)
  store ptr %110, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 17 }, i64 25, i64 16, i64 3, i64 3)
  store ptr %111, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  %113 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  store ptr %112, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %115 = load ptr, ptr @"[]_llgo_uint8", align 8
  %116 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br i1 %114, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %117 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %116, 1
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %118, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %117, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %118, 0
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 1, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %123 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  %125 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %124, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %126, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %125, ptr %127, align 8
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %126, 0
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %128, i64 1, 1
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %129, i64 1, 2
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130)
  store ptr %131, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %132 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %134 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %136, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i64 0, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138, i64 0, 2
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %141 = getelementptr ptr, ptr %140, i64 0
  store ptr %133, ptr %141, align 8
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %140, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, i64 1, 1
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 1, 2
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %145)
  store ptr %145, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %146 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %147 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %146, 1
  %148 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %147, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %149 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %148, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 3
  %150 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %146, 1
  %151 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %150, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %152 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %151, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close", 3
  %153 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %154 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %153, 1
  %155 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %154, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %156 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %155, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 3
  %157 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %153, 1
  %158 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %157, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %159 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %158, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read", 3
  %160 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %161 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %160, 1
  %162 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %161, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %163 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %162, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 3
  %164 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %160, 1
  %165 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %164, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %166 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %165, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo", 3
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %168 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %167, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %152, ptr %168, align 8
  %169 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %167, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %159, ptr %169, align 8
  %170 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %167, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %166, ptr %170, align 8
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %167, 0
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %171, i64 3, 1
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172, i64 3, 2
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %175 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %174, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %149, ptr %175, align 8
  %176 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %174, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %156, ptr %176, align 8
  %177 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %174, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %163, ptr %177, align 8
  %178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %174, 0
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %178, i64 3, 1
  %180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %111, ptr %132, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %180)
  %181 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %182 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %183 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %185 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef }, ptr %181, 1
  %186 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %182, 1
  %187 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %188 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %187, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %185, ptr %188, align 8
  %189 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %187, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %186, ptr %189, align 8
  %190 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %187, 0
  %191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %190, i64 2, 1
  %192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %191, i64 2, 2
  %193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %192)
  store ptr %193, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, i64 25, i64 16, i64 2, i64 2)
  store ptr %194, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %195 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %196 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %197 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %196, 1
  %198 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %197, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %199 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %198, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 3
  %200 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %196, 1
  %201 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %200, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %202 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %201, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close", 3
  %203 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %204 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %203, 1
  %205 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %204, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %206 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %205, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 3
  %207 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %203, 1
  %208 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %207, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %209 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %208, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read", 3
  %210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %211 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %210, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %202, ptr %211, align 8
  %212 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %210, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %209, ptr %212, align 8
  %213 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %210, 0
  %214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %213, i64 2, 1
  %215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %214, i64 2, 2
  %216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %217 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %216, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %199, ptr %217, align 8
  %218 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %216, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %206, ptr %218, align 8
  %219 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %216, 0
  %220 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %219, i64 2, 1
  %221 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %220, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %194, ptr %195, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %215, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %221)
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 12 })
  %223 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  store ptr %222, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %225 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %226 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %229 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %230 = getelementptr ptr, ptr %229, i64 0
  store ptr %228, ptr %230, align 8
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %229, 0
  %232 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %231, i64 1, 1
  %233 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %232, i64 1, 2
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %236 = getelementptr ptr, ptr %235, i64 0
  store ptr %234, ptr %236, align 8
  %237 = getelementptr ptr, ptr %235, i64 1
  store ptr %225, ptr %237, align 8
  %238 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %235, 0
  %239 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %238, i64 2, 1
  %240 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %239, i64 2, 2
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %233, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %240, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %241)
  store ptr %241, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %242 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br i1 %224, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %243 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %242, 1
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %245 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %244, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %243, ptr %245, align 8
  %246 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %244, 0
  %247 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %246, i64 1, 1
  %248 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %247, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %222, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %248)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %249 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %250 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %252 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %249, 1
  %253 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %254 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %253, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %252, ptr %254, align 8
  %255 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %253, 0
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %255, i64 1, 1
  %257 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, i64 1, 2
  %258 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %257)
  store ptr %258, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %259 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  store ptr %259, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %260 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %261 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %260, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %262 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %263 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 }, ptr %262, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %264 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %265 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr %264, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %266 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %267 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %266, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %261, ptr %267, align 8
  %268 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %266, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %263, ptr %268, align 8
  %269 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %266, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %265, ptr %269, align 8
  %270 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %266, 0
  %271 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %270, i64 3, 1
  %272 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %271, i64 3, 2
  %273 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %272)
  store ptr %273, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %274 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %275 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %277 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %278 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %277, 0
  %279 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %278, i64 0, 1
  %280 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %279, i64 0, 2
  %281 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %282 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %283 = getelementptr ptr, ptr %282, i64 0
  store ptr %281, ptr %283, align 8
  %284 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %282, 0
  %285 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %284, i64 1, 1
  %286 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %285, i64 1, 2
  %287 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %280, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %286, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %287)
  store ptr %287, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  %288 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %289 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %288, 1
  %290 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %289, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 2
  %291 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %290, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 3
  %292 = load ptr, ptr @"[]_llgo_uint8", align 8
  %293 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %294 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %293, 1
  %295 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %294, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 2
  %296 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %295, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 3
  %297 = load ptr, ptr @"[]_llgo_uint8", align 8
  %298 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %299 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %_llgo_49, label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_48
  %301 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %302 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %301)
  %303 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %304 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %305 = getelementptr ptr, ptr %304, i64 0
  store ptr %302, ptr %305, align 8
  %306 = getelementptr ptr, ptr %304, i64 1
  store ptr %303, ptr %306, align 8
  %307 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %304, 0
  %308 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %307, i64 2, 1
  %309 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %308, i64 2, 2
  %310 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %311 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %312 = getelementptr ptr, ptr %311, i64 0
  store ptr %310, ptr %312, align 8
  %313 = getelementptr ptr, ptr %311, i64 1
  store ptr %298, ptr %313, align 8
  %314 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %311, 0
  %315 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %314, i64 2, 1
  %316 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %315, i64 2, 2
  %317 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %309, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %316, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %317)
  store ptr %317, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %318 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %319 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %318, 1
  %320 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %319, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 2
  %321 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %320, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 3
  %322 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %323 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %_llgo_51, label %_llgo_52

_llgo_51:                                         ; preds = %_llgo_50
  %325 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %326 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %325, 0
  %327 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %326, i64 0, 1
  %328 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %327, i64 0, 2
  %329 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %330 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %331 = getelementptr ptr, ptr %330, i64 0
  store ptr %329, ptr %331, align 8
  %332 = getelementptr ptr, ptr %330, i64 1
  store ptr %322, ptr %332, align 8
  %333 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %330, 0
  %334 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %333, i64 2, 1
  %335 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %334, i64 2, 2
  %336 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %328, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %335, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %336)
  store ptr %336, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  br label %_llgo_52

_llgo_52:                                         ; preds = %_llgo_51, %_llgo_50
  %337 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %338 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %337, 1
  %339 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %338, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 2
  %340 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %339, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 3
  %341 = load ptr, ptr @_llgo_rune, align 8
  %342 = icmp eq ptr %341, null
  br i1 %342, label %_llgo_53, label %_llgo_54

_llgo_53:                                         ; preds = %_llgo_52
  %343 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %343, ptr @_llgo_rune, align 8
  br label %_llgo_54

_llgo_54:                                         ; preds = %_llgo_53, %_llgo_52
  %344 = load ptr, ptr @_llgo_rune, align 8
  %345 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %346 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %347 = icmp eq ptr %346, null
  br i1 %347, label %_llgo_55, label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_54
  %348 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %349 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %348, 0
  %350 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %349, i64 0, 1
  %351 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %350, i64 0, 2
  %352 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  %353 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %354 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %355 = getelementptr ptr, ptr %354, i64 0
  store ptr %352, ptr %355, align 8
  %356 = getelementptr ptr, ptr %354, i64 1
  store ptr %353, ptr %356, align 8
  %357 = getelementptr ptr, ptr %354, i64 2
  store ptr %345, ptr %357, align 8
  %358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %354, 0
  %359 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %358, i64 3, 1
  %360 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %359, i64 3, 2
  %361 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %351, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %360, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %361)
  store ptr %361, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %362 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %363 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %362, 1
  %364 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %363, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 2
  %365 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %364, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 3
  %366 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %367 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %368 = icmp eq ptr %367, null
  br i1 %368, label %_llgo_57, label %_llgo_58

_llgo_57:                                         ; preds = %_llgo_56
  %369 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %370 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %371 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %372 = getelementptr ptr, ptr %371, i64 0
  store ptr %369, ptr %372, align 8
  %373 = getelementptr ptr, ptr %371, i64 1
  store ptr %370, ptr %373, align 8
  %374 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %371, 0
  %375 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %374, i64 2, 1
  %376 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %375, i64 2, 2
  %377 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %378 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %379 = getelementptr ptr, ptr %378, i64 0
  store ptr %377, ptr %379, align 8
  %380 = getelementptr ptr, ptr %378, i64 1
  store ptr %366, ptr %380, align 8
  %381 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %378, 0
  %382 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %381, i64 2, 1
  %383 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %382, i64 2, 2
  %384 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %376, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %383, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %384)
  store ptr %384, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_58

_llgo_58:                                         ; preds = %_llgo_57, %_llgo_56
  %385 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %386 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %385, 1
  %387 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %386, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 2
  %388 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %387, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 3
  %389 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %390 = icmp eq ptr %389, null
  br i1 %390, label %_llgo_59, label %_llgo_60

_llgo_59:                                         ; preds = %_llgo_58
  %391 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %392 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %391, 0
  %393 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %392, i64 0, 1
  %394 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %393, i64 0, 2
  %395 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %396 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %397 = getelementptr ptr, ptr %396, i64 0
  store ptr %395, ptr %397, align 8
  %398 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %396, 0
  %399 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %398, i64 1, 1
  %400 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %399, i64 1, 2
  %401 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %394, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %400, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %401)
  store ptr %401, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_60

_llgo_60:                                         ; preds = %_llgo_59, %_llgo_58
  %402 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %403 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %402, 1
  %404 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %403, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 2
  %405 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %404, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 3
  %406 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %407 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %406, 1
  %408 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %407, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 2
  %409 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %408, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 3
  %410 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %411 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %410, 1
  %412 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %411, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 2
  %413 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %412, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 3
  %414 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %415 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %414, 1
  %416 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %415, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 2
  %417 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %416, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 3
  %418 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 400)
  %419 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %291, ptr %419, align 8
  %420 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %296, ptr %420, align 8
  %421 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %321, ptr %421, align 8
  %422 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %340, ptr %422, align 8
  %423 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %365, ptr %423, align 8
  %424 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %388, ptr %424, align 8
  %425 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %405, ptr %425, align 8
  %426 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %409, ptr %426, align 8
  %427 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %413, ptr %427, align 8
  %428 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %418, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %417, ptr %428, align 8
  %429 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %418, 0
  %430 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %429, i64 10, 1
  %431 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %430, i64 10, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %259, ptr %274, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %431)
  %432 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  %433 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %432)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %433)
  store ptr %433, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %434 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %435 = load ptr, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  %436 = icmp eq ptr %435, null
  br i1 %436, label %_llgo_61, label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_60
  %437 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %434, 1
  %438 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %439 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %438, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %437, ptr %439, align 8
  %440 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %438, 0
  %441 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %440, i64 1, 1
  %442 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %441, i64 1, 2
  %443 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %442)
  store ptr %443, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %444 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %444, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %445 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %446 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %445, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %447 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %448 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %447, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %446, ptr %448, align 8
  %449 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %447, 0
  %450 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %449, i64 1, 1
  %451 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %450, i64 1, 2
  %452 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %451)
  store ptr %452, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %453 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %454 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %455 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %454, 1
  %456 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %455, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 2
  %457 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %456, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 3
  %458 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %459 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %458, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %457, ptr %459, align 8
  %460 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %458, 0
  %461 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %460, i64 1, 1
  %462 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %461, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %444, ptr %453, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %462)
  %463 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %464 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %463)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %464)
  store ptr %464, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %465 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %466 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %467 = icmp eq ptr %466, null
  br i1 %467, label %_llgo_63, label %_llgo_64

_llgo_63:                                         ; preds = %_llgo_62
  %468 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %465, 1
  %469 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %470 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %469, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %468, ptr %470, align 8
  %471 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %469, 0
  %472 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %471, i64 1, 1
  %473 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %472, i64 1, 2
  %474 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %473)
  store ptr %474, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_64

_llgo_64:                                         ; preds = %_llgo_63, %_llgo_62
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

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
