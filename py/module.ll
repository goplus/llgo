; ModuleID = '_pyg/module.c'
source_filename = "_pyg/module.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%struct.PyObject = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @llgoLoadPyModSyms(%struct.PyObject* noundef %0, ...) #0 {
  %2 = alloca %struct.PyObject*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.PyObject**, align 8
  %7 = alloca %struct.PyObject**, align 8
  store %struct.PyObject* %0, %struct.PyObject** %2, align 8
  %8 = bitcast i8** %3 to i8*
  call void @llvm.va_start(i8* %8)
  br label %9

9:                                                ; preds = %26, %1
  %10 = va_arg i8** %3, i8*
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %27

15:                                               ; preds = %9
  %16 = va_arg i8** %3, %struct.PyObject**
  store %struct.PyObject** %16, %struct.PyObject*** %7, align 8
  %17 = load %struct.PyObject**, %struct.PyObject*** %7, align 8
  store %struct.PyObject** %17, %struct.PyObject*** %6, align 8
  %18 = load %struct.PyObject**, %struct.PyObject*** %6, align 8
  %19 = load %struct.PyObject*, %struct.PyObject** %18, align 8
  %20 = icmp eq %struct.PyObject* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.PyObject*, %struct.PyObject** %2, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.PyObject* @PyObject_GetAttrString(%struct.PyObject* noundef %22, i8* noundef %23)
  %25 = load %struct.PyObject**, %struct.PyObject*** %6, align 8
  store %struct.PyObject* %24, %struct.PyObject** %25, align 8
  br label %26

26:                                               ; preds = %21, %15
  br label %9

27:                                               ; preds = %14
  %28 = bitcast i8** %3 to i8*
  call void @llvm.va_end(i8* %28)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare %struct.PyObject* @PyObject_GetAttrString(%struct.PyObject* noundef, i8* noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
