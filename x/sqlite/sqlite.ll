; ModuleID = 'github.com/goplus/llgo/x/sqlite'
source_filename = "github.com/goplus/llgo/x/sqlite"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/x/sqlite.init$guard" = global ptr null

define ptr @"(*github.com/goplus/llgo/x/sqlite.Errno).Errstr"(ptr %0) {
_llgo_0:
  %1 = load i32, ptr %0, align 4
  %2 = call ptr @sqlite3_errstr()
  ret ptr %2
}

define { ptr, i32 } @"github.com/goplus/llgo/x/sqlite.Open"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %2 = call i32 @sqlite3_open(ptr %0, ptr %1)
  %3 = load ptr, ptr %1, align 8
  %mrv = insertvalue { ptr, i32 } poison, ptr %3, 0
  %mrv1 = insertvalue { ptr, i32 } %mrv, i32 %2, 1
  ret { ptr, i32 } %mrv1
}

define { ptr, i32 } @"github.com/goplus/llgo/x/sqlite.OpenV2"(ptr %0, i32 %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %4 = call i32 @sqlite3_open_v2(ptr %0, ptr %3, i32 %1, ptr %2)
  %5 = load ptr, ptr %3, align 8
  %mrv = insertvalue { ptr, i32 } poison, ptr %5, 0
  %mrv1 = insertvalue { ptr, i32 } %mrv, i32 %4, 1
  ret { ptr, i32 } %mrv1
}

define { ptr, i32 } @"(*github.com/goplus/llgo/x/sqlite.Sqlite3).Prepare"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %1, 1
  %6 = trunc i64 %5 to i32
  %7 = call i32 @sqlite3_prepare(ptr %0, ptr %4, i32 %6, ptr %3, ptr %2)
  %8 = load ptr, ptr %3, align 8
  %mrv = insertvalue { ptr, i32 } poison, ptr %8, 0
  %mrv1 = insertvalue { ptr, i32 } %mrv, i32 %7, 1
  ret { ptr, i32 } %mrv1
}

define { ptr, i32 } @"(*github.com/goplus/llgo/x/sqlite.Sqlite3).PrepareV2"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %1, 0
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %1, 1
  %6 = trunc i64 %5 to i32
  %7 = call i32 @sqlite3_prepare_v2(ptr %0, ptr %4, i32 %6, ptr %3, ptr %2)
  %8 = load ptr, ptr %3, align 8
  %mrv = insertvalue { ptr, i32 } poison, ptr %8, 0
  %mrv1 = insertvalue { ptr, i32 } %mrv, i32 %7, 1
  ret { ptr, i32 } %mrv1
}

define { ptr, i32 } @"(*github.com/goplus/llgo/x/sqlite.Sqlite3).PrepareV3"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1, i32 %2, ptr %3) {
_llgo_0:
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 8)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %1, 0
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %1, 1
  %7 = trunc i64 %6 to i32
  %8 = call i32 @sqlite3_prepare_v3(ptr %0, ptr %5, i32 %7, i32 %2, ptr %4, ptr %3)
  %9 = load ptr, ptr %4, align 8
  %mrv = insertvalue { ptr, i32 } poison, ptr %9, 0
  %mrv1 = insertvalue { ptr, i32 } %mrv, i32 %8, 1
  ret { ptr, i32 } %mrv1
}

define void @"github.com/goplus/llgo/x/sqlite.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/x/sqlite.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/x/sqlite.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @sqlite3_errstr()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i32 @sqlite3_open(ptr, ptr)

declare i32 @sqlite3_open_v2(ptr, ptr, i32, ptr)

declare i32 @sqlite3_prepare(ptr, i32, ptr, ptr)

declare i32 @sqlite3_prepare_v2(ptr, i32, ptr, ptr)

declare i32 @sqlite3_prepare_v3(ptr, i32, i32, ptr, ptr)
