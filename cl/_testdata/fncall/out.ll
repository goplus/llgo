; ModuleID = 'fncall'
source_filename = "fncall"

@"init$guard" = external global ptr

define void @init() {
_llgo_0:
  %0 = load i1, ptr @"init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i64 @max(i64 %0, i64 %1) {
_llgo_0:
  %2 = icmp sgt i64 %0, %1
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 %0

_llgo_2:                                          ; preds = %_llgo_0
  ret i64 %1
}

define i64 @Foo() {
_llgo_0:
  %0 = call i64 @max(i64 1, i64 2)
  ret i64 %0
}
