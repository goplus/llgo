; ModuleID = 'github.com/goplus/llgo/cl/_testcall/freeclosure'
source_filename = "github.com/goplus/llgo/cl/_testcall/freeclosure"

%"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testcall/freeclosure.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testcall/freeclosure.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/freeclosure.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn" @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1"(i64 3)
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn" %0, 0
  %3 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %4 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %1)
  %5 = call i64 %2(i64 2)
  %6 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %3)
  ret void
}

define %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn" @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1$1", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testcall/freeclosure.Fn" %6
}

define i64 @"github.com/goplus/llgo/cl/_testcall/freeclosure.main$1$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %0, %4
  ret i64 %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
