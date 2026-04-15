; ModuleID = 'github.com/goplus/llgo/cl/_testdata/method'
source_filename = "github.com/goplus/llgo/cl/_testdata/method"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testdata/method.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/cl/_testdata/method.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testdata/method.T", align 1
@1 = private unnamed_addr constant [3 x i8] c"Add", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @"github.com/goplus/llgo/cl/_testdata/method.T.Add", ptr @"github.com/goplus/llgo/cl/_testdata/method.(*T).Add"], section "llvm.metadata"

define i64 @"github.com/goplus/llgo/cl/_testdata/method.T.Add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testdata/method.(*T).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertMethodWrapperNil"(i1 %2, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 })
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i64, ptr %0, align 4
  %5 = call i64 @"github.com/goplus/llgo/cl/_testdata/method.T.Add"(i64 %4, i64 %1)
  ret i64 %5
}

define void @"github.com/goplus/llgo/cl/_testdata/method.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/method.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/method.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  store i8 72, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/method.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = call i64 @"github.com/goplus/llgo/cl/_testdata/method.T.Add"(i64 1, i64 2)
  call void (ptr, ...) @printf(ptr @"github.com/goplus/llgo/cl/_testdata/method.format", i64 %0)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertMethodWrapperNil"(i1, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @printf(ptr, ...)
