; ModuleID = 'main'
source_filename = "main"

@"main.init$guard" = global ptr null

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

define void @main() {
_llgo_0:
  call void @main.init()
  %0 = call i64 @main.max(i64 1, i64 2)
  ret void
}

define i64 @main.max(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp sgt i64 %0, %1
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 %0

_llgo_2:                                          ; preds = %_llgo_0
  ret i64 %1
}
