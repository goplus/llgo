; ModuleID = 'github.com/goplus/llgo/cl/_testdata/llgointrinsics'
source_filename = "github.com/goplus/llgo/cl/_testdata/llgointrinsics"

@"github.com/goplus/llgo/cl/_testdata/llgointrinsics.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testdata/llgointrinsics.UseBare"() {
_llgo_0:
  ret i64 ptrtoint (ptr @bar to i64)
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

declare i64 @foo(...)
