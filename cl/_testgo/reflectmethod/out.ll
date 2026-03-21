; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectmethod'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectmethod"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%reflect.Method = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface", %reflect.Value, i64 }
%reflect.Value = type { ptr, ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/reflectmethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"M", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -217168049, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmethod.(*T).M", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmethod.T.M" }] }, align 8
@1 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -682917738, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmethod.(*T).M", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmethod.(*T).M" }] }, align 8
@2 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/reflectmethod", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@3 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.T.M"(%"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.(*T).M"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.T.M"(%"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmethod.init$guard", align 1
  call void @reflect.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameConst"()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameDynamic"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByIndex"()
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" zeroinitializer, ptr %0, align 1
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByNameConst"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" zeroinitializer, ptr %2, align 1
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr undef }, ptr %2, 1
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByNameDynamic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" zeroinitializer, ptr %4, align 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByIndex"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByIndex"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" zeroinitializer, ptr %0, align 1
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr undef }, ptr %0, 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %reflect.Method %10(ptr %9, i64 0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameConst"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" zeroinitializer, ptr %0, align 1
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr undef }, ptr %0, 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call { %reflect.Method, i1 } %10(ptr %9, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  %12 = extractvalue { %reflect.Method, i1 } %11, 0
  %13 = extractvalue { %reflect.Method, i1 } %11, 1
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameDynamic"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmethod.T" zeroinitializer, ptr %1, align 1
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", ptr undef }, ptr %1, 1
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 24
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call { %reflect.Method, i1 } %11(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  %13 = extractvalue { %reflect.Method, i1 } %12, 0
  %14 = extractvalue { %reflect.Method, i1 } %12, 1
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByIndex"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0)
  %2 = call %reflect.Value @reflect.Value.Method(%reflect.Value %1, i64 0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByNameConst"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0)
  %2 = call %reflect.Value @reflect.Value.MethodByName(%reflect.Value %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByNameDynamic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0)
  %3 = call %reflect.Value @reflect.Value.MethodByName(%reflect.Value %2, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  ret void
}

declare void @reflect.init()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %reflect.Value @reflect.Value.Method(%reflect.Value, i64)

declare %reflect.Value @reflect.Value.MethodByName(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.String")

!llgo.useiface = !{!0, !1, !2, !3}
!llgo.methodoff = !{!4, !5}
!llgo.reflectmethod = !{!6, !7, !8, !9}
!llgo.useifacemethod = !{!10, !11, !12}
!llgo.usenamedmethod = !{!13, !14}

!0 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.main", !"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T"}
!1 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByIndex", !"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T"}
!2 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameConst", !"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T"}
!3 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameDynamic", !"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T"}
!4 = !{!"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", i32 0, !"M", !"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"}
!5 = !{!"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T", i32 0, !"M", !"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"}
!6 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByIndex"}
!7 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameDynamic"}
!8 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByIndex"}
!9 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByNameDynamic"}
!10 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByIndex", !"_llgo_reflect.Type", !"Method", !"_llgo_func$FmJJGomlX5kINJGxQdQDCAkD89ySoMslAYFrziWInVc"}
!11 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameConst", !"_llgo_reflect.Type", !"MethodByName", !"_llgo_func$aM2cVUtLQbPq1YHtnabQiM7XJ5Cg5RyV6BIDWrqey7E"}
!12 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameDynamic", !"_llgo_reflect.Type", !"MethodByName", !"_llgo_func$aM2cVUtLQbPq1YHtnabQiM7XJ5Cg5RyV6BIDWrqey7E"}
!13 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.typeByNameConst", !"M"}
!14 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmethod.valueByNameConst", !"M"}
