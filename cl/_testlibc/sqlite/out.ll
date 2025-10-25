; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [20 x i8] c"==> Error: (%d) %s\0A\00", align 1
@1 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1

define void @main.check(i32 %0) {
_llgo_0:
  %1 = icmp ne i32 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @sqlite3_errstr(i32 %0)
  %3 = call i32 (ptr, ...) @printf(ptr @0, i32 %0, ptr %2)
  call void @exit(i32 1)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

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

define void @main.main() {
_llgo_0:
  %0 = call { ptr, i32 } @"github.com/goplus/lib/c/sqlite.OpenV2"(ptr @1, i32 130, ptr null)
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @main.check(i32 %2)
  %3 = call i32 @sqlite3_close(ptr %1)
  ret void
}

declare ptr @sqlite3_errstr(i32)

declare i32 @printf(ptr, ...)

declare void @exit(i32)

declare { ptr, i32 } @"github.com/goplus/lib/c/sqlite.OpenV2"(ptr, i32, ptr)

declare i32 @sqlite3_close(ptr)
