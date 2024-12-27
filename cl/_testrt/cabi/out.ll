; ModuleID = 'main'
source_filename = "main"

%main.info = type { [2 x i32], i32 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.infoBig = type { [128 x i32] }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"bad abi", align 1
@_llgo_string = linkonce global ptr null, align 8

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
  %2 = alloca %main.info, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 12, i1 false)
  %3 = alloca %main.info, align 8
  call void @llvm.memset(ptr %3, i8 0, i64 12, i1 false)
  %4 = getelementptr inbounds %main.info, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds i32, ptr %4, i64 0
  %6 = getelementptr inbounds i32, ptr %4, i64 1
  %7 = getelementptr inbounds %main.info, ptr %3, i32 0, i32 1
  store i32 1, ptr %5, align 4
  store i32 2, ptr %6, align 4
  store i32 3, ptr %7, align 4
  %8 = load %main.info, ptr %3, align 4
  %9 = alloca %main.info, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 12, i1 false)
  store %main.info %8, ptr %9, align 4
  %10 = alloca %main.info, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 12, i1 false)
  call void @llgo_wrapabi_demo1(ptr %9, i32 4, ptr %10)
  %11 = load %main.info, ptr %10, align 4
  store %main.info %11, ptr %2, align 4
  %12 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %13 = getelementptr inbounds i32, ptr %12, i64 0
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %_llgo_1, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_4, %_llgo_0
  %16 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %17 = getelementptr inbounds i32, ptr %16, i64 0
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %20 = getelementptr inbounds i32, ptr %19, i64 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %18 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %25 = sext i32 %21 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %26 = sext i32 %23 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %28, align 8
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %27, 0
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %29, ptr %28, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %30)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %32 = alloca %main.info, align 8
  call void @llvm.memset(ptr %32, i8 0, i64 12, i1 false)
  %33 = getelementptr inbounds %main.info, ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds i32, ptr %33, i64 0
  %35 = getelementptr inbounds i32, ptr %33, i64 1
  %36 = getelementptr inbounds %main.info, ptr %32, i32 0, i32 1
  store i32 1, ptr %34, align 4
  store i32 2, ptr %35, align 4
  store i32 3, ptr %36, align 4
  %37 = load %main.info, ptr %32, align 4
  %38 = alloca %main.info, align 8
  call void @llvm.memset(ptr %38, i8 0, i64 12, i1 false)
  store %main.info %37, ptr %38, align 4
  call void @llgo_wrapabi_demo2(ptr %38, ptr %31)
  %39 = load i32, ptr %31, align 4
  %40 = icmp ne i32 %39, 6
  br i1 %40, label %_llgo_5, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_4
  %41 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 12
  br i1 %43, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %44 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %45 = getelementptr inbounds i32, ptr %44, i64 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 8
  br i1 %47, label %_llgo_1, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_2
  %48 = load i32, ptr %31, align 4
  %49 = sext i32 %48 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %53)
  unreachable

_llgo_6:                                          ; preds = %_llgo_2
  %54 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %54, i8 0, i64 512, i1 false)
  %55 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %55, i8 0, i64 512, i1 false)
  %56 = getelementptr inbounds %main.infoBig, ptr %55, i32 0, i32 0
  %57 = getelementptr inbounds i32, ptr %56, i64 0
  %58 = getelementptr inbounds i32, ptr %56, i64 1
  %59 = getelementptr inbounds i32, ptr %56, i64 127
  store i32 1, ptr %57, align 4
  store i32 2, ptr %58, align 4
  store i32 3, ptr %59, align 4
  %60 = load %main.infoBig, ptr %55, align 4
  %61 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %61, i8 0, i64 512, i1 false)
  store %main.infoBig %60, ptr %61, align 4
  %62 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %62, i8 0, i64 512, i1 false)
  call void @llgo_wrapabi_big1(ptr %61, i32 4, ptr %62)
  %63 = load %main.infoBig, ptr %62, align 4
  store %main.infoBig %63, ptr %54, align 4
  %64 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %65 = getelementptr inbounds i32, ptr %64, i64 0
  %66 = load i32, ptr %65, align 4
  %67 = icmp ne i32 %66, 4
  br i1 %67, label %_llgo_7, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_10, %_llgo_6
  %68 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %69 = getelementptr inbounds i32, ptr %68, i64 0
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %72 = getelementptr inbounds i32, ptr %71, i64 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %75 = getelementptr inbounds i32, ptr %74, i64 127
  %76 = load i32, ptr %75, align 4
  %77 = sext i32 %70 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %78 = sext i32 %73 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %78)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %79 = sext i32 %76 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %79)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %80 = load ptr, ptr @_llgo_string, align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %81, align 8
  %82 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %80, 0
  %83 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %82, ptr %81, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %83)
  unreachable

_llgo_8:                                          ; preds = %_llgo_9
  store i32 0, ptr %31, align 4
  %84 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %84, i8 0, i64 512, i1 false)
  %85 = getelementptr inbounds %main.infoBig, ptr %84, i32 0, i32 0
  %86 = getelementptr inbounds i32, ptr %85, i64 0
  %87 = getelementptr inbounds i32, ptr %85, i64 1
  %88 = getelementptr inbounds i32, ptr %85, i64 127
  store i32 1, ptr %86, align 4
  store i32 2, ptr %87, align 4
  store i32 3, ptr %88, align 4
  %89 = load %main.infoBig, ptr %84, align 4
  %90 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %90, i8 0, i64 512, i1 false)
  store %main.infoBig %89, ptr %90, align 4
  call void @llgo_wrapabi_big2(ptr %90, ptr %31)
  %91 = load i32, ptr %31, align 4
  %92 = icmp ne i32 %91, 6
  br i1 %92, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_10
  %93 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %94 = getelementptr inbounds i32, ptr %93, i64 127
  %95 = load i32, ptr %94, align 4
  %96 = icmp ne i32 %95, 12
  br i1 %96, label %_llgo_7, label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_6
  %97 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %98 = getelementptr inbounds i32, ptr %97, i64 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, 8
  br i1 %100, label %_llgo_7, label %_llgo_9

_llgo_11:                                         ; preds = %_llgo_8
  %101 = load i32, ptr %31, align 4
  %102 = sext i32 %101 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %102)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %103 = load ptr, ptr @_llgo_string, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %103, 0
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %105, ptr %104, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %106)
  unreachable

_llgo_12:                                         ; preds = %_llgo_8
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare %main.info @demo1(%main.info, i32)

declare void @llgo_wrapabi_demo1(ptr, i32, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

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

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @demo2(%main.info, ptr)

declare void @llgo_wrapabi_demo2(ptr, ptr)

declare %main.infoBig @big1(%main.infoBig, i32)

declare void @llgo_wrapabi_big1(ptr, i32, ptr)

declare void @big2(%main.infoBig, ptr)

declare void @llgo_wrapabi_big2(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
