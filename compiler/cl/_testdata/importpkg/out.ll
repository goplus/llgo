; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testdata/importpkg'
source_filename = "github.com/goplus/llgo/compiler/cl/_testdata/importpkg"

@"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello" = global [7 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.init"()
  store i8 72, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", i64 4), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", i64 5), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello", i64 6), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.main"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.Max"(i64 2, i64 100)
  call void (ptr, ...) @printf(ptr @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg.hello")
  ret void
}

declare void @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.init"()

declare i64 @"github.com/goplus/llgo/compiler/cl/_testdata/importpkg/stdio.Max"(i64, i64)

declare void @printf(ptr, ...)
