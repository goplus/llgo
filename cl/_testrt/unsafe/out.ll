; ModuleID = 'github.com/goplus/llgo/cl/_testrt/unsafe'
source_filename = "github.com/goplus/llgo/cl/_testrt/unsafe"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@2 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@3 = private unnamed_addr constant [3 x i8] c"abc", align 1

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.main"() {
_llgo_0:
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  br i1 false, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  br i1 false, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  br i1 false, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  br i1 false, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  br i1 false, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  br i1 false, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  br i1 false, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %14, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %15)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  br i1 false, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  br i1 false, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %18, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeString"(ptr @2, i64 3)
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %20, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 })
  %22 = xor i1 %21, true
  br i1 %22, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %20, 0
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = getelementptr inbounds i8, ptr %25, i64 0
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i8, ptr %27, align 1
  %30 = icmp ne i8 %29, 97
  br i1 %30, label %_llgo_23, label %_llgo_26

_llgo_23:                                         ; preds = %_llgo_25, %_llgo_26, %_llgo_22
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %31, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  unreachable

_llgo_24:                                         ; preds = %_llgo_25
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %34 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = getelementptr inbounds i64, ptr %33, i64 0
  %36 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = getelementptr inbounds i64, ptr %33, i64 1
  store i64 1, ptr %35, align 4
  store i64 2, ptr %37, align 4
  %38 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = getelementptr inbounds i64, ptr %33, i64 0
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeSlice"(ptr %39, i64 2, i64 8)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %43 = icmp sge i64 0, %42
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %43)
  %44 = getelementptr inbounds i64, ptr %41, i64 0
  %45 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %44, align 4
  %47 = icmp ne i64 %46, 1
  br i1 %47, label %_llgo_27, label %_llgo_29

_llgo_25:                                         ; preds = %_llgo_26
  %48 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = getelementptr inbounds i8, ptr %25, i64 2
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i8, ptr %49, align 1
  %52 = icmp ne i8 %51, 99
  br i1 %52, label %_llgo_23, label %_llgo_24

_llgo_26:                                         ; preds = %_llgo_22
  %53 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = getelementptr inbounds i8, ptr %25, i64 1
  %55 = icmp eq ptr %54, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i8, ptr %54, align 1
  %57 = icmp ne i8 %56, 98
  br i1 %57, label %_llgo_23, label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_29, %_llgo_24
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %58, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  unreachable

_llgo_28:                                         ; preds = %_llgo_29
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %61 = icmp eq ptr %60, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %60, align 4
  %63 = icmp ne i64 %62, 1
  br i1 %63, label %_llgo_30, label %_llgo_31

_llgo_29:                                         ; preds = %_llgo_24
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 0
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %66 = icmp sge i64 1, %65
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %66)
  %67 = getelementptr inbounds i64, ptr %64, i64 1
  %68 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load i64, ptr %67, align 4
  %70 = icmp ne i64 %69, 2
  br i1 %70, label %_llgo_27, label %_llgo_28

_llgo_30:                                         ; preds = %_llgo_28
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %71, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  unreachable

_llgo_31:                                         ; preds = %_llgo_28
  %73 = icmp ne i64 ptrtoint (ptr getelementptr (i8, ptr null, i64 1) to i64), 1
  br i1 %73, label %_llgo_32, label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_31
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %74, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
  unreachable

_llgo_33:                                         ; preds = %_llgo_31
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeString"(ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.UnsafeSlice"(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
