; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___3" = type { i32 }
%"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___4" = type { i32, i32 }
%"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___0" = type { i32, i32, i32 }
%"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___1" = type { i32, i32, i32, i32 }
%"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___2" = type { i32, i32, i32, i32, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@_cgo_023ff89410ef_Cfunc_test_structs = external global i8, align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._cgo_023ff89410ef_Cfunc_test_structs" = global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_int" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles", align 1
@1 = private unnamed_addr constant [10 x i8] c"_Ctype_int", align 1
@_llgo_int32 = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [19 x i8] c"test_structs failed", align 1
@_llgo_string = linkonce global ptr null, align 8

define i32 @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Cfunc_test_structs"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) {
_llgo_0:
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %6 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._cgo_023ff89410ef_Cfunc_test_structs", align 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 %7(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4)
  ret i32 %8
}

define ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Cgo_ptr"(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._cgoCheckResult"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.init$guard", align 1
  call void @syscall.init()
  call void @fmt.init()
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.init$after"()
  store ptr @_cgo_023ff89410ef_Cfunc_test_structs, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._cgo_023ff89410ef_Cfunc_test_structs", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___3", ptr %0, i32 0, i32 0
  store i32 1, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___4", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___4", ptr %2, i32 0, i32 1
  store i32 1, ptr %3, align 4
  store i32 2, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 12)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___0", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___0", ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___0", ptr %5, i32 0, i32 2
  store i32 1, ptr %6, align 4
  store i32 2, ptr %7, align 4
  store i32 3, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___1", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___1", ptr %9, i32 0, i32 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___1", ptr %9, i32 0, i32 2
  %13 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___1", ptr %9, i32 0, i32 3
  store i32 1, ptr %10, align 4
  store i32 2, ptr %11, align 4
  store i32 3, ptr %12, align 4
  store i32 4, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 20)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___2", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___2", ptr %14, i32 0, i32 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___2", ptr %14, i32 0, i32 2
  %18 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___2", ptr %14, i32 0, i32 3
  %19 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_struct___2", ptr %14, i32 0, i32 4
  store i32 1, ptr %15, align 4
  store i32 2, ptr %16, align 4
  store i32 3, ptr %17, align 4
  store i32 4, ptr %18, align 4
  store i32 5, ptr %19, align 4
  %20 = call i32 @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Cfunc_test_structs"(ptr %0, ptr %2, ptr %5, ptr %9, ptr %14)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %21, i64 0
  %23 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_int", align 8
  %24 = sext i32 %20 to i64
  %25 = inttoptr i64 %24 to ptr
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %25, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %22, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = icmp ne i32 %20, 35
  br i1 %32, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %33 = load ptr, ptr @_llgo_string, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 19 }, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %34, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %36)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @syscall.init()

declare void @fmt.init()

define void @"github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 10 }, i64 5, i64 4, i64 0, i64 0)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/cgocfiles._Ctype_int", align 8
  %1 = load ptr, ptr @_llgo_int32, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %3, ptr @_llgo_int32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @_llgo_int32, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %4, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %7, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
