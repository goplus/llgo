; ModuleID = 'github.com/goplus/llgo/cl/_testrt/unsafe'
source_filename = "github.com/goplus/llgo/cl/_testrt/unsafe"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"abc", align 1

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/unsafe.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/unsafe.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.main"() {
_llgo_0:
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %4, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  br i1 false, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %9)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  br i1 false, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %11, 1
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %14)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  br i1 false, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %15 = load ptr, ptr @_llgo_string, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %16, 1
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %19, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %19)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  br i1 false, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %24, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %24)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  br i1 false, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %26, 1
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %29, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %29)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  br i1 false, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %30 = load ptr, ptr @_llgo_string, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, ptr %31, 1
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr %34, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %34)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  br i1 false, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %35 = load ptr, ptr @_llgo_string, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %36, 1
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %39, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %39)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  br i1 false, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %44, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %44)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  br i1 false, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %45 = load ptr, ptr @_llgo_string, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %46, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %45, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %46, 1
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %49, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %49)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr %51, align 8
  %52 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %50, ptr %51)
  %53 = xor i1 %52, true
  br i1 %53, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %54 = load ptr, ptr @_llgo_string, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %58, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %58)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %59 = load i8, ptr @1, align 1
  %60 = icmp ne i8 %59, 97
  br i1 %60, label %_llgo_23, label %_llgo_26

_llgo_23:                                         ; preds = %_llgo_25, %_llgo_26, %_llgo_22
  %61 = load ptr, ptr @_llgo_string, align 8
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %62, align 8
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %61, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %62, 1
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, ptr %65, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %65)
  unreachable

_llgo_24:                                         ; preds = %_llgo_25
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %67 = getelementptr inbounds i64, ptr %66, i64 0
  %68 = getelementptr inbounds i64, ptr %66, i64 1
  store i64 1, ptr %67, align 4
  store i64 2, ptr %68, align 4
  %69 = getelementptr inbounds i64, ptr %66, i64 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 2, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 2, 2
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 0
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 1
  %75 = icmp sge i64 0, %74
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %75)
  %76 = getelementptr inbounds i64, ptr %73, i64 0
  %77 = load i64, ptr %76, align 4
  %78 = icmp ne i64 %77, 1
  br i1 %78, label %_llgo_27, label %_llgo_29

_llgo_25:                                         ; preds = %_llgo_26
  %79 = load i8, ptr getelementptr inbounds (i8, ptr @1, i64 2), align 1
  %80 = icmp ne i8 %79, 99
  br i1 %80, label %_llgo_23, label %_llgo_24

_llgo_26:                                         ; preds = %_llgo_22
  %81 = load i8, ptr getelementptr inbounds (i8, ptr @1, i64 1), align 1
  %82 = icmp ne i8 %81, 98
  br i1 %82, label %_llgo_23, label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_29, %_llgo_24
  %83 = load ptr, ptr @_llgo_string, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %84, 1
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %87, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %87)
  unreachable

_llgo_28:                                         ; preds = %_llgo_29
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 0
  %89 = load i64, ptr %88, align 4
  %90 = icmp ne i64 %89, 1
  br i1 %90, label %_llgo_30, label %_llgo_31

_llgo_29:                                         ; preds = %_llgo_24
  %91 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 0
  %92 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, 1
  %93 = icmp sge i64 1, %92
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %93)
  %94 = getelementptr inbounds i64, ptr %91, i64 1
  %95 = load i64, ptr %94, align 4
  %96 = icmp ne i64 %95, 2
  br i1 %96, label %_llgo_27, label %_llgo_28

_llgo_30:                                         ; preds = %_llgo_28
  %97 = load ptr, ptr @_llgo_string, align 8
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %97, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %99, ptr %98, 1
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %100, ptr %101, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %101)
  unreachable

_llgo_31:                                         ; preds = %_llgo_28
  %102 = icmp ne i64 ptrtoint (ptr getelementptr (i8, ptr null, i64 1) to i64), 1
  br i1 %102, label %_llgo_32, label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_31
  %103 = load ptr, ptr @_llgo_string, align 8
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %103, 0
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, ptr %104, 1
  %107 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %106, ptr %107, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %107)
  unreachable

_llgo_33:                                         ; preds = %_llgo_31
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unsafe.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
