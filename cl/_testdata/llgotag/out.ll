; ModuleID = 'llgotag'
source_filename = "llgotag"

@"llgotag.init$guard" = global i1 false, align 1

define void @llgotag.Foo() {
_llgo_0:
  ret void
}

define void @llgotag.init() {
_llgo_0:
  %0 = load i1, ptr @"llgotag.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"llgotag.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}
