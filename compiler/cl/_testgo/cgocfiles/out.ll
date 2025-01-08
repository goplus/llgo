; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%main._Ctype_struct___3 = type { i32 }
%main._Ctype_struct___4 = type { i32, i32 }
%main._Ctype_struct___0 = type { i32, i32, i32 }
%main._Ctype_struct___1 = type { i32, i32, i32, i32 }
%main._Ctype_struct___2 = type { i32, i32, i32, i32, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@_cgo_023ff89410ef_Cfunc_test_structs = external global i8, align 1
@main._cgo_023ff89410ef_Cfunc_test_structs = global ptr null, align 8
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main._Ctype_int = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [10 x i8] c"_Ctype_int", align 1
@_llgo_int32 = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [19 x i8] c"test_structs failed", align 1
@_llgo_string = linkonce global ptr null, align 8

define i32 @main._Cfunc_test_structs(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) {
_llgo_0:
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %6 = load ptr, ptr @main._cgo_023ff89410ef_Cfunc_test_structs, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 %7(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4)
  ret i32 %8
}

define ptr @main._Cgo_ptr(ptr %0) {
_llgo_0:
  ret ptr %0
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @main._cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @syscall.init()
  call void @fmt.init()
  call void @"main.init$after"()
  store ptr @_cgo_023ff89410ef_Cfunc_test_structs, ptr @main._cgo_023ff89410ef_Cfunc_test_structs, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %3 = getelementptr inbounds %main._Ctype_struct___3, ptr %2, i32 0, i32 0
  store i32 1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = getelementptr inbounds %main._Ctype_struct___4, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %main._Ctype_struct___4, ptr %4, i32 0, i32 1
  store i32 1, ptr %5, align 4
  store i32 2, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 12)
  %8 = getelementptr inbounds %main._Ctype_struct___0, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %main._Ctype_struct___0, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %main._Ctype_struct___0, ptr %7, i32 0, i32 2
  store i32 1, ptr %8, align 4
  store i32 2, ptr %9, align 4
  store i32 3, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %12 = getelementptr inbounds %main._Ctype_struct___1, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %main._Ctype_struct___1, ptr %11, i32 0, i32 1
  %14 = getelementptr inbounds %main._Ctype_struct___1, ptr %11, i32 0, i32 2
  %15 = getelementptr inbounds %main._Ctype_struct___1, ptr %11, i32 0, i32 3
  store i32 1, ptr %12, align 4
  store i32 2, ptr %13, align 4
  store i32 3, ptr %14, align 4
  store i32 4, ptr %15, align 4
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 20)
  %17 = getelementptr inbounds %main._Ctype_struct___2, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %main._Ctype_struct___2, ptr %16, i32 0, i32 1
  %19 = getelementptr inbounds %main._Ctype_struct___2, ptr %16, i32 0, i32 2
  %20 = getelementptr inbounds %main._Ctype_struct___2, ptr %16, i32 0, i32 3
  %21 = getelementptr inbounds %main._Ctype_struct___2, ptr %16, i32 0, i32 4
  store i32 1, ptr %17, align 4
  store i32 2, ptr %18, align 4
  store i32 3, ptr %19, align 4
  store i32 4, ptr %20, align 4
  store i32 5, ptr %21, align 4
  %22 = call i32 @main._Cfunc_test_structs(ptr %2, ptr %4, ptr %7, ptr %11, ptr %16)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %23, i64 0
  %25 = load ptr, ptr @_llgo_main._Ctype_int, align 8
  %26 = sext i32 %22 to i64
  %27 = inttoptr i64 %26 to ptr
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %27, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %24, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 2
  %33 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32)
  %34 = icmp ne i32 %22, 35
  br i1 %34, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %35 = load ptr, ptr @_llgo_string, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 19 }, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %36, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @syscall.init()

declare void @fmt.init()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 10 }, i64 5, i64 4, i64 0, i64 0)
  store ptr %0, ptr @_llgo_main._Ctype_int, align 8
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
