; ModuleID = 'github.com/goplus/llgo/cl/_testcall/directmethod'
source_filename = "github.com/goplus/llgo/cl/_testcall/directmethod"

%"github.com/goplus/llgo/cl/_testcall/directmethod.S" = type { i64 }

@"github.com/goplus/llgo/cl/_testcall/directmethod.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testcall/directmethod.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/directmethod.S" %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testcall/directmethod.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testcall/directmethod.S" %0, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/directmethod.S", ptr %2, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

define i64 @"github.com/goplus/llgo/cl/_testcall/directmethod.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/directmethod.S", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testcall/directmethod.(*S).Inc"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testcall/directmethod.S", ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testcall/directmethod.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/directmethod.S" %2, i64 %1)
  ret i64 %3
}

define void @"github.com/goplus/llgo/cl/_testcall/directmethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/directmethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/directmethod.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/directmethod.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/directmethod.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testcall/directmethod.(*S).Add"(ptr %0, i64 10)
  %3 = alloca %"github.com/goplus/llgo/cl/_testcall/directmethod.S", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/directmethod.S", ptr %3, i32 0, i32 0
  store i64 7, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/cl/_testcall/directmethod.S", ptr %3, align 4
  %6 = call i64 @"github.com/goplus/llgo/cl/_testcall/directmethod.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/directmethod.S" %5, i64 3)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
