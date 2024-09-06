; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
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
  %2 = alloca { ptr, ptr }, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$2", ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  store ptr null, ptr %4, align 8
  %5 = load { ptr, ptr }, ptr %2, align 8
  call void @"main.main$1"({ ptr, ptr } %5)
  ret i32 0
}

define void @"main.main$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = alloca { ptr, ptr }, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr @"main.main$1$1", ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr %2, ptr %6, align 8
  %7 = load { ptr, ptr }, ptr %4, align 8
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  call void %9(ptr %8, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"main.main$1$1"(ptr %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %1)
  %3 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %1, 1
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, i32 0, i32 1
  store ptr %3, ptr %6, align 8
  %7 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %4, align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, align 8
  %13 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %7, %"github.com/goplus/llgo/internal/runtime.eface" %12)
  %14 = xor i1 %13, true
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = load { ptr }, ptr %0, align 8
  %16 = extractvalue { ptr } %15, 0
  %17 = load { ptr, ptr }, ptr %16, align 8
  %18 = extractvalue { ptr, ptr } %17, 1
  %19 = extractvalue { ptr, ptr } %17, 0
  call void %19(ptr %18, %"github.com/goplus/llgo/internal/runtime.iface" %1)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %20 = load { ptr }, ptr %0, align 8
  %21 = extractvalue { ptr } %20, 0
  %22 = load { ptr, ptr }, ptr %21, align 8
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  call void %24(ptr %23, %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"main.main$2"(%"github.com/goplus/llgo/internal/runtime.iface" %0) {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define linkonce void @"__llgo_stub.main.main$2"(ptr %0, %"github.com/goplus/llgo/internal/runtime.iface" %1) {
_llgo_0:
  tail call void @"main.main$2"(%"github.com/goplus/llgo/internal/runtime.iface" %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")
