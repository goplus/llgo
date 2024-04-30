; ModuleID = 'github.com/goplus/llgo/internal/runtime'
source_filename = "github.com/goplus/llgo/internal/runtime"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.itab" = type { ptr, ptr, i32, [4 x i8], [1 x i64] }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, i32, i32 }

@"github.com/goplus/llgo/internal/runtime.TyAny" = global ptr null
@"github.com/goplus/llgo/internal/runtime.basicTypes" = global ptr null
@"github.com/goplus/llgo/internal/runtime.init$guard" = global ptr null
@"github.com/goplus/llgo/internal/runtime.sizeBasicTypes" = global ptr null

define ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 %0) {
_llgo_0:
  %1 = call ptr @malloc(i64 %0)
  ret ptr %1
}

define ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 %0) {
_llgo_0:
  %1 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 %0
  %2 = load ptr, ptr %1, align 8
  ret ptr %2
}

define ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %1, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @memcpy(ptr %0, ptr %6, i64 %4)
  %8 = getelementptr inbounds i8, ptr %0, i64 %4
  store i8 0, ptr %8, align 1
  ret ptr %0
}

define ptr @"github.com/goplus/llgo/internal/runtime.CStrDup"(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, 1
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 %4)
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.CStrCopy"(ptr %5, %"github.com/goplus/llgo/internal/runtime.String" %6)
  ret ptr %7
}

define { i64, i1 } @"github.com/goplus/llgo/internal/runtime.CheckI2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  %mrv = insertvalue { i64, i1 } poison, i64 %10, 0
  %mrv1 = insertvalue { i64, i1 } %mrv, i1 true, 1
  ret { i64, i1 } %mrv1

_llgo_2:                                          ; preds = %_llgo_0
  ret { i64, i1 } zeroinitializer
}

define %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.EmptyString"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store ptr null, ptr %1, align 8
  store i64 0, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %3
}

define i64 @"github.com/goplus/llgo/internal/runtime.I2Int"(%"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/internal/runtime.iface" %0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  ret i64 %10

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"([21 x i8] c"I2Int: type mismatch\00")
  unreachable
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAny"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 0
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr @"github.com/goplus/llgo/internal/runtime.TyAny", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  store ptr %6, ptr %5, align 8
  store ptr %0, ptr %7, align 8
  store i32 0, ptr %8, align 4
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 1
  store ptr %4, ptr %3, align 8
  store ptr %1, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %12
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyInt"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 0
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr @"github.com/goplus/llgo/internal/runtime.TyAny", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 4
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  store ptr %6, ptr %5, align 8
  store ptr %0, ptr %7, align 8
  store i32 0, ptr %8, align 4
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 1
  %12 = inttoptr i64 %1 to ptr
  store ptr %4, ptr %3, align 8
  store ptr %12, ptr %11, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %13
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAnyString"(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %1, align 8
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 0
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr @"github.com/goplus/llgo/internal/runtime.TyAny", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 1
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %4, i32 0, i32 4
  %11 = getelementptr inbounds i64, ptr %10, i64 0
  store ptr %6, ptr %5, align 8
  store ptr %8, ptr %7, align 8
  store i32 0, ptr %9, align 4
  store i64 0, ptr %11, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, i32 0, i32 1
  store ptr %4, ptr %3, align 8
  store ptr %1, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %13
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeInterface"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, i32 0, i32 0
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.itab", ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 0, ptr %8, align 4
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, i32 0, i32 1
  store ptr %5, ptr %4, align 8
  store ptr %2, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %12
}

define %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NewSlice"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 2
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 4
  store i64 %2, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %7
}

define %"github.com/goplus/llgo/internal/runtime.Slice" @"github.com/goplus/llgo/internal/runtime.NilSlice"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %0, i32 0, i32 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %0, i32 0, i32 2
  store ptr null, ptr %1, align 8
  store i64 0, ptr %2, align 4
  store i64 0, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %0, align 8
  ret %"github.com/goplus/llgo/internal/runtime.Slice" %4
}

define ptr @"github.com/goplus/llgo/internal/runtime.SliceData"(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/internal/runtime.Slice" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

define i64 @"github.com/goplus/llgo/internal/runtime.SliceLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/internal/runtime.Slice" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

define ptr @"github.com/goplus/llgo/internal/runtime.StringData"(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

define i64 @"github.com/goplus/llgo/internal/runtime.StringLen"(%"github.com/goplus/llgo/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/internal/runtime.Slice" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %1, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

define ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 %0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %1, i32 0, i32 6
  %6 = trunc i64 %0 to i8
  store i64 %4, ptr %2, align 4
  store i8 %6, ptr %5, align 1
  ret ptr %1
}

define void @"github.com/goplus/llgo/internal/runtime.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/internal/runtime.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/internal/runtime.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Alloc"(i64 16)
  store ptr %1, ptr @"github.com/goplus/llgo/internal/runtime.TyAny", align 8
  store i64 1, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 1), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 2), align 4
  store i64 1, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 3), align 4
  store i64 2, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 4), align 4
  store i64 4, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 5), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 6), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 7), align 4
  store i64 1, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 8), align 4
  store i64 2, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 9), align 4
  store i64 4, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 10), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 11), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 12), align 4
  store i64 4, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 13), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 14), align 4
  store i64 8, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 15), align 4
  store i64 16, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 16), align 4
  store i64 16, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/internal/runtime.sizeBasicTypes", i64 24), align 4
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 1)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 2)
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 3)
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 4)
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 5)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 6)
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 7)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 8)
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 9)
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 10)
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 11)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 12)
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 13)
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 14)
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 15)
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 16)
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.basicType"(i64 24)
  store ptr %2, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 1), align 8
  store ptr %3, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 2), align 8
  store ptr %4, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 3), align 8
  store ptr %5, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 4), align 8
  store ptr %6, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 5), align 8
  store ptr %7, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 6), align 8
  store ptr %8, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 7), align 8
  store ptr %9, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 8), align 8
  store ptr %10, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 9), align 8
  store ptr %11, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 10), align 8
  store ptr %12, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 11), align 8
  store ptr %13, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 12), align 8
  store ptr %14, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 13), align 8
  store ptr %15, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 14), align 8
  store ptr %16, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 15), align 8
  store ptr %17, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 16), align 8
  store ptr %18, ptr getelementptr inbounds (ptr, ptr @"github.com/goplus/llgo/internal/runtime.basicTypes", i64 24), align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @malloc(i64)

declare ptr @memcpy(ptr, ptr, i64)

declare void @"github.com/goplus/llgo/internal/abi.init"()
