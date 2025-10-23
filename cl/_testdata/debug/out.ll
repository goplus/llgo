; ModuleID = 'github.com/goplus/llgo/cl/_testdata/debug'
source_filename = "github.com/goplus/llgo/cl/_testdata/debug"

%"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" = type { i8, i16, i32, i64, i64, i8, i16, i32, i64, i64, float, double, i1, { float, float }, { double, double }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", [3 x i64], [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"], %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.iface", { ptr, ptr }, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testdata/debug.E" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct" = type { i64 }
%"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct" = type { i64, i64 }
%"github.com/goplus/llgo/cl/_testdata/debug.MidStruct" = type { i64, i64, i64 }
%"github.com/goplus/llgo/cl/_testdata/debug.BigStruct" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testdata/debug.globalInt" = global i64 0, align 8, !dbg !0
@"github.com/goplus/llgo/cl/_testdata/debug.globalStruct" = global %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" zeroinitializer, align 8, !dbg !7
@"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr" = global ptr null, align 8, !dbg !100
@"github.com/goplus/llgo/cl/_testdata/debug.init$guard" = global i1 false, align 1, !dbg !103
@0 = private unnamed_addr constant [4 x i8] c"done", align 1
@1 = private unnamed_addr constant [5 x i8] c"world", align 1
@2 = private unnamed_addr constant [10 x i8] c"some error", align 1
@3 = private unnamed_addr constant [6 x i8] c"i is 0", align 1
@4 = private unnamed_addr constant [2 x i8] c"i:", align 1
@5 = private unnamed_addr constant [2 x i8] c"a:", align 1
@6 = private unnamed_addr constant [6 x i8] c"i is 1", align 1
@7 = private unnamed_addr constant [4 x i8] c"i is", align 1
@8 = private unnamed_addr constant [2 x i8] c"b:", align 1
@9 = private unnamed_addr constant [6 x i8] c"i is 2", align 1
@10 = private unnamed_addr constant [2 x i8] c"c:", align 1
@11 = private unnamed_addr constant [2 x i8] c"d:", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_uint64 = linkonce global ptr null, align 8
@"map[_llgo_string]_llgo_uint64" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@13 = private unnamed_addr constant [4 x i8] c"keys", align 1
@14 = private unnamed_addr constant [5 x i8] c"elems", align 1
@15 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@16 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testdata/debug", align 1
@17 = private unnamed_addr constant [1 x i8] c"a", align 1
@18 = private unnamed_addr constant [1 x i8] c"b", align 1
@19 = private unnamed_addr constant [10 x i8] c"Test error", align 1
@20 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct" = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [6 x i8] c"Struct", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [3 x i8] c"Foo", align 1
@_llgo_int = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct" = linkonce global ptr null, align 8
@"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [10 x i8] c"globalInt:", align 1
@24 = private unnamed_addr constant [2 x i8] c"s:", align 1
@25 = private unnamed_addr constant [27 x i8] c"called function with struct", align 1
@26 = private unnamed_addr constant [3 x i8] c"fn:", align 1
@27 = private unnamed_addr constant [8 x i8] c"fn error", align 1

define void @"github.com/goplus/llgo/cl/_testdata/debug.FuncStructParams"(%"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct" %0, %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct" %1, %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct" %2, %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct" %3) !dbg !113 {
_llgo_0:
  %4 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", align 8, !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct" %0, ptr %4, align 4, !dbg !144
  %5 = load %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %4, align 4, !dbg !144
    #dbg_value(ptr %4, !145, !DIExpression(DW_OP_deref), !146)
  %6 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", align 8, !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct" %1, ptr %6, align 4, !dbg !144
  %7 = load %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %6, align 4, !dbg !144
    #dbg_value(ptr %6, !147, !DIExpression(DW_OP_deref), !148)
  %8 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", align 8, !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct" %2, ptr %8, align 4, !dbg !144
  %9 = load %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %8, align 4, !dbg !144
    #dbg_value(ptr %8, !149, !DIExpression(DW_OP_deref), !150)
  %10 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", align 8, !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct" %3, ptr %10, align 4, !dbg !144
  %11 = load %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %10, align 4, !dbg !144
    #dbg_value(ptr %10, !151, !DIExpression(DW_OP_deref), !152)
  %12 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", align 8, !dbg !144
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false), !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct" %5, ptr %12, align 4, !dbg !144
  %13 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", align 8, !dbg !144
  call void @llvm.memset(ptr %13, i8 0, i64 16, i1 false), !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct" %7, ptr %13, align 4, !dbg !144
  %14 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", align 8, !dbg !144
  call void @llvm.memset(ptr %14, i8 0, i64 24, i1 false), !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct" %9, ptr %14, align 4, !dbg !144
  %15 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", align 8, !dbg !144
  call void @llvm.memset(ptr %15, i8 0, i64 80, i1 false), !dbg !144
  store %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct" %11, ptr %15, align 4, !dbg !144
    #dbg_declare(ptr %12, !145, !DIExpression(), !153)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %12, i32 0, i32 0, !dbg !153
  %17 = load i64, ptr %16, align 4, !dbg !154
    #dbg_declare(ptr %13, !147, !DIExpression(), !155)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %13, i32 0, i32 0, !dbg !155
  %19 = load i64, ptr %18, align 4, !dbg !156
    #dbg_declare(ptr %13, !147, !DIExpression(), !157)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %13, i32 0, i32 1, !dbg !157
  %21 = load i64, ptr %20, align 4, !dbg !158
    #dbg_declare(ptr %14, !149, !DIExpression(), !159)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %14, i32 0, i32 0, !dbg !159
  %23 = load i64, ptr %22, align 4, !dbg !160
    #dbg_declare(ptr %14, !149, !DIExpression(), !161)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %14, i32 0, i32 1, !dbg !161
  %25 = load i64, ptr %24, align 4, !dbg !162
    #dbg_declare(ptr %14, !149, !DIExpression(), !163)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %14, i32 0, i32 2, !dbg !163
  %27 = load i64, ptr %26, align 4, !dbg !164
    #dbg_declare(ptr %15, !151, !DIExpression(), !165)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 0, !dbg !165
  %29 = load i64, ptr %28, align 4, !dbg !166
    #dbg_declare(ptr %15, !151, !DIExpression(), !167)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 1, !dbg !167
  %31 = load i64, ptr %30, align 4, !dbg !168
    #dbg_declare(ptr %15, !151, !DIExpression(), !169)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 2, !dbg !169
  %33 = load i64, ptr %32, align 4, !dbg !170
    #dbg_declare(ptr %15, !151, !DIExpression(), !171)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 3, !dbg !171
  %35 = load i64, ptr %34, align 4, !dbg !172
    #dbg_declare(ptr %15, !151, !DIExpression(), !173)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 4, !dbg !173
  %37 = load i64, ptr %36, align 4, !dbg !174
    #dbg_declare(ptr %15, !151, !DIExpression(), !175)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 5, !dbg !175
  %39 = load i64, ptr %38, align 4, !dbg !176
    #dbg_declare(ptr %15, !151, !DIExpression(), !177)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 6, !dbg !177
  %41 = load i64, ptr %40, align 4, !dbg !178
    #dbg_declare(ptr %15, !151, !DIExpression(), !179)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 7, !dbg !179
  %43 = load i64, ptr %42, align 4, !dbg !180
    #dbg_declare(ptr %15, !151, !DIExpression(), !181)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 8, !dbg !181
  %45 = load i64, ptr %44, align 4, !dbg !182
    #dbg_declare(ptr %15, !151, !DIExpression(), !183)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 9, !dbg !183
  %47 = load i64, ptr %46, align 4, !dbg !184
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %19), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %39), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %47), !dbg !183
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !183
    #dbg_declare(ptr %12, !145, !DIExpression(), !185)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %12, i32 0, i32 0, !dbg !185
  store i64 10, ptr %48, align 4, !dbg !186
    #dbg_declare(ptr %13, !147, !DIExpression(), !187)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %13, i32 0, i32 0, !dbg !187
  store i64 20, ptr %49, align 4, !dbg !188
    #dbg_declare(ptr %13, !147, !DIExpression(), !189)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %13, i32 0, i32 1, !dbg !189
  store i64 21, ptr %50, align 4, !dbg !190
    #dbg_declare(ptr %14, !149, !DIExpression(), !191)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %14, i32 0, i32 0, !dbg !191
  store i64 40, ptr %51, align 4, !dbg !192
    #dbg_declare(ptr %14, !149, !DIExpression(), !193)
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %14, i32 0, i32 1, !dbg !193
  store i64 41, ptr %52, align 4, !dbg !194
    #dbg_declare(ptr %14, !149, !DIExpression(), !195)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %14, i32 0, i32 2, !dbg !195
  store i64 42, ptr %53, align 4, !dbg !196
    #dbg_declare(ptr %15, !151, !DIExpression(), !197)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 0, !dbg !197
  store i64 70, ptr %54, align 4, !dbg !198
    #dbg_declare(ptr %15, !151, !DIExpression(), !199)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 1, !dbg !199
  store i64 71, ptr %55, align 4, !dbg !200
    #dbg_declare(ptr %15, !151, !DIExpression(), !201)
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 2, !dbg !201
  store i64 72, ptr %56, align 4, !dbg !202
    #dbg_declare(ptr %15, !151, !DIExpression(), !203)
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 3, !dbg !203
  store i64 73, ptr %57, align 4, !dbg !204
    #dbg_declare(ptr %15, !151, !DIExpression(), !205)
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 4, !dbg !205
  store i64 74, ptr %58, align 4, !dbg !206
    #dbg_declare(ptr %15, !151, !DIExpression(), !207)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 5, !dbg !207
  store i64 75, ptr %59, align 4, !dbg !208
    #dbg_declare(ptr %15, !151, !DIExpression(), !209)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 6, !dbg !209
  store i64 76, ptr %60, align 4, !dbg !210
    #dbg_declare(ptr %15, !151, !DIExpression(), !211)
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 7, !dbg !211
  store i64 77, ptr %61, align 4, !dbg !212
    #dbg_declare(ptr %15, !151, !DIExpression(), !213)
  %62 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 8, !dbg !213
  store i64 78, ptr %62, align 4, !dbg !214
    #dbg_declare(ptr %15, !151, !DIExpression(), !215)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %15, i32 0, i32 9, !dbg !215
  store i64 79, ptr %63, align 4, !dbg !216
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }), !dbg !216
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !216
  ret void, !dbg !217
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.FuncStructPtrParams"(ptr %0, ptr %1, ptr %2, ptr %3) !dbg !218 {
_llgo_0:
    #dbg_value(ptr %0, !225, !DIExpression(), !226)
    #dbg_value(ptr %1, !227, !DIExpression(), !228)
    #dbg_value(ptr %2, !229, !DIExpression(), !230)
    #dbg_value(ptr %3, !231, !DIExpression(), !232)
    #dbg_value(ptr %0, !225, !DIExpression(), !233)
    #dbg_value(ptr %1, !227, !DIExpression(), !234)
    #dbg_value(ptr %2, !229, !DIExpression(), !235)
    #dbg_value(ptr %3, !231, !DIExpression(), !236)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %0), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %1), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %2), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %3), !dbg !236
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !236
    #dbg_value(ptr %0, !225, !DIExpression(), !237)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %0, i32 0, i32 0, !dbg !237
  store i64 10, ptr %4, align 4, !dbg !238
    #dbg_value(ptr %1, !227, !DIExpression(), !239)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %1, i32 0, i32 0, !dbg !239
  store i64 20, ptr %5, align 4, !dbg !240
    #dbg_value(ptr %1, !227, !DIExpression(), !241)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %1, i32 0, i32 1, !dbg !241
  store i64 21, ptr %6, align 4, !dbg !242
    #dbg_value(ptr %2, !229, !DIExpression(), !243)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %2, i32 0, i32 0, !dbg !243
  store i64 40, ptr %7, align 4, !dbg !244
    #dbg_value(ptr %2, !229, !DIExpression(), !245)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %2, i32 0, i32 1, !dbg !245
  store i64 41, ptr %8, align 4, !dbg !246
    #dbg_value(ptr %2, !229, !DIExpression(), !247)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %2, i32 0, i32 2, !dbg !247
  store i64 42, ptr %9, align 4, !dbg !248
    #dbg_value(ptr %3, !231, !DIExpression(), !249)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 0, !dbg !249
  store i64 70, ptr %10, align 4, !dbg !250
    #dbg_value(ptr %3, !231, !DIExpression(), !251)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 1, !dbg !251
  store i64 71, ptr %11, align 4, !dbg !252
    #dbg_value(ptr %3, !231, !DIExpression(), !253)
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 2, !dbg !253
  store i64 72, ptr %12, align 4, !dbg !254
    #dbg_value(ptr %3, !231, !DIExpression(), !255)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 3, !dbg !255
  store i64 73, ptr %13, align 4, !dbg !256
    #dbg_value(ptr %3, !231, !DIExpression(), !257)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 4, !dbg !257
  store i64 74, ptr %14, align 4, !dbg !258
    #dbg_value(ptr %3, !231, !DIExpression(), !259)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 5, !dbg !259
  store i64 75, ptr %15, align 4, !dbg !260
    #dbg_value(ptr %3, !231, !DIExpression(), !261)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 6, !dbg !261
  store i64 76, ptr %16, align 4, !dbg !262
    #dbg_value(ptr %3, !231, !DIExpression(), !263)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 7, !dbg !263
  store i64 77, ptr %17, align 4, !dbg !264
    #dbg_value(ptr %3, !231, !DIExpression(), !265)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 8, !dbg !265
  store i64 78, ptr %18, align 4, !dbg !266
    #dbg_value(ptr %3, !231, !DIExpression(), !267)
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 9, !dbg !267
  store i64 79, ptr %19, align 4, !dbg !268
    #dbg_value(ptr %0, !225, !DIExpression(), !269)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %0, i32 0, i32 0, !dbg !269
  %21 = load i64, ptr %20, align 4, !dbg !270
    #dbg_value(ptr %1, !227, !DIExpression(), !271)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %1, i32 0, i32 0, !dbg !271
  %23 = load i64, ptr %22, align 4, !dbg !272
    #dbg_value(ptr %1, !227, !DIExpression(), !273)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %1, i32 0, i32 1, !dbg !273
  %25 = load i64, ptr %24, align 4, !dbg !274
    #dbg_value(ptr %2, !229, !DIExpression(), !275)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %2, i32 0, i32 0, !dbg !275
  %27 = load i64, ptr %26, align 4, !dbg !276
    #dbg_value(ptr %2, !229, !DIExpression(), !277)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %2, i32 0, i32 1, !dbg !277
  %29 = load i64, ptr %28, align 4, !dbg !278
    #dbg_value(ptr %2, !229, !DIExpression(), !279)
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %2, i32 0, i32 2, !dbg !279
  %31 = load i64, ptr %30, align 4, !dbg !280
    #dbg_value(ptr %3, !231, !DIExpression(), !281)
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 0, !dbg !281
  %33 = load i64, ptr %32, align 4, !dbg !282
    #dbg_value(ptr %3, !231, !DIExpression(), !283)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 1, !dbg !283
  %35 = load i64, ptr %34, align 4, !dbg !284
    #dbg_value(ptr %3, !231, !DIExpression(), !285)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 2, !dbg !285
  %37 = load i64, ptr %36, align 4, !dbg !286
    #dbg_value(ptr %3, !231, !DIExpression(), !287)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 3, !dbg !287
  %39 = load i64, ptr %38, align 4, !dbg !288
    #dbg_value(ptr %3, !231, !DIExpression(), !289)
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 4, !dbg !289
  %41 = load i64, ptr %40, align 4, !dbg !290
    #dbg_value(ptr %3, !231, !DIExpression(), !291)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 5, !dbg !291
  %43 = load i64, ptr %42, align 4, !dbg !292
    #dbg_value(ptr %3, !231, !DIExpression(), !293)
  %44 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 6, !dbg !293
  %45 = load i64, ptr %44, align 4, !dbg !294
    #dbg_value(ptr %3, !231, !DIExpression(), !295)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 7, !dbg !295
  %47 = load i64, ptr %46, align 4, !dbg !296
    #dbg_value(ptr %3, !231, !DIExpression(), !297)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 8, !dbg !297
  %49 = load i64, ptr %48, align 4, !dbg !298
    #dbg_value(ptr %3, !231, !DIExpression(), !299)
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %3, i32 0, i32 9, !dbg !299
  %51 = load i64, ptr %50, align 4, !dbg !300
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %31), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %33), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %39), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %47), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %51), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !299
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }), !dbg !301
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !301
  ret void, !dbg !302
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeParams"(i8 %0, i16 %1, i32 %2, i64 %3, i64 %4, i8 %5, i16 %6, i32 %7, i64 %8, i64 %9, float %10, double %11, i1 %12, { float, float } %13, { double, double } %14, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, [3 x i64] %16, [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"] %17, %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, %"github.com/goplus/llgo/cl/_testdata/debug.E" %19, %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %20, ptr %21, ptr %22, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %24, ptr %25, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, { ptr, ptr } %27) !dbg !303 {
_llgo_0:
    #dbg_value(i8 %0, !311, !DIExpression(), !312)
    #dbg_value(i16 %1, !313, !DIExpression(), !314)
    #dbg_value(i32 %2, !315, !DIExpression(), !316)
    #dbg_value(i64 %3, !317, !DIExpression(), !318)
    #dbg_value(i64 %4, !319, !DIExpression(), !320)
    #dbg_value(i8 %5, !321, !DIExpression(), !322)
    #dbg_value(i16 %6, !323, !DIExpression(), !324)
    #dbg_value(i32 %7, !325, !DIExpression(), !326)
    #dbg_value(i64 %8, !327, !DIExpression(), !328)
    #dbg_value(i64 %9, !329, !DIExpression(), !330)
    #dbg_value(float %10, !331, !DIExpression(), !332)
    #dbg_value(double %11, !333, !DIExpression(), !334)
    #dbg_value(i1 %12, !335, !DIExpression(), !336)
  %28 = alloca { float, float }, align 8, !dbg !337
  store { float, float } %13, ptr %28, align 4, !dbg !337
  %29 = load { float, float }, ptr %28, align 4, !dbg !337
    #dbg_value(ptr %28, !338, !DIExpression(DW_OP_deref), !339)
  %30 = alloca { double, double }, align 8, !dbg !337
  store { double, double } %14, ptr %30, align 8, !dbg !337
  %31 = load { double, double }, ptr %30, align 8, !dbg !337
    #dbg_value(ptr %30, !340, !DIExpression(DW_OP_deref), !341)
  %32 = alloca { ptr, i64, i64 }, align 8, !dbg !337
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, ptr %32, align 8, !dbg !337
  %33 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %32, align 8, !dbg !337
    #dbg_value(ptr %32, !342, !DIExpression(DW_OP_deref), !343)
  %34 = alloca [3 x i64], align 8, !dbg !337
  store [3 x i64] %16, ptr %34, align 4, !dbg !337
  %35 = load [3 x i64], ptr %34, align 4, !dbg !337
    #dbg_value(ptr %34, !344, !DIExpression(DW_OP_deref), !345)
  %36 = alloca [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"], align 8, !dbg !337
  store [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"] %17, ptr %36, align 4, !dbg !337
  %37 = load [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"], ptr %36, align 4, !dbg !337
    #dbg_value(ptr %36, !346, !DIExpression(DW_OP_deref), !347)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !337
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %18, ptr %38, align 8, !dbg !337
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %38, align 8, !dbg !337
    #dbg_value(ptr %38, !348, !DIExpression(DW_OP_deref), !349)
  %40 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.E", align 8, !dbg !337
  store %"github.com/goplus/llgo/cl/_testdata/debug.E" %19, ptr %40, align 4, !dbg !337
  %41 = load %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %40, align 4, !dbg !337
    #dbg_value(ptr %40, !350, !DIExpression(DW_OP_deref), !351)
  %42 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", align 8, !dbg !337
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %20, ptr %42, align 8, !dbg !337
  %43 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %42, align 8, !dbg !337
    #dbg_value(ptr %42, !352, !DIExpression(DW_OP_deref), !353)
    #dbg_value(ptr %21, !354, !DIExpression(), !355)
    #dbg_value(ptr %22, !356, !DIExpression(), !357)
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8, !dbg !337
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %44, align 8, !dbg !337
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %44, align 8, !dbg !337
    #dbg_value(ptr %44, !358, !DIExpression(DW_OP_deref), !359)
  %46 = alloca { i64, i8, i8, i16, i32, ptr, ptr, i64, ptr }, align 8, !dbg !337
  store ptr %24, ptr %46, align 8, !dbg !337
  %47 = load ptr, ptr %46, align 8, !dbg !337
    #dbg_value(ptr %46, !360, !DIExpression(DW_OP_deref), !361)
  %48 = alloca ptr, align 8, !dbg !337
  store ptr %25, ptr %48, align 8, !dbg !337
  %49 = load ptr, ptr %48, align 8, !dbg !337
    #dbg_value(ptr %48, !362, !DIExpression(DW_OP_deref), !363)
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8, !dbg !337
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr %50, align 8, !dbg !337
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %50, align 8, !dbg !337
    #dbg_value(ptr %50, !364, !DIExpression(DW_OP_deref), !365)
  %52 = alloca { ptr, ptr }, align 8, !dbg !337
  store { ptr, ptr } %27, ptr %52, align 8, !dbg !337
  %53 = load { ptr, ptr }, ptr %52, align 8, !dbg !337
    #dbg_value(ptr %52, !366, !DIExpression(DW_OP_deref), !367)
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24), !dbg !337
  store [3 x i64] %35, ptr %54, align 4, !dbg !337
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24), !dbg !337
  store [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"] %37, ptr %55, align 4, !dbg !337
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8), !dbg !337
  store %"github.com/goplus/llgo/cl/_testdata/debug.E" %41, ptr %56, align 4, !dbg !337
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288), !dbg !337
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %43, ptr %57, align 8, !dbg !337
    #dbg_value(i8 %0, !311, !DIExpression(), !368)
    #dbg_value(i16 %1, !313, !DIExpression(), !369)
    #dbg_value(i32 %2, !315, !DIExpression(), !370)
    #dbg_value(i64 %3, !317, !DIExpression(), !371)
    #dbg_value(i64 %4, !319, !DIExpression(), !372)
    #dbg_value(i8 %5, !321, !DIExpression(), !373)
    #dbg_value(i16 %6, !323, !DIExpression(), !374)
    #dbg_value(i32 %7, !325, !DIExpression(), !375)
    #dbg_value(i64 %8, !327, !DIExpression(), !376)
    #dbg_value(i64 %9, !329, !DIExpression(), !377)
    #dbg_value(float %10, !331, !DIExpression(), !378)
    #dbg_value(double %11, !333, !DIExpression(), !379)
    #dbg_value(i1 %12, !335, !DIExpression(), !380)
    #dbg_value(ptr %28, !338, !DIExpression(DW_OP_deref), !381)
    #dbg_value(ptr %30, !340, !DIExpression(DW_OP_deref), !382)
    #dbg_value(ptr %32, !342, !DIExpression(DW_OP_deref), !383)
    #dbg_declare(ptr %54, !344, !DIExpression(), !384)
  %58 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %54, i64 8, i64 3, i64 0, i64 3, i64 3), !dbg !384
    #dbg_value(ptr %38, !348, !DIExpression(DW_OP_deref), !385)
    #dbg_declare(ptr %56, !350, !DIExpression(), !386)
    #dbg_declare(ptr %57, !352, !DIExpression(), !387)
    #dbg_value(ptr %21, !354, !DIExpression(), !388)
    #dbg_value(ptr %22, !356, !DIExpression(), !389)
    #dbg_value(ptr %44, !358, !DIExpression(DW_OP_deref), !390)
    #dbg_value(ptr %46, !360, !DIExpression(DW_OP_deref), !391)
    #dbg_value(ptr %48, !362, !DIExpression(DW_OP_deref), !392)
    #dbg_value(ptr %50, !364, !DIExpression(DW_OP_deref), !393)
    #dbg_value(ptr %52, !366, !DIExpression(DW_OP_deref), !394)
  %59 = sext i8 %0 to i64, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %60 = sext i16 %1 to i64, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %60), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %61 = sext i32 %2 to i64, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %62 = zext i8 %5 to i64, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %62), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %63 = zext i16 %6 to i64, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %63), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %64 = zext i32 %7 to i64, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %64), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %8), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %9), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %65 = fpext float %10 to double, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %65), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %11), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %12), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %66 = extractvalue { float, float } %29, 0, !dbg !394
  %67 = extractvalue { float, float } %29, 1, !dbg !394
  %68 = fpext float %66 to double, !dbg !394
  %69 = fpext float %67 to double, !dbg !394
  %70 = insertvalue { double, double } undef, double %68, 0, !dbg !394
  %71 = insertvalue { double, double } %70, double %69, 1, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %71), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %31), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %39), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %56), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %57), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %21), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %22), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %45), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %47), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %49), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %51), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !394
  %72 = extractvalue { ptr, ptr } %53, 0, !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %72), !dbg !394
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !394
    #dbg_value(i8 9, !311, !DIExpression(), !395)
    #dbg_value(i16 10, !313, !DIExpression(), !396)
    #dbg_value(i32 11, !315, !DIExpression(), !397)
    #dbg_value(i64 12, !317, !DIExpression(), !398)
    #dbg_value(i64 13, !319, !DIExpression(), !399)
    #dbg_value(i8 14, !321, !DIExpression(), !400)
    #dbg_value(i16 15, !323, !DIExpression(), !401)
    #dbg_value(i32 16, !325, !DIExpression(), !402)
    #dbg_value(i64 17, !327, !DIExpression(), !403)
    #dbg_value(i64 18, !329, !DIExpression(), !404)
    #dbg_value(float 1.900000e+01, !331, !DIExpression(), !405)
    #dbg_value(double 2.000000e+01, !333, !DIExpression(), !406)
    #dbg_value(i1 false, !335, !DIExpression(), !407)
  %73 = alloca { float, float }, align 8, !dbg !408
  store { float, float } { float 2.100000e+01, float 2.200000e+01 }, ptr %73, align 4, !dbg !408
  %74 = load { float, float }, ptr %73, align 4, !dbg !408
    #dbg_value(ptr %73, !338, !DIExpression(DW_OP_deref), !408)
  %75 = alloca { double, double }, align 8, !dbg !409
  store { double, double } { double 2.300000e+01, double 2.400000e+01 }, ptr %75, align 8, !dbg !409
  %76 = load { double, double }, ptr %75, align 8, !dbg !409
    #dbg_value(ptr %75, !340, !DIExpression(DW_OP_deref), !409)
    #dbg_value(ptr %32, !342, !DIExpression(DW_OP_deref), !410)
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24), !dbg !410
  %78 = getelementptr inbounds i64, ptr %77, i64 0, !dbg !410
  store i64 31, ptr %78, align 4, !dbg !411
  %79 = getelementptr inbounds i64, ptr %77, i64 1, !dbg !411
  store i64 32, ptr %79, align 4, !dbg !412
  %80 = getelementptr inbounds i64, ptr %77, i64 2, !dbg !412
  store i64 33, ptr %80, align 4, !dbg !413
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %77, 0, !dbg !413
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, i64 3, 1, !dbg !413
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 3, 2, !dbg !413
    #dbg_declare(ptr %54, !344, !DIExpression(), !414)
  %84 = getelementptr inbounds i64, ptr %54, i64 0, !dbg !414
  %85 = getelementptr inbounds i64, ptr %54, i64 1, !dbg !414
  %86 = getelementptr inbounds i64, ptr %54, i64 2, !dbg !414
  store i64 34, ptr %84, align 4, !dbg !415
  store i64 35, ptr %85, align 4, !dbg !416
  store i64 36, ptr %86, align 4, !dbg !417
    #dbg_declare(ptr %55, !346, !DIExpression(), !418)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %55, i64 0, !dbg !418
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %87, i32 0, i32 0, !dbg !419
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %55, i64 1, !dbg !419
  %90 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %89, i32 0, i32 0, !dbg !420
  %91 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %55, i64 2, !dbg !420
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %91, i32 0, i32 0, !dbg !421
  store i64 37, ptr %88, align 4, !dbg !422
  store i64 38, ptr %90, align 4, !dbg !423
  store i64 39, ptr %92, align 4, !dbg !424
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !425
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %93, align 8, !dbg !425
  %94 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %93, align 8, !dbg !425
    #dbg_value(ptr %93, !348, !DIExpression(DW_OP_deref), !425)
    #dbg_declare(ptr %56, !350, !DIExpression(), !426)
  %95 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %56, i32 0, i32 0, !dbg !426
  store i64 40, ptr %95, align 4, !dbg !427
    #dbg_value(i8 9, !311, !DIExpression(), !428)
    #dbg_value(i16 10, !313, !DIExpression(), !429)
    #dbg_value(i32 11, !315, !DIExpression(), !430)
    #dbg_value(i64 12, !317, !DIExpression(), !431)
    #dbg_value(i64 13, !319, !DIExpression(), !432)
    #dbg_value(i8 14, !321, !DIExpression(), !433)
    #dbg_value(i16 15, !323, !DIExpression(), !434)
    #dbg_value(i32 16, !325, !DIExpression(), !435)
    #dbg_value(i64 17, !327, !DIExpression(), !436)
    #dbg_value(i64 18, !329, !DIExpression(), !437)
    #dbg_value(float 1.900000e+01, !331, !DIExpression(), !438)
    #dbg_value(double 2.000000e+01, !333, !DIExpression(), !439)
    #dbg_value(i1 false, !335, !DIExpression(), !440)
    #dbg_value(ptr %73, !338, !DIExpression(DW_OP_deref), !441)
    #dbg_value(ptr %75, !340, !DIExpression(DW_OP_deref), !442)
  %96 = alloca { ptr, i64, i64 }, align 8, !dbg !443
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, ptr %96, align 8, !dbg !443
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %96, align 8, !dbg !443
    #dbg_value(ptr %96, !342, !DIExpression(DW_OP_deref), !443)
    #dbg_declare(ptr %54, !344, !DIExpression(), !444)
  %98 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %54, i64 8, i64 3, i64 0, i64 3, i64 3), !dbg !444
    #dbg_declare(ptr %55, !346, !DIExpression(), !445)
    #dbg_value(ptr %93, !348, !DIExpression(DW_OP_deref), !446)
    #dbg_declare(ptr %56, !350, !DIExpression(), !447)
    #dbg_declare(ptr %57, !352, !DIExpression(), !448)
    #dbg_value(ptr %21, !354, !DIExpression(), !449)
    #dbg_value(ptr %22, !356, !DIExpression(), !450)
    #dbg_value(ptr %44, !358, !DIExpression(DW_OP_deref), !451)
    #dbg_value(ptr %46, !360, !DIExpression(DW_OP_deref), !452)
    #dbg_value(ptr %48, !362, !DIExpression(DW_OP_deref), !453)
    #dbg_value(ptr %50, !364, !DIExpression(DW_OP_deref), !454)
    #dbg_value(ptr %52, !366, !DIExpression(DW_OP_deref), !455)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 9), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 10), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 11), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 12), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 13), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 14), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 15), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 16), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 17), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 18), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.900000e+01), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 2.000000e+01), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } { double 2.100000e+01, double 2.200000e+01 }), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } { double 2.300000e+01, double 2.400000e+01 }), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %55), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %56), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %57), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %21), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %22), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %45), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %47), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %49), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %51), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !455
  %99 = extractvalue { ptr, ptr } %53, 0, !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %99), !dbg !455
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !455
  %100 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @errors.New(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 10 }), !dbg !456
  %101 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %100, 1, !dbg !457
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %101, !dbg !457
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeStructParam"(%"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %0) !dbg !458 {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", align 8, !dbg !461
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %0, ptr %1, align 8, !dbg !461
  %2 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %1, align 8, !dbg !461
    #dbg_value(ptr %1, !462, !DIExpression(DW_OP_deref), !463)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288), !dbg !461
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %2, ptr %3, align 8, !dbg !461
    #dbg_declare(ptr %3, !462, !DIExpression(), !464)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %3), !dbg !465
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !465
    #dbg_declare(ptr %3, !462, !DIExpression(), !466)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %3, i32 0, i32 0, !dbg !466
  store i8 8, ptr %4, align 1, !dbg !467
    #dbg_declare(ptr %3, !462, !DIExpression(), !468)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %3, i32 0, i32 18, !dbg !468
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8, !dbg !469
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %6, 1, !dbg !468
    #dbg_declare(ptr %3, !462, !DIExpression(), !470)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %3, i32 0, i32 0, !dbg !470
  %9 = load i8, ptr %8, align 1, !dbg !471
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7), !dbg !470
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !470
  %10 = sext i8 %9 to i64, !dbg !470
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10), !dbg !470
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !470
  ret void, !dbg !472
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeFor"() !dbg !473 {
_llgo_0:
    #dbg_value(i64 1, !476, !DIExpression(), !477)
    #dbg_value(i64 0, !478, !DIExpression(), !480)
  br label %_llgo_1, !dbg !480

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %0 = phi i64 [ 0, %_llgo_0 ], [ %3, %_llgo_4 ], !dbg !481
    #dbg_value(i64 %0, !478, !DIExpression(), !482)
  %1 = icmp slt i64 %0, 10, !dbg !482
  br i1 %1, label %_llgo_2, label %_llgo_3, !dbg !482

_llgo_2:                                          ; preds = %_llgo_1
    #dbg_value(i64 %0, !478, !DIExpression(), !483)
  %2 = icmp eq i64 %0, 0, !dbg !484
  br i1 %2, label %_llgo_5, label %_llgo_7, !dbg !484

_llgo_3:                                          ; preds = %_llgo_1
    #dbg_value(i64 1, !476, !DIExpression(), !487)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }), !dbg !487
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !487
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1), !dbg !487
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !487
  ret void, !dbg !488

_llgo_4:                                          ; preds = %_llgo_8, %_llgo_6, %_llgo_5
  %3 = add i64 %0, 1, !dbg !489
    #dbg_value(i64 %3, !478, !DIExpression(), !491)
  br label %_llgo_1, !dbg !491

_llgo_5:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }), !dbg !484
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !484
    #dbg_value(i64 %0, !478, !DIExpression(), !492)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }), !dbg !493
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !493
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !493
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !493
  br label %_llgo_4, !dbg !489

_llgo_6:                                          ; preds = %_llgo_7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }), !dbg !488
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !488
    #dbg_value(i64 %0, !478, !DIExpression(), !494)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }), !dbg !495
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !495
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !495
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !495
  br label %_llgo_4, !dbg !497

_llgo_7:                                          ; preds = %_llgo_2
  %4 = icmp eq i64 %0, 1, !dbg !488
  br i1 %4, label %_llgo_6, label %_llgo_8, !dbg !488

_llgo_8:                                          ; preds = %_llgo_7
    #dbg_value(i64 %0, !478, !DIExpression(), !498)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }), !dbg !499
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !499
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !499
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !499
  br label %_llgo_4, !dbg !501
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeIf"(i64 %0) !dbg !502 {
_llgo_0:
    #dbg_value(i64 %0, !505, !DIExpression(), !506)
    #dbg_value(i64 1, !507, !DIExpression(), !508)
    #dbg_value(i64 %0, !505, !DIExpression(), !509)
  %1 = icmp eq i64 %0, 1, !dbg !510
  br i1 %1, label %_llgo_1, label %_llgo_3, !dbg !510

_llgo_1:                                          ; preds = %_llgo_0
    #dbg_value(i64 2, !512, !DIExpression(), !514)
    #dbg_value(i64 3, !515, !DIExpression(), !516)
    #dbg_value(i64 1, !507, !DIExpression(), !517)
    #dbg_value(i64 2, !512, !DIExpression(), !518)
    #dbg_value(i64 3, !515, !DIExpression(), !519)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1), !dbg !519
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !519
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 2), !dbg !519
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !519
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 3), !dbg !519
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !519
  br label %_llgo_2, !dbg !520

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
    #dbg_value(i64 1, !507, !DIExpression(), !521)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }), !dbg !521
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !521
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1), !dbg !521
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !521
  ret void, !dbg !522

_llgo_3:                                          ; preds = %_llgo_0
    #dbg_value(i64 3, !523, !DIExpression(), !525)
    #dbg_value(i64 4, !526, !DIExpression(), !527)
    #dbg_value(i64 1, !507, !DIExpression(), !528)
    #dbg_value(i64 3, !523, !DIExpression(), !529)
    #dbg_value(i64 4, !526, !DIExpression(), !530)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1), !dbg !530
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !530
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 3), !dbg !530
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !530
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4), !dbg !530
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !530
  br label %_llgo_2, !dbg !531
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeSwitch"(i64 %0) !dbg !532 {
_llgo_0:
    #dbg_value(i64 %0, !533, !DIExpression(), !534)
    #dbg_value(i64 0, !535, !DIExpression(), !536)
    #dbg_value(i64 %0, !533, !DIExpression(), !537)
  %1 = icmp eq i64 %0, 1, !dbg !538
  br i1 %1, label %_llgo_2, label %_llgo_4, !dbg !538

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
    #dbg_value(i64 0, !535, !DIExpression(), !540)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }), !dbg !540
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !540
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0), !dbg !540
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !540
  ret void, !dbg !541

_llgo_2:                                          ; preds = %_llgo_0
    #dbg_value(i64 1, !542, !DIExpression(), !544)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }), !dbg !544
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !544
    #dbg_value(i64 %0, !533, !DIExpression(), !545)
    #dbg_value(i64 0, !535, !DIExpression(), !546)
    #dbg_value(i64 1, !542, !DIExpression(), !547)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1), !dbg !547
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !547
  br label %_llgo_1, !dbg !548

_llgo_3:                                          ; preds = %_llgo_4
    #dbg_value(i64 2, !549, !DIExpression(), !551)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }), !dbg !551
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !551
    #dbg_value(i64 %0, !533, !DIExpression(), !552)
    #dbg_value(i64 0, !535, !DIExpression(), !553)
    #dbg_value(i64 2, !549, !DIExpression(), !554)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 2), !dbg !554
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !554
  br label %_llgo_1, !dbg !555

_llgo_4:                                          ; preds = %_llgo_0
  %2 = icmp eq i64 %0, 2, !dbg !548
  br i1 %2, label %_llgo_3, label %_llgo_5, !dbg !548

_llgo_5:                                          ; preds = %_llgo_4
    #dbg_value(i64 3, !556, !DIExpression(), !558)
    #dbg_value(i64 %0, !533, !DIExpression(), !559)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }), !dbg !560
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !560
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !560
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !560
    #dbg_value(i64 %0, !533, !DIExpression(), !561)
    #dbg_value(i64 0, !535, !DIExpression(), !562)
    #dbg_value(i64 3, !556, !DIExpression(), !563)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 2 }), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 3), !dbg !563
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !563
  br label %_llgo_1, !dbg !564
}

define i64 @"github.com/goplus/llgo/cl/_testdata/debug.(*Struct).Foo"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" %2) !dbg !565 {
_llgo_0:
    #dbg_value(ptr %0, !571, !DIExpression(), !572)
  %3 = alloca { ptr, i64, i64 }, align 8, !dbg !573
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %3, align 8, !dbg !573
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8, !dbg !573
    #dbg_value(ptr %3, !574, !DIExpression(DW_OP_deref), !575)
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !573
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, ptr %5, align 8, !dbg !573
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8, !dbg !573
    #dbg_value(ptr %5, !576, !DIExpression(DW_OP_deref), !577)
  ret i64 1, !dbg !578
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.init"() !dbg !579 {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/debug.init$guard", align 1, !dbg !580
  br i1 %0, label %_llgo_2, label %_llgo_1, !dbg !580

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/debug.init$guard", align 1, !dbg !580
  call void @errors.init(), !dbg !580
  call void @"github.com/goplus/llgo/cl/_testdata/debug.init$after"(), !dbg !580
  store i64 301, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalInt", align 4, !dbg !580
  br label %_llgo_2, !dbg !580

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void, !dbg !580
}

define void @"github.com/goplus/llgo/cl/_testdata/debug.main"() !dbg !581 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", align 8, !dbg !582
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false), !dbg !582
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %0, i32 0, i32 0, !dbg !582
  store i64 1, ptr %1, align 4, !dbg !583
  %2 = load %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %0, align 4, !dbg !584
  %3 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", align 8, !dbg !585
  call void @llvm.memset(ptr %3, i8 0, i64 16, i1 false), !dbg !585
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %3, i32 0, i32 0, !dbg !585
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %3, i32 0, i32 1, !dbg !585
  store i64 2, ptr %4, align 4, !dbg !586
  store i64 3, ptr %5, align 4, !dbg !587
  %6 = load %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %3, align 4, !dbg !588
  %7 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", align 8, !dbg !589
  call void @llvm.memset(ptr %7, i8 0, i64 24, i1 false), !dbg !589
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %7, i32 0, i32 0, !dbg !589
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %7, i32 0, i32 1, !dbg !589
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %7, i32 0, i32 2, !dbg !589
  store i64 4, ptr %8, align 4, !dbg !590
  store i64 5, ptr %9, align 4, !dbg !591
  store i64 6, ptr %10, align 4, !dbg !592
  %11 = load %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %7, align 4, !dbg !593
  %12 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", align 8, !dbg !594
  call void @llvm.memset(ptr %12, i8 0, i64 80, i1 false), !dbg !594
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 0, !dbg !594
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 1, !dbg !594
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 2, !dbg !594
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 3, !dbg !594
  %17 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 4, !dbg !594
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 5, !dbg !594
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 6, !dbg !594
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 7, !dbg !594
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 8, !dbg !594
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, i32 0, i32 9, !dbg !594
  store i64 7, ptr %13, align 4, !dbg !595
  store i64 8, ptr %14, align 4, !dbg !596
  store i64 9, ptr %15, align 4, !dbg !597
  store i64 10, ptr %16, align 4, !dbg !598
  store i64 11, ptr %17, align 4, !dbg !599
  store i64 12, ptr %18, align 4, !dbg !600
  store i64 13, ptr %19, align 4, !dbg !601
  store i64 14, ptr %20, align 4, !dbg !602
  store i64 15, ptr %21, align 4, !dbg !603
  store i64 16, ptr %22, align 4, !dbg !604
  %23 = load %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %12, align 4, !dbg !605
  call void @"github.com/goplus/llgo/cl/_testdata/debug.FuncStructParams"(%"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct" %2, %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct" %6, %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct" %11, %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct" %23), !dbg !606
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8), !dbg !607
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", ptr %24, i32 0, i32 0, !dbg !607
  store i64 1, ptr %25, align 4, !dbg !608
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16), !dbg !609
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %26, i32 0, i32 0, !dbg !609
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", ptr %26, i32 0, i32 1, !dbg !609
  store i64 2, ptr %27, align 4, !dbg !610
  store i64 3, ptr %28, align 4, !dbg !611
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24), !dbg !612
  %30 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %29, i32 0, i32 0, !dbg !612
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %29, i32 0, i32 1, !dbg !612
  %32 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.MidStruct", ptr %29, i32 0, i32 2, !dbg !612
  store i64 4, ptr %30, align 4, !dbg !613
  store i64 5, ptr %31, align 4, !dbg !614
  store i64 6, ptr %32, align 4, !dbg !615
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 80), !dbg !616
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 0, !dbg !616
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 1, !dbg !616
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 2, !dbg !616
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 3, !dbg !616
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 4, !dbg !616
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 5, !dbg !616
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 6, !dbg !616
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 7, !dbg !616
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 8, !dbg !616
  %43 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.BigStruct", ptr %33, i32 0, i32 9, !dbg !616
  store i64 7, ptr %34, align 4, !dbg !617
  store i64 8, ptr %35, align 4, !dbg !618
  store i64 9, ptr %36, align 4, !dbg !619
  store i64 10, ptr %37, align 4, !dbg !620
  store i64 11, ptr %38, align 4, !dbg !621
  store i64 12, ptr %39, align 4, !dbg !622
  store i64 13, ptr %40, align 4, !dbg !623
  store i64 14, ptr %41, align 4, !dbg !624
  store i64 15, ptr %42, align 4, !dbg !625
  store i64 16, ptr %43, align 4, !dbg !626
  call void @"github.com/goplus/llgo/cl/_testdata/debug.FuncStructPtrParams"(ptr %24, ptr %26, ptr %29, ptr %33), !dbg !627
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8), !dbg !607
  store i64 100, ptr %44, align 4, !dbg !628
    #dbg_value(i64 100, !629, !DIExpression(), !628)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288), !dbg !628
    #dbg_declare(ptr %45, !630, !DIExpression(), !631)
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 0, !dbg !631
  %47 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 1, !dbg !631
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 2, !dbg !631
  %49 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 3, !dbg !631
  %50 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 4, !dbg !631
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 5, !dbg !631
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 6, !dbg !631
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 7, !dbg !631
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 8, !dbg !631
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 9, !dbg !631
  %56 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 10, !dbg !631
  %57 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 11, !dbg !631
  %58 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 12, !dbg !631
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 13, !dbg !631
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 14, !dbg !631
  %61 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 15, !dbg !631
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24), !dbg !632
  %63 = getelementptr inbounds i64, ptr %62, i64 0, !dbg !632
  store i64 21, ptr %63, align 4, !dbg !633
  %64 = getelementptr inbounds i64, ptr %62, i64 1, !dbg !633
  store i64 22, ptr %64, align 4, !dbg !634
  %65 = getelementptr inbounds i64, ptr %62, i64 2, !dbg !634
  store i64 23, ptr %65, align 4, !dbg !635
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %62, 0, !dbg !635
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 3, 1, !dbg !635
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 3, 2, !dbg !635
  %69 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 16, !dbg !635
  %70 = getelementptr inbounds i64, ptr %69, i64 0, !dbg !636
  %71 = getelementptr inbounds i64, ptr %69, i64 1, !dbg !636
  %72 = getelementptr inbounds i64, ptr %69, i64 2, !dbg !636
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 17, !dbg !636
  %74 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %73, i64 0, !dbg !637
  %75 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %74, i32 0, i32 0, !dbg !638
  %76 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %73, i64 1, !dbg !638
  %77 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %76, i32 0, i32 0, !dbg !639
  %78 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %73, i64 2, !dbg !639
  %79 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %78, i32 0, i32 0, !dbg !640
  %80 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 18, !dbg !637
  %81 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 19, !dbg !637
  %82 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %81, i32 0, i32 0, !dbg !641
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 20, !dbg !641
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 288), !dbg !641
  %85 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %84, i32 0, i32 1, !dbg !641
  store i16 100, ptr %85, align 2, !dbg !642
  %86 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 21, !dbg !643
    #dbg_declare(ptr %44, !629, !DIExpression(), !644)
  %87 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 22, !dbg !645
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0), !dbg !645
  %89 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 23, !dbg !646
  %90 = load ptr, ptr @_llgo_string, align 8, !dbg !647
  %91 = load ptr, ptr @_llgo_uint64, align 8, !dbg !647
  %92 = load ptr, ptr @"map[_llgo_string]_llgo_uint64", align 8, !dbg !647
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %92, i64 2), !dbg !647
  %94 = load ptr, ptr @"map[_llgo_string]_llgo_uint64", align 8, !dbg !648
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16), !dbg !648
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 1 }, ptr %95, align 8, !dbg !648
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %94, ptr %93, ptr %95), !dbg !648
  store i64 31, ptr %96, align 4, !dbg !648
  %97 = load ptr, ptr @"map[_llgo_string]_llgo_uint64", align 8, !dbg !649
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16), !dbg !649
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 1 }, ptr %98, align 8, !dbg !649
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %97, ptr %93, ptr %98), !dbg !649
  store i64 32, ptr %99, align 4, !dbg !649
  %100 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 24, !dbg !649
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0), !dbg !649
  %102 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 25, !dbg !650
  %103 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @errors.New(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 10 }), !dbg !651
  %104 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 26, !dbg !651
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8), !dbg !651
  %106 = getelementptr inbounds { ptr }, ptr %105, i32 0, i32 0, !dbg !651
  store ptr %44, ptr %106, align 8, !dbg !651
  %107 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testdata/debug.main$1", ptr undef }, ptr %105, 1, !dbg !651
  %108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 27, !dbg !652
  %109 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 28, !dbg !652
  store i8 1, ptr %46, align 1, !dbg !653
  store i16 2, ptr %47, align 2, !dbg !654
  store i32 3, ptr %48, align 4, !dbg !655
  store i64 4, ptr %49, align 4, !dbg !656
  store i64 5, ptr %50, align 4, !dbg !657
  store i8 6, ptr %51, align 1, !dbg !658
  store i16 7, ptr %52, align 2, !dbg !659
  store i32 8, ptr %53, align 4, !dbg !660
  store i64 9, ptr %54, align 4, !dbg !661
  store i64 10, ptr %55, align 4, !dbg !662
  store float 1.100000e+01, ptr %56, align 4, !dbg !663
  store double 1.200000e+01, ptr %57, align 8, !dbg !664
  store i1 true, ptr %58, align 1, !dbg !665
  store { float, float } { float 1.300000e+01, float 1.400000e+01 }, ptr %59, align 4, !dbg !666
  store { double, double } { double 1.500000e+01, double 1.600000e+01 }, ptr %60, align 8, !dbg !667
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, ptr %61, align 8, !dbg !668
  store i64 24, ptr %70, align 4, !dbg !669
  store i64 25, ptr %71, align 4, !dbg !670
  store i64 26, ptr %72, align 4, !dbg !671
  store i64 27, ptr %75, align 4, !dbg !672
  store i64 28, ptr %77, align 4, !dbg !673
  store i64 29, ptr %79, align 4, !dbg !674
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 5 }, ptr %80, align 8, !dbg !675
  store i64 30, ptr %82, align 4, !dbg !676
  store ptr %84, ptr %83, align 8, !dbg !677
  store ptr %44, ptr %86, align 8, !dbg !678
  %110 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct", align 8, !dbg !645
  %111 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct", align 8, !dbg !645
  %112 = load ptr, ptr @"[]_llgo_int", align 8, !dbg !645
  %113 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8, !dbg !645
  %114 = load ptr, ptr @"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU", align 8, !dbg !645
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %114, ptr %111), !dbg !645
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %115, 0, !dbg !645
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %116, ptr %88, 1, !dbg !645
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr %87, align 8, !dbg !679
  store ptr %93, ptr %89, align 8, !dbg !680
  store ptr %101, ptr %100, align 8, !dbg !681
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %103, ptr %102, align 8, !dbg !682
  store { ptr, ptr } %107, ptr %104, align 8, !dbg !683
  store i64 100, ptr %108, align 4, !dbg !684
  store i64 200, ptr %109, align 4, !dbg !685
    #dbg_declare(ptr %45, !630, !DIExpression(), !686)
  store ptr %45, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr", align 8, !dbg !687
  %118 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, align 8, !dbg !687
  %119 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", align 8, !dbg !688
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %118, ptr %119, align 8, !dbg !688
  %120 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %119, align 8, !dbg !688
    #dbg_value(ptr %119, !630, !DIExpression(DW_OP_deref), !688)
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %118, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStruct", align 8, !dbg !689
  %121 = load i64, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalInt", align 4, !dbg !689
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 10 }), !dbg !690
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !690
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %121), !dbg !690
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !690
    #dbg_declare(ptr %45, !630, !DIExpression(), !691)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 2 }), !dbg !692
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !692
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %45), !dbg !692
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !692
  %122 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, align 8, !dbg !693
  %123 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", align 8, !dbg !694
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %122, ptr %123, align 8, !dbg !694
  %124 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %123, align 8, !dbg !694
    #dbg_value(ptr %123, !630, !DIExpression(DW_OP_deref), !694)
  call void @"github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeStructParam"(%"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %122), !dbg !694
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 27 }), !dbg !693
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !693
    #dbg_declare(ptr %45, !630, !DIExpression(), !695)
  %125 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 0, !dbg !695
  %126 = load i8, ptr %125, align 1, !dbg !696
    #dbg_declare(ptr %45, !630, !DIExpression(), !697)
  %127 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 1, !dbg !697
  %128 = load i16, ptr %127, align 2, !dbg !698
    #dbg_declare(ptr %45, !630, !DIExpression(), !699)
  %129 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 2, !dbg !699
  %130 = load i32, ptr %129, align 4, !dbg !700
    #dbg_declare(ptr %45, !630, !DIExpression(), !701)
  %131 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 3, !dbg !701
  %132 = load i64, ptr %131, align 4, !dbg !702
    #dbg_declare(ptr %45, !630, !DIExpression(), !703)
  %133 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 4, !dbg !703
  %134 = load i64, ptr %133, align 4, !dbg !704
    #dbg_declare(ptr %45, !630, !DIExpression(), !705)
  %135 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 5, !dbg !705
  %136 = load i8, ptr %135, align 1, !dbg !706
    #dbg_declare(ptr %45, !630, !DIExpression(), !707)
  %137 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 6, !dbg !707
  %138 = load i16, ptr %137, align 2, !dbg !708
    #dbg_declare(ptr %45, !630, !DIExpression(), !709)
  %139 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 7, !dbg !709
  %140 = load i32, ptr %139, align 4, !dbg !710
    #dbg_declare(ptr %45, !630, !DIExpression(), !711)
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 8, !dbg !711
  %142 = load i64, ptr %141, align 4, !dbg !712
    #dbg_declare(ptr %45, !630, !DIExpression(), !713)
  %143 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 9, !dbg !713
  %144 = load i64, ptr %143, align 4, !dbg !714
    #dbg_declare(ptr %45, !630, !DIExpression(), !715)
  %145 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 10, !dbg !715
  %146 = load float, ptr %145, align 4, !dbg !716
    #dbg_declare(ptr %45, !630, !DIExpression(), !717)
  %147 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 11, !dbg !717
  %148 = load double, ptr %147, align 8, !dbg !718
    #dbg_declare(ptr %45, !630, !DIExpression(), !719)
  %149 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 12, !dbg !719
  %150 = load i1, ptr %149, align 1, !dbg !720
    #dbg_declare(ptr %45, !630, !DIExpression(), !721)
  %151 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 13, !dbg !721
  %152 = load { float, float }, ptr %151, align 4, !dbg !722
    #dbg_declare(ptr %45, !630, !DIExpression(), !723)
  %153 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 14, !dbg !723
  %154 = load { double, double }, ptr %153, align 8, !dbg !724
    #dbg_declare(ptr %45, !630, !DIExpression(), !725)
  %155 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 15, !dbg !725
  %156 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %155, align 8, !dbg !726
    #dbg_declare(ptr %45, !630, !DIExpression(), !727)
  %157 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 16, !dbg !727
  %158 = load [3 x i64], ptr %157, align 4, !dbg !728
    #dbg_declare(ptr %45, !630, !DIExpression(), !729)
  %159 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 17, !dbg !729
  %160 = load [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"], ptr %159, align 4, !dbg !730
    #dbg_declare(ptr %45, !630, !DIExpression(), !731)
  %161 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 18, !dbg !731
  %162 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %161, align 8, !dbg !732
    #dbg_declare(ptr %45, !630, !DIExpression(), !733)
  %163 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 19, !dbg !733
  %164 = load %"github.com/goplus/llgo/cl/_testdata/debug.E", ptr %163, align 4, !dbg !734
  %165 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, align 8, !dbg !733
  %166 = alloca %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", align 8, !dbg !735
  store %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %165, ptr %166, align 8, !dbg !735
  %167 = load %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %166, align 8, !dbg !735
    #dbg_value(ptr %166, !630, !DIExpression(DW_OP_deref), !735)
    #dbg_declare(ptr %45, !630, !DIExpression(), !736)
  %168 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 20, !dbg !736
  %169 = load ptr, ptr %168, align 8, !dbg !737
    #dbg_declare(ptr %45, !630, !DIExpression(), !738)
  %170 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 21, !dbg !738
  %171 = load ptr, ptr %170, align 8, !dbg !739
    #dbg_declare(ptr %45, !630, !DIExpression(), !740)
  %172 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 22, !dbg !740
  %173 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %172, align 8, !dbg !741
    #dbg_declare(ptr %45, !630, !DIExpression(), !742)
  %174 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 23, !dbg !742
  %175 = load ptr, ptr %174, align 8, !dbg !743
    #dbg_declare(ptr %45, !630, !DIExpression(), !744)
  %176 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 24, !dbg !744
  %177 = load ptr, ptr %176, align 8, !dbg !745
    #dbg_declare(ptr %45, !630, !DIExpression(), !746)
  %178 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 25, !dbg !746
  %179 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %178, align 8, !dbg !747
    #dbg_declare(ptr %45, !630, !DIExpression(), !748)
  %180 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 26, !dbg !748
  %181 = load { ptr, ptr }, ptr %180, align 8, !dbg !749
  %182 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeParams"(i8 %126, i16 %128, i32 %130, i64 %132, i64 %134, i8 %136, i16 %138, i32 %140, i64 %142, i64 %144, float %146, double %148, i1 %150, { float, float } %152, { double, double } %154, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, [3 x i64] %158, [3 x %"github.com/goplus/llgo/cl/_testdata/debug.E"] %160, %"github.com/goplus/llgo/runtime/internal/runtime.String" %162, %"github.com/goplus/llgo/cl/_testdata/debug.E" %164, %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields" %165, ptr %169, ptr %171, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %173, ptr %175, ptr %177, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %179, { ptr, ptr } %181), !dbg !748
  %183 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %182, 0, !dbg !750
  store i64 %183, ptr %44, align 4, !dbg !751
    #dbg_value(i64 %183, !629, !DIExpression(), !751)
  %184 = extractvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %182, 1, !dbg !751
  %185 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8, !dbg !752
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %184, ptr %185, align 8, !dbg !752
  %186 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %185, align 8, !dbg !752
    #dbg_value(ptr %185, !753, !DIExpression(DW_OP_deref), !752)
  %187 = load i64, ptr %44, align 4, !dbg !752
    #dbg_value(i64 %187, !629, !DIExpression(), !754)
    #dbg_value(ptr %185, !753, !DIExpression(DW_OP_deref), !755)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %187), !dbg !755
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !755
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %184), !dbg !755
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !755
  call void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeIf"(i64 1), !dbg !756
  call void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeIf"(i64 0), !dbg !757
  call void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeFor"(), !dbg !758
  call void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeSwitch"(i64 1), !dbg !759
  call void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeSwitch"(i64 2), !dbg !760
  call void @"github.com/goplus/llgo/cl/_testdata/debug.ScopeSwitch"(i64 3), !dbg !761
  %188 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr", align 8, !dbg !761
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %188), !dbg !762
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !762
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStruct"), !dbg !763
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !763
    #dbg_declare(ptr %45, !630, !DIExpression(), !764)
  %189 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 0, !dbg !764
  store i8 18, ptr %189, align 1, !dbg !765
    #dbg_declare(ptr %45, !630, !DIExpression(), !766)
  %190 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %45, i32 0, i32 0, !dbg !766
  %191 = load i8, ptr %190, align 1, !dbg !767
  %192 = sext i8 %191 to i64, !dbg !766
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %192), !dbg !766
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !766
  %193 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr", align 8, !dbg !768
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %193, i32 0, i32 0, !dbg !769
  %195 = load i8, ptr %194, align 1, !dbg !770
  %196 = sext i8 %195 to i64, !dbg !771
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %196), !dbg !771
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !771
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }), !dbg !772
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !772
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer), !dbg !773
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !773
    #dbg_declare(ptr %45, !630, !DIExpression(), !774)
  %197 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr", align 8, !dbg !775
  %198 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", ptr %197, i32 0, i32 1, !dbg !776
  %199 = load i16, ptr %198, align 2, !dbg !777
  %200 = load ptr, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr", align 8, !dbg !776
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %45), !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStruct"), !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !778
  %201 = sext i16 %199 to i64, !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %201), !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %200), !dbg !778
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !778
  store ptr null, ptr @"github.com/goplus/llgo/cl/_testdata/debug.globalStructPtr", align 8, !dbg !779
  ret void, !dbg !779
}

define { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @"github.com/goplus/llgo/cl/_testdata/debug.main$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) !dbg !780 {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !787
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %2, align 8, !dbg !787
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8, !dbg !787
    #dbg_value(ptr %2, !788, !DIExpression(DW_OP_deref), !789)
    #dbg_value(ptr %2, !788, !DIExpression(DW_OP_deref), !790)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 3 }), !dbg !787
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !787
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3), !dbg !787
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !787
  %4 = load { ptr }, ptr %0, align 8, !dbg !787
  %5 = extractvalue { ptr } %4, 0, !dbg !787
  store i64 201, ptr %5, align 4, !dbg !787
    #dbg_value(i64 201, !791, !DIExpression(), !792)
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @errors.New(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 8 }), !dbg !787
  %7 = insertvalue { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } { i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef }, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, 1, !dbg !787
  ret { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %7, !dbg !787
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @errors.New(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @errors.init()

define void @"github.com/goplus/llgo/cl/_testdata/debug.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint64, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 43)
  store ptr %5, ptr @_llgo_uint64, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"map[_llgo_string]_llgo_uint64", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 43)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %13)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 43)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %16)
  %18 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr %17, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 8 }, ptr %19, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %22, align 8
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %18, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 4, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 4, 2
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %8, ptr %9, ptr %29, i64 12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @"map[_llgo_string]_llgo_uint64", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, i64 25, i64 0, i64 0, i64 1)
  %32 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %31, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 0, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 0, 2
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  store ptr %38, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %39 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %33, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %40 = load ptr, ptr @_llgo_int, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_16, %_llgo_8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, i64 25, i64 0, i64 0, i64 1)
  %43 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct", align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %_llgo_17, label %_llgo_18

_llgo_11:                                         ; preds = %_llgo_9
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %45, ptr @_llgo_int, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %46 = load ptr, ptr @_llgo_int, align 8
  %47 = load ptr, ptr @"[]_llgo_int", align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %49)
  store ptr %50, ptr @"[]_llgo_int", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %51 = load ptr, ptr @"[]_llgo_int", align 8
  %52 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %54)
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %58 = getelementptr ptr, ptr %57, i64 0
  store ptr %55, ptr %58, align 8
  %59 = getelementptr ptr, ptr %57, i64 1
  store ptr %56, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 2
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %65 = getelementptr ptr, ptr %64, i64 0
  store ptr %63, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 2
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %69)
  store ptr %69, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %70 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %70, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %71, ptr @"github.com/goplus/llgo/cl/_testdata/debug.(*Struct).Foo", 2
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %72, ptr @"github.com/goplus/llgo/cl/_testdata/debug.(*Struct).Foo", 3
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %74, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 1, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %31, ptr %39, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78)
  br label %_llgo_10

_llgo_17:                                         ; preds = %_llgo_10
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %79)
  store ptr %79, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/debug.Struct", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_10
  %80 = load ptr, ptr @"_llgo_func$w7i25ru9Alz5aegActeASLLTXdwBqJ6Wc6FdpkIn_cs", align 8
  %81 = load ptr, ptr @"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU", align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 3 }, ptr undef }, ptr %80, 1
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %85 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %84, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %83, ptr %85, align 8
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %84, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 1, 1
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, i64 1, 2
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88)
  store ptr %89, ptr @"_llgo_iface$opv3stH14p-JT6UN0WEYD-Tr6bHK3MHpC4KSk10pjNU", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}
!llvm.dbg.cu = !{!2}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "globalInt", linkageName: "globalInt", scope: !2, file: !4, line: 567, type: !5, isLocal: false, isDefinition: true, align: 64)
!2 = distinct !DICompileUnit(language: DW_LANG_C, file: !3, producer: "LLGo", isOptimized: true, runtimeVersion: 1, emissionKind: FullDebug)
!3 = !DIFile(filename: "main", directory: "github.com/goplus/llgo/cl/_testdata/debug")
!4 = !DIFile(filename: "in.go", directory: "/workspace/cl/_testdata/debug/")
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*int", baseType: !6, size: 64, align: 64, dwarfAddressSpace: 0)
!6 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "globalStruct", linkageName: "globalStruct", scope: !2, file: !4, line: 568, type: !9, isLocal: false, isDefinition: true, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", baseType: !10, size: 64, align: 64, dwarfAddressSpace: 0)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", file: !4, line: 34, baseType: !11, align: 64)
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{i8 int8; i16 int16; i32 int32; i64 int64; i int; u8 uint8; u16 uint16; u32 uint32; u64 uint64; u uint; f32 float32; f64 float64; b bool; c64 complex64; c128 complex128; slice []int; arr [3]int; arr2 [3]github.com/goplus/llgo/cl/_testdata/debug.E; s string; e github.com/goplus/llgo/cl/_testdata/debug.E; pf *github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields; pi *int; intr github.com/goplus/llgo/cl/_testdata/debug.Interface; m map[string]uint64; c chan int; err error; fn struct{$f func(string) (int, error); $data unsafe.Pointer}; pad1 int; pad2 int}", scope: !4, file: !4, line: 89, size: 2304, align: 64, elements: !12)
!12 = !{!13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !44, !49, !55, !59, !65, !71, !72, !73, !74, !83, !87, !90, !92, !98, !99}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !11, baseType: !14, size: 8, align: 8)
!14 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "i16", scope: !11, baseType: !16, size: 16, align: 16, offset: 16)
!16 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !11, baseType: !18, size: 32, align: 32, offset: 32)
!18 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !11, baseType: !20, size: 64, align: 64, offset: 64)
!20 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !11, baseType: !6, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !11, baseType: !23, size: 8, align: 8, offset: 192)
!23 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "u16", scope: !11, baseType: !25, size: 16, align: 16, offset: 208)
!25 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !11, baseType: !27, size: 32, align: 32, offset: 224)
!27 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !11, baseType: !29, size: 64, align: 64, offset: 256)
!29 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !11, baseType: !31, size: 64, align: 64, offset: 320)
!31 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "f32", scope: !11, baseType: !33, size: 32, align: 32, offset: 384)
!33 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "f64", scope: !11, baseType: !35, size: 64, align: 64, offset: 448)
!35 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !11, baseType: !37, size: 8, align: 8, offset: 512)
!37 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "c64", scope: !11, baseType: !39, size: 64, align: 32, offset: 544)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "complex64", scope: !40, file: !40, size: 64, align: 32, elements: !41)
!40 = !DIFile(filename: "", directory: "")
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !39, baseType: !33, size: 32, align: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !39, baseType: !33, size: 32, align: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "c128", scope: !11, baseType: !45, size: 128, align: 64, offset: 640)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "complex128", scope: !40, file: !40, size: 128, align: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !45, baseType: !35, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !45, baseType: !35, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !11, baseType: !50, size: 192, align: 64, offset: 768)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", scope: !40, file: !40, size: 192, align: 64, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, baseType: !5, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !50, baseType: !31, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !50, baseType: !31, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !11, baseType: !56, size: 192, align: 64, offset: 960)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 3, lowerBound: 0)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "arr2", scope: !11, baseType: !60, size: 192, align: 64, offset: 1152)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, align: 64, elements: !57)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.E", file: !40, baseType: !62, align: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{i int}", scope: !40, file: !40, size: 64, align: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !62, baseType: !6, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !11, baseType: !66, size: 128, align: 64, offset: 1344)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !40, file: !40, size: 128, align: 64, elements: !67)
!67 = !{!68, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !66, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*int8", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !66, baseType: !31, size: 64, align: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !11, baseType: !61, size: 64, align: 64, offset: 1472)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !11, baseType: !9, size: 64, align: 64, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pi", scope: !11, baseType: !5, size: 64, align: 64, offset: 1600)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "intr", scope: !11, baseType: !75, size: 128, align: 64, offset: 1664)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.Interface", file: !4, line: 36, baseType: !76, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "interface{Foo(a []int, b string) int}", scope: !40, file: !40, size: 128, align: 64, elements: !77)
!77 = !{!78, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, baseType: !81, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/runtime/internal/runtime.iface", file: !40, baseType: !80, align: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "interface{Error() string}", scope: !40, file: !40, size: 128, align: 64, elements: !77)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, baseType: !81, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !11, baseType: !84, size: 64, align: 64, offset: 1792)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "map[string]uint64", scope: !4, file: !4, line: 37, size: 384, align: 64, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !84, baseType: !6, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !11, baseType: !88, size: 64, align: 64, offset: 1856)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "chan int", scope: !4, file: !4, line: 38, size: 64, align: 64, elements: !89)
!89 = !{}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !11, baseType: !91, size: 128, align: 64, offset: 1920)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", file: !4, line: 89, baseType: !80, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !11, baseType: !93, size: 128, align: 64, offset: 2048)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{$f func(string) (int, error); $data unsafe.Pointer}", scope: !4, file: !4, line: 40, size: 128, align: 64, elements: !94)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "$f", scope: !93, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "func(string) (int, error)", baseType: !81, size: 64, align: 64, dwarfAddressSpace: 0)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "$data", scope: !93, baseType: !81, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !11, baseType: !6, size: 64, align: 64, offset: 2176)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !11, baseType: !6, size: 64, align: 64, offset: 2240)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "globalStructPtr", linkageName: "globalStructPtr", scope: !2, file: !4, line: 569, type: !102, isLocal: false, isDefinition: true, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "**github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "init$guard", linkageName: "init$guard", scope: !2, file: !40, type: !105, isLocal: false, isDefinition: true, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*bool", baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 7, !"Dwarf Version", i32 4}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 8, !"PIC Level", i32 2}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 1}
!112 = !{!"LLGo Compiler"}
!113 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.FuncStructParams", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.FuncStructParams", scope: !4, file: !4, line: 247, type: !114, scopeLine: 247, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !120, !125, !131}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", file: !4, line: 247, baseType: !117, align: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{I int}", scope: !4, file: !4, line: 247, size: 64, align: 64, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !117, baseType: !6, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", file: !4, line: 247, baseType: !121, align: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{I int; J int}", scope: !4, file: !4, line: 247, size: 128, align: 64, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !121, baseType: !6, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "J", scope: !121, baseType: !6, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.MidStruct", file: !4, line: 247, baseType: !126, align: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{I int; J int; K int}", scope: !4, file: !4, line: 247, size: 192, align: 64, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !126, baseType: !6, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "J", scope: !126, baseType: !6, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "K", scope: !126, baseType: !6, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.BigStruct", file: !4, line: 247, baseType: !132, align: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{I int; J int; K int; L int; M int; N int; O int; P int; Q int; R int}", scope: !4, file: !4, line: 247, size: 640, align: 64, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !132, baseType: !6, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "J", scope: !132, baseType: !6, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "K", scope: !132, baseType: !6, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !132, baseType: !6, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !132, baseType: !6, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !132, baseType: !6, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !132, baseType: !6, size: 64, align: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !132, baseType: !6, size: 64, align: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "Q", scope: !132, baseType: !6, size: 64, align: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "R", scope: !132, baseType: !6, size: 64, align: 64, offset: 576)
!144 = !DILocation(line: 247, column: 1, scope: !113)
!145 = !DILocalVariable(name: "t", arg: 1, scope: !113, file: !4, line: 247, type: !116)
!146 = !DILocation(line: 247, column: 23, scope: !113)
!147 = !DILocalVariable(name: "s", arg: 2, scope: !113, file: !4, line: 247, type: !120)
!148 = !DILocation(line: 247, column: 37, scope: !113)
!149 = !DILocalVariable(name: "m", arg: 3, scope: !113, file: !4, line: 247, type: !125)
!150 = !DILocation(line: 247, column: 52, scope: !113)
!151 = !DILocalVariable(name: "b", arg: 4, scope: !113, file: !4, line: 247, type: !131)
!152 = !DILocation(line: 247, column: 65, scope: !113)
!153 = !DILocation(line: 267, column: 10, scope: !113)
!154 = !DILocation(line: 267, column: 12, scope: !113)
!155 = !DILocation(line: 267, column: 15, scope: !113)
!156 = !DILocation(line: 267, column: 17, scope: !113)
!157 = !DILocation(line: 267, column: 20, scope: !113)
!158 = !DILocation(line: 267, column: 22, scope: !113)
!159 = !DILocation(line: 267, column: 25, scope: !113)
!160 = !DILocation(line: 267, column: 27, scope: !113)
!161 = !DILocation(line: 267, column: 30, scope: !113)
!162 = !DILocation(line: 267, column: 32, scope: !113)
!163 = !DILocation(line: 267, column: 35, scope: !113)
!164 = !DILocation(line: 267, column: 37, scope: !113)
!165 = !DILocation(line: 267, column: 40, scope: !113)
!166 = !DILocation(line: 267, column: 42, scope: !113)
!167 = !DILocation(line: 267, column: 45, scope: !113)
!168 = !DILocation(line: 267, column: 47, scope: !113)
!169 = !DILocation(line: 267, column: 50, scope: !113)
!170 = !DILocation(line: 267, column: 52, scope: !113)
!171 = !DILocation(line: 267, column: 55, scope: !113)
!172 = !DILocation(line: 267, column: 57, scope: !113)
!173 = !DILocation(line: 267, column: 60, scope: !113)
!174 = !DILocation(line: 267, column: 62, scope: !113)
!175 = !DILocation(line: 267, column: 65, scope: !113)
!176 = !DILocation(line: 267, column: 67, scope: !113)
!177 = !DILocation(line: 267, column: 70, scope: !113)
!178 = !DILocation(line: 267, column: 72, scope: !113)
!179 = !DILocation(line: 267, column: 75, scope: !113)
!180 = !DILocation(line: 267, column: 77, scope: !113)
!181 = !DILocation(line: 267, column: 80, scope: !113)
!182 = !DILocation(line: 267, column: 82, scope: !113)
!183 = !DILocation(line: 267, column: 85, scope: !113)
!184 = !DILocation(line: 267, column: 87, scope: !113)
!185 = !DILocation(line: 268, column: 2, scope: !113)
!186 = !DILocation(line: 268, column: 4, scope: !113)
!187 = !DILocation(line: 269, column: 2, scope: !113)
!188 = !DILocation(line: 269, column: 4, scope: !113)
!189 = !DILocation(line: 270, column: 2, scope: !113)
!190 = !DILocation(line: 270, column: 4, scope: !113)
!191 = !DILocation(line: 271, column: 2, scope: !113)
!192 = !DILocation(line: 271, column: 4, scope: !113)
!193 = !DILocation(line: 272, column: 2, scope: !113)
!194 = !DILocation(line: 272, column: 4, scope: !113)
!195 = !DILocation(line: 273, column: 2, scope: !113)
!196 = !DILocation(line: 273, column: 4, scope: !113)
!197 = !DILocation(line: 274, column: 2, scope: !113)
!198 = !DILocation(line: 274, column: 4, scope: !113)
!199 = !DILocation(line: 275, column: 2, scope: !113)
!200 = !DILocation(line: 275, column: 4, scope: !113)
!201 = !DILocation(line: 276, column: 2, scope: !113)
!202 = !DILocation(line: 276, column: 4, scope: !113)
!203 = !DILocation(line: 277, column: 2, scope: !113)
!204 = !DILocation(line: 277, column: 4, scope: !113)
!205 = !DILocation(line: 278, column: 2, scope: !113)
!206 = !DILocation(line: 278, column: 4, scope: !113)
!207 = !DILocation(line: 279, column: 2, scope: !113)
!208 = !DILocation(line: 279, column: 4, scope: !113)
!209 = !DILocation(line: 280, column: 2, scope: !113)
!210 = !DILocation(line: 280, column: 4, scope: !113)
!211 = !DILocation(line: 281, column: 2, scope: !113)
!212 = !DILocation(line: 281, column: 4, scope: !113)
!213 = !DILocation(line: 282, column: 2, scope: !113)
!214 = !DILocation(line: 282, column: 4, scope: !113)
!215 = !DILocation(line: 283, column: 2, scope: !113)
!216 = !DILocation(line: 283, column: 4, scope: !113)
!217 = !DILocation(line: 302, column: 2, scope: !113)
!218 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.FuncStructPtrParams", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.FuncStructPtrParams", scope: !4, file: !4, line: 305, type: !219, scopeLine: 305, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !222, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*github.com/goplus/llgo/cl/_testdata/debug.TinyStruct", baseType: !116, size: 64, align: 64, dwarfAddressSpace: 0)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*github.com/goplus/llgo/cl/_testdata/debug.SmallStruct", baseType: !120, size: 64, align: 64, dwarfAddressSpace: 0)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*github.com/goplus/llgo/cl/_testdata/debug.MidStruct", baseType: !125, size: 64, align: 64, dwarfAddressSpace: 0)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*github.com/goplus/llgo/cl/_testdata/debug.BigStruct", baseType: !131, size: 64, align: 64, dwarfAddressSpace: 0)
!225 = !DILocalVariable(name: "t", arg: 1, scope: !218, file: !4, line: 305, type: !221)
!226 = !DILocation(line: 305, column: 26, scope: !218)
!227 = !DILocalVariable(name: "s", arg: 2, scope: !218, file: !4, line: 305, type: !222)
!228 = !DILocation(line: 305, column: 41, scope: !218)
!229 = !DILocalVariable(name: "m", arg: 3, scope: !218, file: !4, line: 305, type: !223)
!230 = !DILocation(line: 305, column: 57, scope: !218)
!231 = !DILocalVariable(name: "b", arg: 4, scope: !218, file: !4, line: 305, type: !224)
!232 = !DILocation(line: 305, column: 71, scope: !218)
!233 = !DILocation(line: 324, column: 10, scope: !218)
!234 = !DILocation(line: 324, column: 13, scope: !218)
!235 = !DILocation(line: 324, column: 16, scope: !218)
!236 = !DILocation(line: 324, column: 19, scope: !218)
!237 = !DILocation(line: 325, column: 2, scope: !218)
!238 = !DILocation(line: 325, column: 4, scope: !218)
!239 = !DILocation(line: 326, column: 2, scope: !218)
!240 = !DILocation(line: 326, column: 4, scope: !218)
!241 = !DILocation(line: 327, column: 2, scope: !218)
!242 = !DILocation(line: 327, column: 4, scope: !218)
!243 = !DILocation(line: 328, column: 2, scope: !218)
!244 = !DILocation(line: 328, column: 4, scope: !218)
!245 = !DILocation(line: 329, column: 2, scope: !218)
!246 = !DILocation(line: 329, column: 4, scope: !218)
!247 = !DILocation(line: 330, column: 2, scope: !218)
!248 = !DILocation(line: 330, column: 4, scope: !218)
!249 = !DILocation(line: 331, column: 2, scope: !218)
!250 = !DILocation(line: 331, column: 4, scope: !218)
!251 = !DILocation(line: 332, column: 2, scope: !218)
!252 = !DILocation(line: 332, column: 4, scope: !218)
!253 = !DILocation(line: 333, column: 2, scope: !218)
!254 = !DILocation(line: 333, column: 4, scope: !218)
!255 = !DILocation(line: 334, column: 2, scope: !218)
!256 = !DILocation(line: 334, column: 4, scope: !218)
!257 = !DILocation(line: 335, column: 2, scope: !218)
!258 = !DILocation(line: 335, column: 4, scope: !218)
!259 = !DILocation(line: 336, column: 2, scope: !218)
!260 = !DILocation(line: 336, column: 4, scope: !218)
!261 = !DILocation(line: 337, column: 2, scope: !218)
!262 = !DILocation(line: 337, column: 4, scope: !218)
!263 = !DILocation(line: 338, column: 2, scope: !218)
!264 = !DILocation(line: 338, column: 4, scope: !218)
!265 = !DILocation(line: 339, column: 2, scope: !218)
!266 = !DILocation(line: 339, column: 4, scope: !218)
!267 = !DILocation(line: 340, column: 2, scope: !218)
!268 = !DILocation(line: 340, column: 4, scope: !218)
!269 = !DILocation(line: 359, column: 10, scope: !218)
!270 = !DILocation(line: 359, column: 12, scope: !218)
!271 = !DILocation(line: 359, column: 15, scope: !218)
!272 = !DILocation(line: 359, column: 17, scope: !218)
!273 = !DILocation(line: 359, column: 20, scope: !218)
!274 = !DILocation(line: 359, column: 22, scope: !218)
!275 = !DILocation(line: 359, column: 25, scope: !218)
!276 = !DILocation(line: 359, column: 27, scope: !218)
!277 = !DILocation(line: 359, column: 30, scope: !218)
!278 = !DILocation(line: 359, column: 32, scope: !218)
!279 = !DILocation(line: 359, column: 35, scope: !218)
!280 = !DILocation(line: 359, column: 37, scope: !218)
!281 = !DILocation(line: 359, column: 40, scope: !218)
!282 = !DILocation(line: 359, column: 42, scope: !218)
!283 = !DILocation(line: 359, column: 45, scope: !218)
!284 = !DILocation(line: 359, column: 47, scope: !218)
!285 = !DILocation(line: 359, column: 50, scope: !218)
!286 = !DILocation(line: 359, column: 52, scope: !218)
!287 = !DILocation(line: 359, column: 55, scope: !218)
!288 = !DILocation(line: 359, column: 57, scope: !218)
!289 = !DILocation(line: 359, column: 60, scope: !218)
!290 = !DILocation(line: 359, column: 62, scope: !218)
!291 = !DILocation(line: 359, column: 65, scope: !218)
!292 = !DILocation(line: 359, column: 67, scope: !218)
!293 = !DILocation(line: 359, column: 70, scope: !218)
!294 = !DILocation(line: 359, column: 72, scope: !218)
!295 = !DILocation(line: 359, column: 75, scope: !218)
!296 = !DILocation(line: 359, column: 77, scope: !218)
!297 = !DILocation(line: 359, column: 80, scope: !218)
!298 = !DILocation(line: 359, column: 82, scope: !218)
!299 = !DILocation(line: 359, column: 85, scope: !218)
!300 = !DILocation(line: 359, column: 87, scope: !218)
!301 = !DILocation(line: 359, column: 2, scope: !218)
!302 = !DILocation(line: 360, column: 2, scope: !218)
!303 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeParams", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeParams", scope: !4, file: !4, line: 89, type: !304, scopeLine: 89, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !14, !16, !18, !20, !6, !23, !25, !27, !29, !31, !33, !35, !37, !39, !45, !50, !56, !60, !66, !61, !310, !9, !5, !75, !84, !88, !91, !93}
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "(int, error)", scope: !4, file: !4, line: 89, size: 192, align: 64, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !306, baseType: !6, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !306, baseType: !91, size: 128, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields", file: !4, line: 89, baseType: !11, align: 64)
!311 = !DILocalVariable(name: "i8", arg: 1, scope: !303, file: !4, line: 90, type: !14)
!312 = !DILocation(line: 90, column: 2, scope: !303)
!313 = !DILocalVariable(name: "i16", arg: 2, scope: !303, file: !4, line: 91, type: !16)
!314 = !DILocation(line: 91, column: 2, scope: !303)
!315 = !DILocalVariable(name: "i32", arg: 3, scope: !303, file: !4, line: 92, type: !18)
!316 = !DILocation(line: 92, column: 2, scope: !303)
!317 = !DILocalVariable(name: "i64", arg: 4, scope: !303, file: !4, line: 93, type: !20)
!318 = !DILocation(line: 93, column: 2, scope: !303)
!319 = !DILocalVariable(name: "i", arg: 5, scope: !303, file: !4, line: 94, type: !6)
!320 = !DILocation(line: 94, column: 2, scope: !303)
!321 = !DILocalVariable(name: "u8", arg: 6, scope: !303, file: !4, line: 95, type: !23)
!322 = !DILocation(line: 95, column: 2, scope: !303)
!323 = !DILocalVariable(name: "u16", arg: 7, scope: !303, file: !4, line: 96, type: !25)
!324 = !DILocation(line: 96, column: 2, scope: !303)
!325 = !DILocalVariable(name: "u32", arg: 8, scope: !303, file: !4, line: 97, type: !27)
!326 = !DILocation(line: 97, column: 2, scope: !303)
!327 = !DILocalVariable(name: "u64", arg: 9, scope: !303, file: !4, line: 98, type: !29)
!328 = !DILocation(line: 98, column: 2, scope: !303)
!329 = !DILocalVariable(name: "u", arg: 10, scope: !303, file: !4, line: 99, type: !31)
!330 = !DILocation(line: 99, column: 2, scope: !303)
!331 = !DILocalVariable(name: "f32", arg: 11, scope: !303, file: !4, line: 100, type: !33)
!332 = !DILocation(line: 100, column: 2, scope: !303)
!333 = !DILocalVariable(name: "f64", arg: 12, scope: !303, file: !4, line: 101, type: !35)
!334 = !DILocation(line: 101, column: 2, scope: !303)
!335 = !DILocalVariable(name: "b", arg: 13, scope: !303, file: !4, line: 102, type: !37)
!336 = !DILocation(line: 102, column: 2, scope: !303)
!337 = !DILocation(line: 89, column: 1, scope: !303)
!338 = !DILocalVariable(name: "c64", arg: 14, scope: !303, file: !4, line: 103, type: !39)
!339 = !DILocation(line: 103, column: 2, scope: !303)
!340 = !DILocalVariable(name: "c128", arg: 15, scope: !303, file: !4, line: 104, type: !45)
!341 = !DILocation(line: 104, column: 2, scope: !303)
!342 = !DILocalVariable(name: "slice", arg: 16, scope: !303, file: !4, line: 105, type: !50)
!343 = !DILocation(line: 105, column: 2, scope: !303)
!344 = !DILocalVariable(name: "arr", arg: 17, scope: !303, file: !4, line: 106, type: !56)
!345 = !DILocation(line: 106, column: 2, scope: !303)
!346 = !DILocalVariable(name: "arr2", arg: 18, scope: !303, file: !4, line: 107, type: !60)
!347 = !DILocation(line: 107, column: 2, scope: !303)
!348 = !DILocalVariable(name: "s", arg: 19, scope: !303, file: !4, line: 108, type: !66)
!349 = !DILocation(line: 108, column: 2, scope: !303)
!350 = !DILocalVariable(name: "e", arg: 20, scope: !303, file: !4, line: 109, type: !61)
!351 = !DILocation(line: 109, column: 2, scope: !303)
!352 = !DILocalVariable(name: "f", arg: 21, scope: !303, file: !4, line: 110, type: !310)
!353 = !DILocation(line: 110, column: 2, scope: !303)
!354 = !DILocalVariable(name: "pf", arg: 22, scope: !303, file: !4, line: 111, type: !9)
!355 = !DILocation(line: 111, column: 2, scope: !303)
!356 = !DILocalVariable(name: "pi", arg: 23, scope: !303, file: !4, line: 112, type: !5)
!357 = !DILocation(line: 112, column: 2, scope: !303)
!358 = !DILocalVariable(name: "intr", arg: 24, scope: !303, file: !4, line: 113, type: !75)
!359 = !DILocation(line: 113, column: 2, scope: !303)
!360 = !DILocalVariable(name: "m", arg: 25, scope: !303, file: !4, line: 114, type: !84)
!361 = !DILocation(line: 114, column: 2, scope: !303)
!362 = !DILocalVariable(name: "c", arg: 26, scope: !303, file: !4, line: 115, type: !88)
!363 = !DILocation(line: 115, column: 2, scope: !303)
!364 = !DILocalVariable(name: "err", arg: 27, scope: !303, file: !4, line: 116, type: !91)
!365 = !DILocation(line: 116, column: 2, scope: !303)
!366 = !DILocalVariable(name: "fn", arg: 28, scope: !303, file: !4, line: 117, type: !93)
!367 = !DILocation(line: 117, column: 2, scope: !303)
!368 = !DILocation(line: 150, column: 3, scope: !303)
!369 = !DILocation(line: 150, column: 7, scope: !303)
!370 = !DILocation(line: 150, column: 12, scope: !303)
!371 = !DILocation(line: 150, column: 17, scope: !303)
!372 = !DILocation(line: 150, column: 22, scope: !303)
!373 = !DILocation(line: 150, column: 25, scope: !303)
!374 = !DILocation(line: 150, column: 29, scope: !303)
!375 = !DILocation(line: 150, column: 34, scope: !303)
!376 = !DILocation(line: 150, column: 39, scope: !303)
!377 = !DILocation(line: 150, column: 44, scope: !303)
!378 = !DILocation(line: 151, column: 3, scope: !303)
!379 = !DILocation(line: 151, column: 8, scope: !303)
!380 = !DILocation(line: 151, column: 13, scope: !303)
!381 = !DILocation(line: 152, column: 3, scope: !303)
!382 = !DILocation(line: 152, column: 8, scope: !303)
!383 = !DILocation(line: 153, column: 3, scope: !303)
!384 = !DILocation(line: 153, column: 10, scope: !303)
!385 = !DILocation(line: 154, column: 3, scope: !303)
!386 = !DILocation(line: 155, column: 4, scope: !303)
!387 = !DILocation(line: 156, column: 4, scope: !303)
!388 = !DILocation(line: 156, column: 7, scope: !303)
!389 = !DILocation(line: 156, column: 11, scope: !303)
!390 = !DILocation(line: 156, column: 15, scope: !303)
!391 = !DILocation(line: 156, column: 21, scope: !303)
!392 = !DILocation(line: 157, column: 3, scope: !303)
!393 = !DILocation(line: 158, column: 3, scope: !303)
!394 = !DILocation(line: 159, column: 3, scope: !303)
!395 = !DILocation(line: 161, column: 2, scope: !303)
!396 = !DILocation(line: 162, column: 2, scope: !303)
!397 = !DILocation(line: 163, column: 2, scope: !303)
!398 = !DILocation(line: 164, column: 2, scope: !303)
!399 = !DILocation(line: 165, column: 2, scope: !303)
!400 = !DILocation(line: 166, column: 2, scope: !303)
!401 = !DILocation(line: 167, column: 2, scope: !303)
!402 = !DILocation(line: 168, column: 2, scope: !303)
!403 = !DILocation(line: 169, column: 2, scope: !303)
!404 = !DILocation(line: 170, column: 2, scope: !303)
!405 = !DILocation(line: 171, column: 2, scope: !303)
!406 = !DILocation(line: 172, column: 2, scope: !303)
!407 = !DILocation(line: 173, column: 2, scope: !303)
!408 = !DILocation(line: 174, column: 2, scope: !303)
!409 = !DILocation(line: 175, column: 2, scope: !303)
!410 = !DILocation(line: 176, column: 2, scope: !303)
!411 = !DILocation(line: 176, column: 16, scope: !303)
!412 = !DILocation(line: 176, column: 20, scope: !303)
!413 = !DILocation(line: 176, column: 24, scope: !303)
!414 = !DILocation(line: 177, column: 2, scope: !303)
!415 = !DILocation(line: 177, column: 15, scope: !303)
!416 = !DILocation(line: 177, column: 19, scope: !303)
!417 = !DILocation(line: 177, column: 23, scope: !303)
!418 = !DILocation(line: 178, column: 2, scope: !303)
!419 = !DILocation(line: 178, column: 14, scope: !303)
!420 = !DILocation(line: 178, column: 23, scope: !303)
!421 = !DILocation(line: 178, column: 32, scope: !303)
!422 = !DILocation(line: 178, column: 16, scope: !303)
!423 = !DILocation(line: 178, column: 25, scope: !303)
!424 = !DILocation(line: 178, column: 34, scope: !303)
!425 = !DILocation(line: 179, column: 2, scope: !303)
!426 = !DILocation(line: 180, column: 2, scope: !303)
!427 = !DILocation(line: 180, column: 9, scope: !303)
!428 = !DILocation(line: 182, column: 10, scope: !303)
!429 = !DILocation(line: 182, column: 14, scope: !303)
!430 = !DILocation(line: 182, column: 19, scope: !303)
!431 = !DILocation(line: 182, column: 24, scope: !303)
!432 = !DILocation(line: 182, column: 29, scope: !303)
!433 = !DILocation(line: 182, column: 32, scope: !303)
!434 = !DILocation(line: 182, column: 36, scope: !303)
!435 = !DILocation(line: 182, column: 41, scope: !303)
!436 = !DILocation(line: 182, column: 46, scope: !303)
!437 = !DILocation(line: 182, column: 51, scope: !303)
!438 = !DILocation(line: 183, column: 3, scope: !303)
!439 = !DILocation(line: 183, column: 8, scope: !303)
!440 = !DILocation(line: 183, column: 13, scope: !303)
!441 = !DILocation(line: 184, column: 3, scope: !303)
!442 = !DILocation(line: 184, column: 8, scope: !303)
!443 = !DILocation(line: 185, column: 3, scope: !303)
!444 = !DILocation(line: 185, column: 10, scope: !303)
!445 = !DILocation(line: 185, column: 20, scope: !303)
!446 = !DILocation(line: 186, column: 3, scope: !303)
!447 = !DILocation(line: 187, column: 4, scope: !303)
!448 = !DILocation(line: 188, column: 4, scope: !303)
!449 = !DILocation(line: 188, column: 7, scope: !303)
!450 = !DILocation(line: 188, column: 11, scope: !303)
!451 = !DILocation(line: 188, column: 15, scope: !303)
!452 = !DILocation(line: 188, column: 21, scope: !303)
!453 = !DILocation(line: 189, column: 3, scope: !303)
!454 = !DILocation(line: 190, column: 3, scope: !303)
!455 = !DILocation(line: 191, column: 3, scope: !303)
!456 = !DILocation(line: 216, column: 12, scope: !303)
!457 = !DILocation(line: 216, column: 2, scope: !303)
!458 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeStructParam", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.FuncWithAllTypeStructParam", scope: !4, file: !4, line: 55, type: !459, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !310}
!461 = !DILocation(line: 55, column: 1, scope: !458)
!462 = !DILocalVariable(name: "s", arg: 1, scope: !458, file: !4, line: 55, type: !310)
!463 = !DILocation(line: 55, column: 33, scope: !458)
!464 = !DILocation(line: 56, column: 11, scope: !458)
!465 = !DILocation(line: 56, column: 10, scope: !458)
!466 = !DILocation(line: 81, column: 2, scope: !458)
!467 = !DILocation(line: 81, column: 4, scope: !458)
!468 = !DILocation(line: 85, column: 14, scope: !458)
!469 = !DILocation(line: 85, column: 16, scope: !458)
!470 = !DILocation(line: 85, column: 20, scope: !458)
!471 = !DILocation(line: 85, column: 22, scope: !458)
!472 = !DILocation(line: 85, column: 2, scope: !458)
!473 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.ScopeFor", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.ScopeFor", scope: !4, file: !4, line: 395, type: !474, scopeLine: 395, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!474 = !DISubroutineType(types: !475)
!475 = !{null}
!476 = !DILocalVariable(name: "a", scope: !473, file: !4, line: 396, type: !6)
!477 = !DILocation(line: 396, column: 2, scope: !473)
!478 = !DILocalVariable(name: "i", scope: !479, file: !4, line: 397, type: !6)
!479 = distinct !DILexicalBlock(scope: !473, file: !4, line: 397, column: 2)
!480 = !DILocation(line: 397, column: 6, scope: !479)
!481 = !DILocation(line: 395, column: 1, scope: !473)
!482 = !DILocation(line: 397, column: 14, scope: !479)
!483 = !DILocation(line: 398, column: 10, scope: !479)
!484 = !DILocation(line: 398, column: 10, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !4, line: 398, column: 3)
!486 = distinct !DILexicalBlock(scope: !479, file: !4, line: 397, column: 26)
!487 = !DILocation(line: 417, column: 16, scope: !473)
!488 = !DILocation(line: 417, column: 2, scope: !473)
!489 = !DILocation(line: 405, column: 4, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !4, line: 399, column: 3)
!491 = !DILocation(line: 397, column: 22, scope: !479)
!492 = !DILocation(line: 405, column: 18, scope: !479)
!493 = !DILocation(line: 405, column: 18, scope: !490)
!494 = !DILocation(line: 412, column: 18, scope: !479)
!495 = !DILocation(line: 412, column: 18, scope: !496)
!496 = distinct !DILexicalBlock(scope: !485, file: !4, line: 406, column: 3)
!497 = !DILocation(line: 412, column: 4, scope: !496)
!498 = !DILocation(line: 414, column: 20, scope: !479)
!499 = !DILocation(line: 414, column: 20, scope: !500)
!500 = distinct !DILexicalBlock(scope: !485, file: !4, line: 413, column: 3)
!501 = !DILocation(line: 414, column: 4, scope: !500)
!502 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.ScopeIf", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.ScopeIf", scope: !4, file: !4, line: 363, type: !503, scopeLine: 363, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !6}
!505 = !DILocalVariable(name: "branch", arg: 1, scope: !502, file: !4, line: 363, type: !6)
!506 = !DILocation(line: 363, column: 14, scope: !502)
!507 = !DILocalVariable(name: "a", scope: !502, file: !4, line: 364, type: !6)
!508 = !DILocation(line: 364, column: 2, scope: !502)
!509 = !DILocation(line: 368, column: 5, scope: !502)
!510 = !DILocation(line: 368, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !4, line: 368, column: 2)
!512 = !DILocalVariable(name: "b", scope: !513, file: !4, line: 369, type: !6)
!513 = distinct !DILexicalBlock(scope: !511, file: !4, line: 368, column: 17)
!514 = !DILocation(line: 369, column: 3, scope: !513)
!515 = !DILocalVariable(name: "c", scope: !513, file: !4, line: 370, type: !6)
!516 = !DILocation(line: 370, column: 3, scope: !513)
!517 = !DILocation(line: 377, column: 11, scope: !502)
!518 = !DILocation(line: 377, column: 14, scope: !513)
!519 = !DILocation(line: 377, column: 17, scope: !513)
!520 = !DILocation(line: 377, column: 3, scope: !513)
!521 = !DILocation(line: 392, column: 16, scope: !502)
!522 = !DILocation(line: 392, column: 2, scope: !502)
!523 = !DILocalVariable(name: "c", scope: !524, file: !4, line: 379, type: !6)
!524 = distinct !DILexicalBlock(scope: !511, file: !4, line: 378, column: 9)
!525 = !DILocation(line: 379, column: 3, scope: !524)
!526 = !DILocalVariable(name: "d", scope: !524, file: !4, line: 380, type: !6)
!527 = !DILocation(line: 380, column: 3, scope: !524)
!528 = !DILocation(line: 387, column: 11, scope: !502)
!529 = !DILocation(line: 387, column: 14, scope: !524)
!530 = !DILocation(line: 387, column: 17, scope: !524)
!531 = !DILocation(line: 387, column: 3, scope: !524)
!532 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.ScopeSwitch", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.ScopeSwitch", scope: !4, file: !4, line: 420, type: !503, scopeLine: 420, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!533 = !DILocalVariable(name: "i", arg: 1, scope: !532, file: !4, line: 420, type: !6)
!534 = !DILocation(line: 420, column: 18, scope: !532)
!535 = !DILocalVariable(name: "a", scope: !532, file: !4, line: 421, type: !6)
!536 = !DILocation(line: 421, column: 2, scope: !532)
!537 = !DILocation(line: 422, column: 9, scope: !532)
!538 = !DILocation(line: 422, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !532, file: !4, line: 422, column: 2)
!540 = !DILocation(line: 454, column: 16, scope: !532)
!541 = !DILocation(line: 454, column: 2, scope: !532)
!542 = !DILocalVariable(name: "b", scope: !543, file: !4, line: 424, type: !6)
!543 = distinct !DILexicalBlock(scope: !539, file: !4, line: 423, column: 2)
!544 = !DILocation(line: 424, column: 3, scope: !543)
!545 = !DILocation(line: 431, column: 17, scope: !532)
!546 = !DILocation(line: 431, column: 26, scope: !532)
!547 = !DILocation(line: 431, column: 35, scope: !543)
!548 = !DILocation(line: 431, column: 3, scope: !543)
!549 = !DILocalVariable(name: "c", scope: !550, file: !4, line: 433, type: !6)
!550 = distinct !DILexicalBlock(scope: !539, file: !4, line: 432, column: 2)
!551 = !DILocation(line: 433, column: 3, scope: !550)
!552 = !DILocation(line: 440, column: 17, scope: !532)
!553 = !DILocation(line: 440, column: 26, scope: !532)
!554 = !DILocation(line: 440, column: 35, scope: !550)
!555 = !DILocation(line: 440, column: 3, scope: !550)
!556 = !DILocalVariable(name: "d", scope: !557, file: !4, line: 442, type: !6)
!557 = distinct !DILexicalBlock(scope: !539, file: !4, line: 441, column: 2)
!558 = !DILocation(line: 442, column: 3, scope: !557)
!559 = !DILocation(line: 443, column: 19, scope: !532)
!560 = !DILocation(line: 443, column: 19, scope: !557)
!561 = !DILocation(line: 449, column: 17, scope: !532)
!562 = !DILocation(line: 449, column: 26, scope: !532)
!563 = !DILocation(line: 449, column: 35, scope: !557)
!564 = !DILocation(line: 449, column: 3, scope: !557)
!565 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.(*Struct).Foo", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.(*Struct).Foo", scope: !4, file: !4, line: 51, type: !566, scopeLine: 51, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!566 = !DISubroutineType(types: !567)
!567 = !{!6, !568, !50, !66}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*github.com/goplus/llgo/cl/_testdata/debug.Struct", baseType: !569, size: 64, align: 64, dwarfAddressSpace: 0)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/cl/_testdata/debug.Struct", file: !4, line: 51, baseType: !570, align: 8)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{}", scope: !4, file: !4, line: 51, align: 8, elements: !89)
!571 = !DILocalVariable(name: "s", arg: 1, scope: !565, file: !4, line: 51, type: !568)
!572 = !DILocation(line: 51, column: 7, scope: !565)
!573 = !DILocation(line: 51, column: 1, scope: !565)
!574 = !DILocalVariable(name: "a", arg: 2, scope: !565, file: !4, line: 51, type: !50)
!575 = !DILocation(line: 51, column: 22, scope: !565)
!576 = !DILocalVariable(name: "b", arg: 3, scope: !565, file: !4, line: 51, type: !66)
!577 = !DILocation(line: 51, column: 31, scope: !565)
!578 = !DILocation(line: 52, column: 2, scope: !565)
!579 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.init", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.init", scope: !40, file: !40, type: !474, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!580 = !DILocation(line: 0, scope: !579)
!581 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.main", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.main", scope: !4, file: !4, line: 457, type: !474, scopeLine: 457, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!582 = !DILocation(line: 458, column: 2, scope: !581)
!583 = !DILocation(line: 458, column: 31, scope: !581)
!584 = !DILocation(line: 458, column: 33, scope: !581)
!585 = !DILocation(line: 458, column: 19, scope: !581)
!586 = !DILocation(line: 458, column: 50, scope: !581)
!587 = !DILocation(line: 458, column: 56, scope: !581)
!588 = !DILocation(line: 458, column: 58, scope: !581)
!589 = !DILocation(line: 458, column: 37, scope: !581)
!590 = !DILocation(line: 458, column: 73, scope: !581)
!591 = !DILocation(line: 458, column: 79, scope: !581)
!592 = !DILocation(line: 458, column: 85, scope: !581)
!593 = !DILocation(line: 458, column: 87, scope: !581)
!594 = !DILocation(line: 458, column: 62, scope: !581)
!595 = !DILocation(line: 458, column: 102, scope: !581)
!596 = !DILocation(line: 458, column: 108, scope: !581)
!597 = !DILocation(line: 458, column: 114, scope: !581)
!598 = !DILocation(line: 458, column: 120, scope: !581)
!599 = !DILocation(line: 458, column: 127, scope: !581)
!600 = !DILocation(line: 458, column: 134, scope: !581)
!601 = !DILocation(line: 458, column: 141, scope: !581)
!602 = !DILocation(line: 458, column: 148, scope: !581)
!603 = !DILocation(line: 458, column: 155, scope: !581)
!604 = !DILocation(line: 458, column: 162, scope: !581)
!605 = !DILocation(line: 458, column: 164, scope: !581)
!606 = !DILocation(line: 458, column: 91, scope: !581)
!607 = !DILocation(line: 459, column: 2, scope: !581)
!608 = !DILocation(line: 459, column: 35, scope: !581)
!609 = !DILocation(line: 459, column: 22, scope: !581)
!610 = !DILocation(line: 459, column: 55, scope: !581)
!611 = !DILocation(line: 459, column: 61, scope: !581)
!612 = !DILocation(line: 459, column: 41, scope: !581)
!613 = !DILocation(line: 459, column: 79, scope: !581)
!614 = !DILocation(line: 459, column: 85, scope: !581)
!615 = !DILocation(line: 459, column: 91, scope: !581)
!616 = !DILocation(line: 459, column: 67, scope: !581)
!617 = !DILocation(line: 459, column: 109, scope: !581)
!618 = !DILocation(line: 459, column: 115, scope: !581)
!619 = !DILocation(line: 459, column: 121, scope: !581)
!620 = !DILocation(line: 459, column: 127, scope: !581)
!621 = !DILocation(line: 459, column: 134, scope: !581)
!622 = !DILocation(line: 459, column: 141, scope: !581)
!623 = !DILocation(line: 459, column: 148, scope: !581)
!624 = !DILocation(line: 459, column: 155, scope: !581)
!625 = !DILocation(line: 459, column: 162, scope: !581)
!626 = !DILocation(line: 459, column: 169, scope: !581)
!627 = !DILocation(line: 459, column: 97, scope: !581)
!628 = !DILocation(line: 460, column: 2, scope: !581)
!629 = !DILocalVariable(name: "i", scope: !581, file: !4, line: 460, type: !6)
!630 = !DILocalVariable(name: "s", scope: !581, file: !4, line: 461, type: !310)
!631 = !DILocation(line: 461, column: 2, scope: !581)
!632 = !DILocation(line: 477, column: 10, scope: !581)
!633 = !DILocation(line: 477, column: 16, scope: !581)
!634 = !DILocation(line: 477, column: 20, scope: !581)
!635 = !DILocation(line: 477, column: 24, scope: !581)
!636 = !DILocation(line: 478, column: 10, scope: !581)
!637 = !DILocation(line: 479, column: 10, scope: !581)
!638 = !DILocation(line: 479, column: 15, scope: !581)
!639 = !DILocation(line: 479, column: 24, scope: !581)
!640 = !DILocation(line: 479, column: 33, scope: !581)
!641 = !DILocation(line: 481, column: 10, scope: !581)
!642 = !DILocation(line: 482, column: 38, scope: !581)
!643 = !DILocation(line: 482, column: 10, scope: !581)
!644 = !DILocation(line: 483, column: 11, scope: !581)
!645 = !DILocation(line: 483, column: 10, scope: !581)
!646 = !DILocation(line: 484, column: 10, scope: !581)
!647 = !DILocation(line: 485, column: 10, scope: !581)
!648 = !DILocation(line: 485, column: 31, scope: !581)
!649 = !DILocation(line: 485, column: 40, scope: !581)
!650 = !DILocation(line: 486, column: 10, scope: !581)
!651 = !DILocation(line: 487, column: 10, scope: !581)
!652 = !DILocation(line: 488, column: 7, scope: !581)
!653 = !DILocation(line: 462, column: 5, scope: !581)
!654 = !DILocation(line: 463, column: 6, scope: !581)
!655 = !DILocation(line: 464, column: 6, scope: !581)
!656 = !DILocation(line: 465, column: 6, scope: !581)
!657 = !DILocation(line: 466, column: 4, scope: !581)
!658 = !DILocation(line: 467, column: 5, scope: !581)
!659 = !DILocation(line: 468, column: 6, scope: !581)
!660 = !DILocation(line: 469, column: 6, scope: !581)
!661 = !DILocation(line: 470, column: 6, scope: !581)
!662 = !DILocation(line: 471, column: 4, scope: !581)
!663 = !DILocation(line: 472, column: 6, scope: !581)
!664 = !DILocation(line: 473, column: 6, scope: !581)
!665 = !DILocation(line: 474, column: 4, scope: !581)
!666 = !DILocation(line: 475, column: 6, scope: !581)
!667 = !DILocation(line: 476, column: 7, scope: !581)
!668 = !DILocation(line: 477, column: 15, scope: !581)
!669 = !DILocation(line: 478, column: 17, scope: !581)
!670 = !DILocation(line: 478, column: 21, scope: !581)
!671 = !DILocation(line: 478, column: 25, scope: !581)
!672 = !DILocation(line: 479, column: 17, scope: !581)
!673 = !DILocation(line: 479, column: 26, scope: !581)
!674 = !DILocation(line: 479, column: 35, scope: !581)
!675 = !DILocation(line: 480, column: 4, scope: !581)
!676 = !DILocation(line: 481, column: 13, scope: !581)
!677 = !DILocation(line: 482, column: 5, scope: !581)
!678 = !DILocation(line: 483, column: 5, scope: !581)
!679 = !DILocation(line: 484, column: 7, scope: !581)
!680 = !DILocation(line: 485, column: 27, scope: !581)
!681 = !DILocation(line: 486, column: 4, scope: !581)
!682 = !DILocation(line: 487, column: 6, scope: !581)
!683 = !DILocation(line: 488, column: 5, scope: !581)
!684 = !DILocation(line: 493, column: 7, scope: !581)
!685 = !DILocation(line: 494, column: 7, scope: !581)
!686 = !DILocation(line: 521, column: 21, scope: !581)
!687 = !DILocation(line: 521, column: 2, scope: !581)
!688 = !DILocation(line: 522, column: 17, scope: !581)
!689 = !DILocation(line: 522, column: 2, scope: !581)
!690 = !DILocation(line: 523, column: 24, scope: !581)
!691 = !DILocation(line: 526, column: 17, scope: !581)
!692 = !DILocation(line: 526, column: 16, scope: !581)
!693 = !DILocation(line: 527, column: 2, scope: !581)
!694 = !DILocation(line: 527, column: 29, scope: !581)
!695 = !DILocation(line: 530, column: 3, scope: !581)
!696 = !DILocation(line: 530, column: 5, scope: !581)
!697 = !DILocation(line: 530, column: 9, scope: !581)
!698 = !DILocation(line: 530, column: 11, scope: !581)
!699 = !DILocation(line: 530, column: 16, scope: !581)
!700 = !DILocation(line: 530, column: 18, scope: !581)
!701 = !DILocation(line: 530, column: 23, scope: !581)
!702 = !DILocation(line: 530, column: 25, scope: !581)
!703 = !DILocation(line: 530, column: 30, scope: !581)
!704 = !DILocation(line: 530, column: 32, scope: !581)
!705 = !DILocation(line: 530, column: 35, scope: !581)
!706 = !DILocation(line: 530, column: 37, scope: !581)
!707 = !DILocation(line: 530, column: 41, scope: !581)
!708 = !DILocation(line: 530, column: 43, scope: !581)
!709 = !DILocation(line: 530, column: 48, scope: !581)
!710 = !DILocation(line: 530, column: 50, scope: !581)
!711 = !DILocation(line: 530, column: 55, scope: !581)
!712 = !DILocation(line: 530, column: 57, scope: !581)
!713 = !DILocation(line: 530, column: 62, scope: !581)
!714 = !DILocation(line: 530, column: 64, scope: !581)
!715 = !DILocation(line: 531, column: 3, scope: !581)
!716 = !DILocation(line: 531, column: 5, scope: !581)
!717 = !DILocation(line: 531, column: 10, scope: !581)
!718 = !DILocation(line: 531, column: 12, scope: !581)
!719 = !DILocation(line: 531, column: 17, scope: !581)
!720 = !DILocation(line: 531, column: 19, scope: !581)
!721 = !DILocation(line: 532, column: 3, scope: !581)
!722 = !DILocation(line: 532, column: 5, scope: !581)
!723 = !DILocation(line: 532, column: 10, scope: !581)
!724 = !DILocation(line: 532, column: 12, scope: !581)
!725 = !DILocation(line: 533, column: 3, scope: !581)
!726 = !DILocation(line: 533, column: 5, scope: !581)
!727 = !DILocation(line: 533, column: 12, scope: !581)
!728 = !DILocation(line: 533, column: 14, scope: !581)
!729 = !DILocation(line: 533, column: 19, scope: !581)
!730 = !DILocation(line: 533, column: 21, scope: !581)
!731 = !DILocation(line: 534, column: 3, scope: !581)
!732 = !DILocation(line: 534, column: 5, scope: !581)
!733 = !DILocation(line: 535, column: 3, scope: !581)
!734 = !DILocation(line: 535, column: 5, scope: !581)
!735 = !DILocation(line: 535, column: 8, scope: !581)
!736 = !DILocation(line: 536, column: 3, scope: !581)
!737 = !DILocation(line: 536, column: 5, scope: !581)
!738 = !DILocation(line: 536, column: 9, scope: !581)
!739 = !DILocation(line: 536, column: 11, scope: !581)
!740 = !DILocation(line: 537, column: 3, scope: !581)
!741 = !DILocation(line: 537, column: 5, scope: !581)
!742 = !DILocation(line: 538, column: 3, scope: !581)
!743 = !DILocation(line: 538, column: 5, scope: !581)
!744 = !DILocation(line: 539, column: 3, scope: !581)
!745 = !DILocation(line: 539, column: 5, scope: !581)
!746 = !DILocation(line: 540, column: 3, scope: !581)
!747 = !DILocation(line: 540, column: 5, scope: !581)
!748 = !DILocation(line: 541, column: 3, scope: !581)
!749 = !DILocation(line: 541, column: 5, scope: !581)
!750 = !DILocation(line: 529, column: 12, scope: !581)
!751 = !DILocation(line: 529, column: 2, scope: !581)
!752 = !DILocation(line: 529, column: 5, scope: !581)
!753 = !DILocalVariable(name: "err", scope: !581, file: !4, line: 529, type: !91)
!754 = !DILocation(line: 543, column: 10, scope: !581)
!755 = !DILocation(line: 543, column: 13, scope: !581)
!756 = !DILocation(line: 544, column: 2, scope: !581)
!757 = !DILocation(line: 545, column: 2, scope: !581)
!758 = !DILocation(line: 546, column: 2, scope: !581)
!759 = !DILocation(line: 547, column: 2, scope: !581)
!760 = !DILocation(line: 548, column: 2, scope: !581)
!761 = !DILocation(line: 549, column: 2, scope: !581)
!762 = !DILocation(line: 550, column: 10, scope: !581)
!763 = !DILocation(line: 551, column: 10, scope: !581)
!764 = !DILocation(line: 552, column: 2, scope: !581)
!765 = !DILocation(line: 552, column: 4, scope: !581)
!766 = !DILocation(line: 553, column: 10, scope: !581)
!767 = !DILocation(line: 553, column: 12, scope: !581)
!768 = !DILocation(line: 553, column: 2, scope: !581)
!769 = !DILocation(line: 560, column: 11, scope: !581)
!770 = !DILocation(line: 560, column: 29, scope: !581)
!771 = !DILocation(line: 560, column: 10, scope: !581)
!772 = !DILocation(line: 560, column: 2, scope: !581)
!773 = !DILocation(line: 561, column: 2, scope: !581)
!774 = !DILocation(line: 563, column: 11, scope: !581)
!775 = !DILocation(line: 563, column: 14, scope: !581)
!776 = !DILocation(line: 563, column: 29, scope: !581)
!777 = !DILocation(line: 563, column: 45, scope: !581)
!778 = !DILocation(line: 563, column: 50, scope: !581)
!779 = !DILocation(line: 564, column: 2, scope: !581)
!780 = distinct !DISubprogram(name: "github.com/goplus/llgo/cl/_testdata/debug.main$1", linkageName: "github.com/goplus/llgo/cl/_testdata/debug.main$1", scope: !4, file: !4, line: 488, type: !781, scopeLine: 488, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!781 = !DISubroutineType(types: !782)
!782 = !{!306, !783, !66}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*struct{i *int}", baseType: !784, size: 64, align: 64, dwarfAddressSpace: 0)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{i *int}", scope: !4, file: !4, line: 488, size: 64, align: 64, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !784, baseType: !5, size: 64, align: 64)
!787 = !DILocation(line: 488, column: 7, scope: !780)
!788 = !DILocalVariable(name: "s", arg: 1, scope: !780, file: !4, line: 488, type: !66)
!789 = !DILocation(line: 488, column: 12, scope: !780)
!790 = !DILocation(line: 489, column: 19, scope: !780)
!791 = !DILocalVariable(name: "i", scope: !780, file: !4, line: 460, type: !6)
!792 = !DILocation(line: 490, column: 4, scope: !780)
