; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  br i1 false, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = load ptr, ptr @_llgo_string, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %5, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %11)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  br i1 false, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @0, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 5, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %15, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr %17, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  br i1 false, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @0, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 5, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = load ptr, ptr @_llgo_string, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %25, ptr %27, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %26, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr %27, ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %31)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  br i1 false, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @0, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 5, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = load ptr, ptr @_llgo_string, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %35, ptr %37, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %36, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr %37, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %41)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  br i1 false, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr @0, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 5, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  %46 = load ptr, ptr @_llgo_string, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %45, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 1
  store ptr %47, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %51)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  br i1 false, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @0, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 5, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  %56 = load ptr, ptr @_llgo_string, align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %55, ptr %57, align 8
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 0
  store ptr %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 1
  store ptr %57, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %61)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  br i1 false, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @0, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 5, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = load ptr, ptr @_llgo_string, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %65, ptr %67, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %66, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr %67, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %71)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  br i1 false, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @0, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 5, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = load ptr, ptr @_llgo_string, align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %75, ptr %77, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %78, i32 0, i32 0
  store ptr %76, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %78, i32 0, i32 1
  store ptr %77, ptr %80, align 8
  %81 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %78, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %81)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  br i1 false, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr @0, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 5, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = load ptr, ptr @_llgo_string, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %85, ptr %87, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %88, i32 0, i32 0
  store ptr %86, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %88, i32 0, i32 1
  store ptr %87, ptr %90, align 8
  %91 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %88, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %91)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  br i1 false, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @0, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 5, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  %96 = load ptr, ptr @_llgo_string, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %95, ptr %97, align 8
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, i32 0, i32 0
  store ptr %96, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, i32 0, i32 1
  store ptr %97, ptr %100, align 8
  %101 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %98, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %101)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 0
  store ptr @1, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 1
  store i64 3, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %102, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr @2, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 3, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %105, %"github.com/goplus/llgo/internal/runtime.String" %109)
  %111 = xor i1 %110, true
  br i1 %111, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 0
  store ptr @0, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 1
  store i64 5, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %112, align 8
  %116 = load ptr, ptr @_llgo_string, align 8
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %117, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %118, i32 0, i32 0
  store ptr %116, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %118, i32 0, i32 1
  store ptr %117, ptr %120, align 8
  %121 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %118, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %121)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %122 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %105, 0
  %123 = getelementptr inbounds i8, ptr %122, i64 0
  %124 = load i8, ptr %123, align 1
  %125 = icmp ne i8 %124, 97
  br i1 %125, label %_llgo_23, label %_llgo_26

_llgo_23:                                         ; preds = %_llgo_25, %_llgo_26, %_llgo_22
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @0, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 5, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = load ptr, ptr @_llgo_string, align 8
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %129, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, i32 0, i32 0
  store ptr %130, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, i32 0, i32 1
  store ptr %131, ptr %134, align 8
  %135 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %132, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %135)
  unreachable

_llgo_24:                                         ; preds = %_llgo_25
  %136 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %137 = getelementptr inbounds i64, ptr %136, i64 0
  %138 = getelementptr inbounds i64, ptr %136, i64 1
  store i64 1, ptr %137, align 4
  store i64 2, ptr %138, align 4
  %139 = getelementptr inbounds i64, ptr %136, i64 0
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 0
  store ptr %139, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 1
  store i64 2, ptr %142, align 4
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, i32 0, i32 2
  store i64 2, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %140, align 8
  %145 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, 0
  %146 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, 1
  %147 = icmp sge i64 0, %146
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %147)
  %148 = getelementptr inbounds i64, ptr %145, i64 0
  %149 = load i64, ptr %148, align 4
  %150 = icmp ne i64 %149, 1
  br i1 %150, label %_llgo_27, label %_llgo_29

_llgo_25:                                         ; preds = %_llgo_26
  %151 = getelementptr inbounds i8, ptr %122, i64 2
  %152 = load i8, ptr %151, align 1
  %153 = icmp ne i8 %152, 99
  br i1 %153, label %_llgo_23, label %_llgo_24

_llgo_26:                                         ; preds = %_llgo_22
  %154 = getelementptr inbounds i8, ptr %122, i64 1
  %155 = load i8, ptr %154, align 1
  %156 = icmp ne i8 %155, 98
  br i1 %156, label %_llgo_23, label %_llgo_25

_llgo_27:                                         ; preds = %_llgo_29, %_llgo_24
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr @0, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 5, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %161 = load ptr, ptr @_llgo_string, align 8
  %162 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %160, ptr %162, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %163, i32 0, i32 0
  store ptr %161, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %163, i32 0, i32 1
  store ptr %162, ptr %165, align 8
  %166 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %163, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %166)
  unreachable

_llgo_28:                                         ; preds = %_llgo_29
  %167 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, 0
  %168 = load i64, ptr %167, align 4
  %169 = icmp ne i64 %168, 1
  br i1 %169, label %_llgo_30, label %_llgo_31

_llgo_29:                                         ; preds = %_llgo_24
  %170 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, 0
  %171 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, 1
  %172 = icmp sge i64 1, %171
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %172)
  %173 = getelementptr inbounds i64, ptr %170, i64 1
  %174 = load i64, ptr %173, align 4
  %175 = icmp ne i64 %174, 2
  br i1 %175, label %_llgo_27, label %_llgo_28

_llgo_30:                                         ; preds = %_llgo_28
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr @0, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 5, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = load ptr, ptr @_llgo_string, align 8
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %179, ptr %181, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %182, i32 0, i32 0
  store ptr %180, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %182, i32 0, i32 1
  store ptr %181, ptr %184, align 8
  %185 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %182, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %185)
  unreachable

_llgo_31:                                         ; preds = %_llgo_28
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr (i8, ptr null, i64 1) to i64), i64 1), label %_llgo_32, label %_llgo_33

_llgo_32:                                         ; preds = %_llgo_31
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr @0, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 5, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = load ptr, ptr @_llgo_string, align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %189, ptr %191, align 8
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %192, i32 0, i32 0
  store ptr %190, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %192, i32 0, i32 1
  store ptr %191, ptr %194, align 8
  %195 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %192, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %195)
  unreachable

_llgo_33:                                         ; preds = %_llgo_31
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)
