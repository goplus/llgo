; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null
@main._Cgo_always_false = global ptr null
@main.format = global ptr null

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  store i8 72, ptr @main.format, align 1
  store i8 101, ptr getelementptr inbounds (i8, ptr @main.format, i64 1), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 2), align 1
  store i8 108, ptr getelementptr inbounds (i8, ptr @main.format, i64 3), align 1
  store i8 111, ptr getelementptr inbounds (i8, ptr @main.format, i64 4), align 1
  store i8 32, ptr getelementptr inbounds (i8, ptr @main.format, i64 5), align 1
  store i8 37, ptr getelementptr inbounds (i8, ptr @main.format, i64 6), align 1
  store i8 100, ptr getelementptr inbounds (i8, ptr @main.format, i64 7), align 1
  store i8 10, ptr getelementptr inbounds (i8, ptr @main.format, i64 8), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr @main.format, i64 9), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare void @printf(ptr, ...)

declare i32 @strlen(ptr)

define void @main() {
_llgo_0:
  call void @main.init()
  %0 = call i32 @strlen(ptr @main.format)
  call void (ptr, ...) @printf(ptr @main.format, i32 %0)
  ret void
}
