; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/os'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/os"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testlibgo/os.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"cwd:", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/os.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/os.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/os.init$guard", align 1
  call void @os.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/os.main"() {
_llgo_0:
  %0 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, align 8
  call void @os.Getwd(ptr %0)
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 1
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %9)
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr null, 1
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %14, align 8
  %15 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %13, ptr %14)
  %16 = xor i1 %15, true
  br i1 %16, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %17, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %17)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %19, 1
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr %22, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %22)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, ptr %23, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, ptr %24, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @os.init()

declare void @os.Getwd(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
