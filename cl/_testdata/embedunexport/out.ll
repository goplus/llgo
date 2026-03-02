; ModuleID = 'github.com/goplus/llgo/cl/_testdata/embedunexport'
source_filename = "github.com/goplus/llgo/cl/_testdata/embedunexport"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testdata/embedunexport.Base" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testdata/embedunexport.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [8 x i8] c"modified", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/embedunexport.Base", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/embedunexport.Base", ptr %0, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %2, align 8
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.NewBase"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/embedunexport.Base", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  ret ptr %1
}

define void @"github.com/goplus/llgo/cl/_testdata/embedunexport.Use"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  call void @"__llgo_invoke.github.com/goplus/llgo/cl/_testdata/embedunexport.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E$m1.setName"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 8 })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/embedunexport.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define weak_odr void @"__llgo_invoke.github.com/goplus/llgo/cl/_testdata/embedunexport.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E$m1.setName"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %4 = getelementptr ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { ptr, ptr } undef, ptr %5, 0
  %7 = insertvalue { ptr, ptr } %6, ptr %2, 1
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  tail call void %9(ptr %8, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")
