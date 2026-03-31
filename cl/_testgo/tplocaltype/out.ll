; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tplocaltype'
source_filename = "github.com/goplus/llgo/cl/_testgo/tplocaltype"

@"github.com/goplus/llgo/cl/_testgo/tplocaltype.init$guard" = global i1 false, align 1

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/tplocaltype.init"() #0 {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tplocaltype.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tplocaltype.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testgo/tplocaltype.main"() #0 {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use1"()
  %1 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use2"()
  ret void
}

; Function Attrs: null_pointer_is_valid
define i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use1"() #0 {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.1.0]"(i64 1)
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
define i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.use2"() #0 {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.2.0]"(i64 2)
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.1.0]"(i64 %0) #0 {
_llgo_0:
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tplocaltype.id[github.com/goplus/llgo/cl/_testgo/tplocaltype.T.2.0]"(i64 %0) #0 {
_llgo_0:
  ret i64 %0
}

attributes #0 = { null_pointer_is_valid }
