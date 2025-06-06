; ModuleID = 'github.com/goplus/llgo/cl/_testrt/freevars'
source_filename = "github.com/goplus/llgo/cl/_testrt/freevars"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/freevars.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/freevars.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/freevars.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/freevars.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main"() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2", ptr null }, ptr %0, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = load { ptr, ptr }, ptr %0, align 8
  store { ptr, ptr } %2, ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { ptr }, ptr %3, i32 0, i32 0
  store ptr %1, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1", ptr undef }, ptr %3, 1
  %6 = extractvalue { ptr, ptr } %5, 1
  %7 = extractvalue { ptr, ptr } %5, 0
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %8, align 8
  call void %7(ptr %6, ptr %8)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
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
  %17 = extractvalue { ptr } %2, 0
  %18 = load { ptr, ptr }, ptr %17, align 8
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %20 = extractvalue { ptr, ptr } %18, 1
  %21 = extractvalue { ptr, ptr } %18, 0
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %22, align 8
  call void %21(ptr %20, ptr %22)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %23 = extractvalue { ptr } %2, 0
  %24 = load { ptr, ptr }, ptr %23, align 8
  %25 = extractvalue { ptr, ptr } %24, 1
  %26 = extractvalue { ptr, ptr } %24, 0
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %27, align 8
  call void %26(ptr %25, ptr %27)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(ptr %0) {
_llgo_0:
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(ptr %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)
