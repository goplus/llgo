; ModuleID = 'github.com/goplus/llgo/cl/_testrt/freevars'
source_filename = "github.com/goplus/llgo/cl/_testrt/freevars"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/freevars.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/freevars.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2", ptr null })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1", ptr undef }, ptr %2, 1
  %5 = extractvalue { ptr, ptr } %4, 1
  %6 = extractvalue { ptr, ptr } %4, 0
  call void %6(ptr %5, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %12 = xor i1 %11, true
  br i1 %12, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %13 = extractvalue { ptr } %3, 0
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load { ptr, ptr }, ptr %13, align 8
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  call void %17(ptr %16, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %18 = extractvalue { ptr } %3, 0
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load { ptr, ptr }, ptr %18, align 8
  %21 = extractvalue { ptr, ptr } %20, 1
  %22 = extractvalue { ptr, ptr } %20, 0
  call void %22(ptr %21, %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/freevars.main$2"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
