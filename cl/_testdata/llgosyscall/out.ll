; ModuleID = 'github.com/goplus/llgo/cl/_testdata/llgosyscall'
source_filename = "github.com/goplus/llgo/cl/_testdata/llgosyscall"

@"github.com/goplus/llgo/cl/_testdata/llgosyscall.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testdata/llgosyscall.Use"() {
_llgo_0:
  %0 = call i64 null(i64 1, i64 2, i64 3)
  %1 = icmp eq i64 %0, -1
  %2 = call i32 @cliteErrno()
  %3 = sext i32 %2 to i64
  %4 = select i1 %1, i64 %3, i64 0
  %5 = insertvalue { i64, i64, i64 } undef, i64 %0, 0
  %6 = insertvalue { i64, i64, i64 } %5, i64 0, 1
  %7 = insertvalue { i64, i64, i64 } %6, i64 %4, 2
  %8 = extractvalue { i64, i64, i64 } %7, 0
  %9 = extractvalue { i64, i64, i64 } %7, 1
  %10 = extractvalue { i64, i64, i64 } %7, 2
  ret i64 %8
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgosyscall.Use6"() {
_llgo_0:
  %0 = call i64 null(i64 1, i64 2, i64 3, i64 4, i64 5, i64 6)
  %1 = icmp eq i64 %0, -1
  %2 = call i32 @cliteErrno()
  %3 = sext i32 %2 to i64
  %4 = select i1 %1, i64 %3, i64 0
  %5 = insertvalue { i64, i64, i64 } undef, i64 %0, 0
  %6 = insertvalue { i64, i64, i64 } %5, i64 0, 1
  %7 = insertvalue { i64, i64, i64 } %6, i64 %4, 2
  %8 = extractvalue { i64, i64, i64 } %7, 0
  %9 = extractvalue { i64, i64, i64 } %7, 1
  %10 = extractvalue { i64, i64, i64 } %7, 2
  ret i64 %8
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgosyscall.Use6X"() {
_llgo_0:
  %0 = call i64 null(i64 1, i64 2, i64 3, i64 4, i64 5, i64 6)
  %1 = icmp eq i64 %0, -1
  %2 = call i32 @cliteErrno()
  %3 = sext i32 %2 to i64
  %4 = select i1 %1, i64 %3, i64 0
  %5 = insertvalue { i64, i64, i64 } undef, i64 %0, 0
  %6 = insertvalue { i64, i64, i64 } %5, i64 0, 1
  %7 = insertvalue { i64, i64, i64 } %6, i64 %4, 2
  %8 = extractvalue { i64, i64, i64 } %7, 0
  %9 = extractvalue { i64, i64, i64 } %7, 1
  %10 = extractvalue { i64, i64, i64 } %7, 2
  ret i64 %8
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgosyscall.UsePtr"() {
_llgo_0:
  %0 = call i64 null(i64 1, i64 2, i64 3)
  %1 = icmp eq i64 %0, -1
  %2 = call i32 @cliteErrno()
  %3 = sext i32 %2 to i64
  %4 = select i1 %1, i64 %3, i64 0
  %5 = insertvalue { i64, i64, i64 } undef, i64 %0, 0
  %6 = insertvalue { i64, i64, i64 } %5, i64 0, 1
  %7 = insertvalue { i64, i64, i64 } %6, i64 %4, 2
  %8 = extractvalue { i64, i64, i64 } %7, 0
  %9 = extractvalue { i64, i64, i64 } %7, 1
  %10 = extractvalue { i64, i64, i64 } %7, 2
  ret i64 %8
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgosyscall.UseRaw"() {
_llgo_0:
  %0 = call i64 null(i64 1, i64 2, i64 3)
  %1 = icmp eq i64 %0, -1
  %2 = call i32 @cliteErrno()
  %3 = sext i32 %2 to i64
  %4 = select i1 %1, i64 %3, i64 0
  %5 = insertvalue { i64, i64, i64 } undef, i64 %0, 0
  %6 = insertvalue { i64, i64, i64 } %5, i64 0, 1
  %7 = insertvalue { i64, i64, i64 } %6, i64 %4, 2
  %8 = extractvalue { i64, i64, i64 } %7, 0
  %9 = extractvalue { i64, i64, i64 } %7, 1
  %10 = extractvalue { i64, i64, i64 } %7, 2
  ret i64 %8
}

define i64 @"github.com/goplus/llgo/cl/_testdata/llgosyscall.UseRaw6"() {
_llgo_0:
  %0 = call i64 null(i64 1, i64 2, i64 3, i64 4, i64 5, i64 6)
  %1 = icmp eq i64 %0, -1
  %2 = call i32 @cliteErrno()
  %3 = sext i32 %2 to i64
  %4 = select i1 %1, i64 %3, i64 0
  %5 = insertvalue { i64, i64, i64 } undef, i64 %0, 0
  %6 = insertvalue { i64, i64, i64 } %5, i64 0, 1
  %7 = insertvalue { i64, i64, i64 } %6, i64 %4, 2
  %8 = extractvalue { i64, i64, i64 } %7, 0
  %9 = extractvalue { i64, i64, i64 } %7, 1
  %10 = extractvalue { i64, i64, i64 } %7, 2
  ret i64 %8
}

define void @"github.com/goplus/llgo/cl/_testdata/llgosyscall.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/llgosyscall.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/llgosyscall.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare i32 @cliteErrno()
