; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @"main.main$1"({ ptr, ptr } { ptr @"__llgo_stub.main.main$2", ptr null })
  ret i32 0
}

define void @"main.main$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"main.main$1$1", ptr undef }, ptr %2, 1
  %5 = extractvalue { ptr, ptr } %4, 1
  %6 = extractvalue { ptr, ptr } %4, 0
  call void %6(ptr %5, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"main.main$1$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr null, 1
  %10 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  %11 = xor i1 %10, true
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %12 = extractvalue { ptr } %2, 0
  %13 = load { ptr, ptr }, ptr %12, align 8
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  call void %15(ptr %14, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %16 = extractvalue { ptr } %2, 0
  %17 = load { ptr, ptr }, ptr %16, align 8
  %18 = extractvalue { ptr, ptr } %17, 1
  %19 = extractvalue { ptr, ptr } %17, 0
  call void %19(ptr %18, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"main.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define linkonce void @"__llgo_stub.main.main$2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  tail call void @"main.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
