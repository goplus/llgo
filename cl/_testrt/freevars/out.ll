; ModuleID = 'github.com/goplus/llgo/cl/_testrt/freevars'
source_filename = "github.com/goplus/llgo/cl/_testrt/freevars"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/freevars.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/freevars.main$2" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$2", i64 0 }

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
  call void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"(ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/freevars.main$2")
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %3 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1", ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 1
  store i64 1, ptr %4, align 4
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %2, i32 0, i32 2
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %7)
  call void %6(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$1$1"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 1
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
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %13, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %15)
  call void %14(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %16 = extractvalue { ptr } %2, 0
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %17, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %19)
  call void %18(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/freevars.main$2"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
