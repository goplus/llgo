; ModuleID = 'apkg'
source_filename = "apkg"

@"apkg.init$guard" = global i1 false, align 1

define double @apkg.Max(double %0, double %1) {
_llgo_0:
  %2 = fcmp ogt double %0, %1
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret double %0

_llgo_2:                                          ; preds = %_llgo_0
  ret double %1
}

define void @apkg.init() {
_llgo_0:
  %0 = load i1, ptr @"apkg.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"apkg.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
