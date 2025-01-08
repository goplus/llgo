; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"abc", align 1

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
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
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = load ptr, ptr @_llgo_string, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  br i1 false, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  br i1 false, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  br i1 false, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = load ptr, ptr @_llgo_string, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  br i1 false, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  br i1 false, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %22 = load ptr, ptr @_llgo_string, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  br i1 false, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %26 = load ptr, ptr @_llgo_string, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %27, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  br i1 false, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %30 = load ptr, ptr @_llgo_string, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, ptr %31, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  br i1 false, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %34 = load ptr, ptr @_llgo_string, align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr %35, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  br i1 false, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %42 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  %43 = xor i1 %42, true
  br i1 %43, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %44 = load ptr, ptr @_llgo_string, align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %45, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %48 = load i8, ptr @1, align 1
  %49 = icmp ne i8 %48, 97
  br i1 %49, label %_llgo_23, label %_llgo_26

_llgo_23:                                         ; preds = %_llgo_25, %_llgo_26, %_llgo_22
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_24:                                         ; preds = %_llgo_25
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %55 = getelementptr inbounds i64, ptr %54, i64 0
  %56 = getelementptr inbounds i64, ptr %54, i64 1
  store i64 1, ptr %55, align 4
  store i64 2, ptr %56, align 4
  %57 = getelementptr inbounds i64, ptr %54, i64 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 2, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 2
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %63 = icmp sge i64 0, %62
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %63)
  %64 = getelementptr inbounds i64, ptr %61, i64 0
  %65 = load i64, ptr %64, align 4
  %66 = icmp ne i64 %65, 1
  br i1 %66, label %_llgo_27, label %_llgo_29

_llgo_25:                                         ; preds = %_llgo_26
  %67 = load i8, ptr getelementptr inbounds (i8, ptr @1, i64 2), align 1
  %68 = icmp ne i8 %67, 99
  br i1 %68, label %_llgo_23, label %_llgo_24

_llgo_26:                                         ; preds = %_llgo_22
  %69 = load i8, ptr getelementptr inbounds (i8, ptr @1, i64 1), align 1
  %70 = icmp ne i8 %69, 98
  br i1 %70, label %_llgo_23, label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_29, %_llgo_24
  %71 = load ptr, ptr @_llgo_string, align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %71, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr %72, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %74)
  unreachable

_llgo_28:                                         ; preds = %_llgo_29
  %75 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %76 = load i64, ptr %75, align 4
  %77 = icmp ne i64 %76, 1
  br i1 %77, label %_llgo_30, label %_llgo_31

_llgo_29:                                         ; preds = %_llgo_24
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 0
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 1
  %80 = icmp sge i64 1, %79
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %80)
  %81 = getelementptr inbounds i64, ptr %78, i64 1
  %82 = load i64, ptr %81, align 4
  %83 = icmp ne i64 %82, 2
  br i1 %83, label %_llgo_27, label %_llgo_28

_llgo_30:                                         ; preds = %_llgo_28
  %84 = load ptr, ptr @_llgo_string, align 8
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %85, align 8
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %84, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %85, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %87)
  unreachable

_llgo_31:                                         ; preds = %_llgo_28
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr (i8, ptr null, i64 1) to i64), i64 1), label %_llgo_32, label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_31
  %88 = load ptr, ptr @_llgo_string, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %88, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %89, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %91)
  unreachable

_llgo_33:                                         ; preds = %_llgo_31
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)
