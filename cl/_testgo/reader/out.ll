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
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

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
  %2 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo"()
  %3 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %2, ptr %1)
  br i1 %3, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %4, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", ptr %4, align 8
  %7 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo"()
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo" %6, ptr %8, align 8
  %9 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %10 = call ptr @"__llgo_load__llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84"()
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
  %17 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser"()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/reader.nopCloser" %16, ptr %18, align 8
  %19 = call ptr @"__llgo_load__llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84"()
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %19, ptr %17)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %18, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22

_llgo_3:                                          ; preds = %_llgo_0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
  %24 = call ptr @"__llgo_load__llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs"()
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
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter"()
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
  %33 = call ptr @"__llgo_load__llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU"()
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
  %2 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader"()
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader"()
  %4 = call ptr @"__llgo_load__llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw"()
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
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString"()
  %5 = call ptr @"__llgo_load__llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU"()
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
  %6 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo"()
  %7 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %6, ptr %5)
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %9 = call ptr @"__llgo_load__llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs"()
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
  %26 = call ptr @__llgo_load__llgo_string()
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
  %20 = call ptr @__llgo_load__llgo_string()
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

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 })
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer"()
  %4 = call ptr @__llgo_load__llgo_int64()
  %5 = call ptr @"__llgo_load__llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %5, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %7, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %12 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.WriterTo", align 8
  ret ptr %12
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  %3 = call ptr @__llgo_load__llgo_uint8()
  %4 = call ptr @"__llgo_load_[]_llgo_uint8"()
  %5 = call ptr @__llgo_load__llgo_int()
  %6 = call ptr @__llgo_load__llgo_error()
  %7 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %7, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %8, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Writer", align 8
  ret ptr %14
}

define linkonce ptr @__llgo_load__llgo_uint8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %2, ptr @_llgo_uint8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint8, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @"__llgo_load_[]_llgo_uint8"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_uint8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_uint8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_uint8", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_error() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_error, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  store ptr %2, ptr @_llgo_error, align 8
  %3 = call ptr @__llgo_load__llgo_string()
  %4 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %4, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @_llgo_error, align 8
  ret ptr %11
}

define linkonce ptr @__llgo_load__llgo_string() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %3)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr ptr, ptr %5, i64 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr ptr, ptr %11, i64 1
  store ptr %2, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 2, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 2, 2
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %17)
  store ptr %17, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %18 = load ptr, ptr @"_llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk", align 8
  ret ptr %18
}

define linkonce ptr @__llgo_load__llgo_int64() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  store ptr %2, ptr @_llgo_int64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int64, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %11 = getelementptr ptr, ptr %10, i64 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr ptr, ptr %10, i64 1
  store ptr %3, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 2, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 2, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %16)
  store ptr %16, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4", align 8
  ret ptr %17
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

define linkonce ptr @"__llgo_load__llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$p5Bo_emI1h8acs1rFbUxZTrpeDbIQ34gFcsbwK9YIgs", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 17 }, i64 25, i64 16, i64 3, i64 3)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader"()
  %4 = call ptr @"__llgo_load__llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8"()
  %5 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 3
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Close", 2
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Close", 3
  %12 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %12, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 3
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %12, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).Read", 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.Read", 3
  %19 = call ptr @"__llgo_load__llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4"()
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %19, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %20, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %22 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %21, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 3
  %23 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %19, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %23, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloserWriterTo).WriteTo", 2
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %24, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo.WriteTo", 3
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %26, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr %27, align 8
  %28 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %26, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr %28, align 8
  %29 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %26, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 3, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 3, 2
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 120)
  %34 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %33, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %34, align 8
  %35 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %33, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr %35, align 8
  %36 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %33, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 3, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 3, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %40 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloserWriterTo", align 8
  ret ptr %40
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  %3 = call ptr @"__llgo_load_[]_llgo_uint8"()
  %4 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %4, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.Reader", align 8
  ret ptr %11
}

define linkonce ptr @"__llgo_load__llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %2, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load__llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %3 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %4 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef }, ptr %2, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %3, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %4, ptr %7, align 8
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 2, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_iface$2bmbYDBStAIdmbXPPn7qIaCcpVcj2I5k6AqgqwAfh84", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, i64 25, i64 16, i64 2, i64 2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  %3 = call ptr @"__llgo_load__llgo_struct$aF5tOq8uFNwjAKwq7XzhGO-4YESPiFwZOQDpqkTBqL8"()
  %4 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 3
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Close", 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Close", 3
  %11 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %11, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 3
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %11, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*nopCloser).Read", 2
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/cl/_testgo/reader.nopCloser.Read", 3
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %18, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %19, align 8
  %20 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %18, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 2, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 2, 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %24, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %24, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 2, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %30 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.nopCloser", align 8
  ret ptr %30
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 12 })
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  %3 = call ptr @"__llgo_load__llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw"()
  %4 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %3, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %6 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %5, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %4, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.StringWriter", align 8
  ret ptr %10
}

define linkonce ptr @"__llgo_load__llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %11 = getelementptr ptr, ptr %10, i64 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr ptr, ptr %10, i64 1
  store ptr %2, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 2, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 2, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %16)
  store ptr %16, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw", align 8
  ret ptr %17
}

define linkonce ptr @"__llgo_load__llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$thH5FBpdXzJNnCpSfiLU5ItTntFU6LWp0RJhDm2XJjw"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 11 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$Ly4zXiUMEac-hYAMw6b6miJ1JEhGfLyBWyBOhpsRZcU", align 8
  ret ptr %10
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"unicode/utf8.init"()

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %3 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk"()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Len", 3
  %8 = call ptr @"__llgo_load_[]_llgo_uint8"()
  %9 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %9, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 2
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Read", 3
  %13 = call ptr @"__llgo_load_[]_llgo_uint8"()
  %14 = call ptr @"__llgo_load__llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4"()
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %14, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 2
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadAt", 3
  %18 = call ptr @"__llgo_load__llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ"()
  %19 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %18, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %19, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 2
  %21 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %20, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadByte", 3
  %22 = call ptr @__llgo_load__llgo_rune()
  %23 = call ptr @"__llgo_load__llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU"()
  %24 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %23, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %24, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 2
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).ReadRune", 3
  %27 = call ptr @"__llgo_load__llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms"()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Seek", 3
  %31 = call ptr @"__llgo_load__llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug"()
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %31, 1
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 2
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).Size", 3
  %35 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %35, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 2
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadByte", 3
  %39 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %39, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 2
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).UnreadRune", 3
  %43 = call ptr @"__llgo_load__llgo_func$V_kP-r1nn8Ij-G2jGIm9ROLn4CjtLBch-g3Ha7pGJo4"()
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 2
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*stringReader).WriteTo", 3
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 400)
  %48 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %48, align 8
  %49 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr %49, align 8
  %50 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr %50, align 8
  %51 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %21, ptr %51, align 8
  %52 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 4
  store %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 5
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %53, align 8
  %54 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 6
  store %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 7
  store %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr %55, align 8
  %56 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr %56, align 8
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %47, i64 9
  store %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr %57, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 10, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 10, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %61 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  ret ptr %61
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 1 }, ptr %4, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 8 }, ptr %6, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %9, align 8
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 3, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  store ptr %15, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %16 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$Mdt84yjYYwxF9D2i4cRmpEPiWaO6tsjtrbGUjyESypk", align 8
  ret ptr %16
}

define linkonce ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load__llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %3)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %7 = getelementptr ptr, ptr %6, i64 0
  store ptr %4, ptr %7, align 8
  %8 = getelementptr ptr, ptr %6, i64 1
  store ptr %5, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 2, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %14 = getelementptr ptr, ptr %13, i64 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr ptr, ptr %13, i64 1
  store ptr %2, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 2, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 2, 2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %19)
  store ptr %19, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %20 = load ptr, ptr @"_llgo_func$QoHVzMQ4PMXOd5kbZvdARJn-o_00R6hNyf6LoVk3X_4", align 8
  ret ptr %20
}

define linkonce ptr @"__llgo_load__llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr ptr, ptr %8, i64 1
  store ptr %2, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 2, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 2, 2
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %14)
  store ptr %14, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %15 = load ptr, ptr @"_llgo_func$lukqSsfDYBoIp_R8GMojGkZnrYDqaq2iHn8RkCjW7iQ", align 8
  ret ptr %15
}

define linkonce ptr @__llgo_load__llgo_rune() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_rune, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %2, ptr @_llgo_rune, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_rune, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %10 = getelementptr ptr, ptr %9, i64 0
  store ptr %7, ptr %10, align 8
  %11 = getelementptr ptr, ptr %9, i64 1
  store ptr %8, ptr %11, align 8
  %12 = getelementptr ptr, ptr %9, i64 2
  store ptr %2, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 3, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %16)
  store ptr %16, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_func$CB0CO6hV_feSzhi4pz1P4omza2fKNK930wvOR1T33fU", align 8
  ret ptr %17
}

define linkonce ptr @"__llgo_load__llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %6 = getelementptr ptr, ptr %5, i64 0
  store ptr %3, ptr %6, align 8
  %7 = getelementptr ptr, ptr %5, i64 1
  store ptr %4, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 2, 2
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %13 = getelementptr ptr, ptr %12, i64 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr ptr, ptr %12, i64 1
  store ptr %2, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 2, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 2, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %18)
  store ptr %18, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %19 = load ptr, ptr @"_llgo_func$HE7H49xPa1uXmrkMDpqB3RCRGf3qzhLGrxKCEXOYjms", align 8
  ret ptr %19
}

define linkonce ptr @"__llgo_load__llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$Eoig9xhJM5GShHH5aNPxTZZXp1IZxprRl4zPuv2hkug", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 12 }, i64 25, i64 32, i64 0, i64 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.stringReader", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load__llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$G2hch9Iy9DrhKKsg70PbL54bK-XSl-1IUUORN17J2Dk"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$uycIKA3bbxRhudEjW1hHKWKdLqHQsCVy8NdW1bkQmNw", align 8
  ret ptr %10
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %3 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"()
  %4 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/reader.(*errorString).Error", 3
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reader.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  ret ptr %10
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reader.errorString", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  ret ptr %10
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
