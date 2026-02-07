; ModuleID = 'github.com/goplus/llgo/cl/_testdata/llgointrinsics'
source_filename = "github.com/goplus/llgo/cl/_testdata/llgointrinsics"

@"github.com/goplus/llgo/cl/_testdata/llgointrinsics.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseBare"() {
_llgo_0:
  ret i64 ptrtoint (ptr @bar to i64)
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseClosure$1", ptr undef }, ptr %1, 1
  ret i64 ptrtoint (ptr @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseClosure$1" to i64)
}

define void @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseClosure$1"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, 1
  %5 = extractvalue { ptr } %1, 0
  store i64 %4, ptr %5, align 4
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseFunc"() {
_llgo_0:
  ret i64 ptrtoint (ptr @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseFunc$1" to i64)
}

define void @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseFunc$1"() {
_llgo_0:
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseLibc"() {
_llgo_0:
  ret i64 ptrtoint (ptr @foo to i64)
}

define void @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseSkip"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i64 @bar(...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i64 @foo(...)
