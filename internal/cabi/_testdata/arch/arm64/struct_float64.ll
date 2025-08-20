; ModuleID = '../../wrap/struct_float64.c'
source_filename = "../../wrap/struct_float64.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.point1 = type { double }
%struct.point2 = type { double, double }
%struct.point3 = type { double, double, double }
%struct.point4 = type { double, double, double, double }
%struct.point5 = type { double, double, double, double, double }
%struct.point6 = type { double, double, double, double, double, double }
%struct.point7 = type { double, double, double, double, double, double, double }
%struct.point8 = type { double, double, double, double, double, double, double, double }
%struct.point9 = type { double, double, double, double, double, double, double, double, double }
%struct.point10 = type { double, double, double, double, double, double, double, double, double, double }
%struct.point11 = type { double, double, double, double, double, double, double, double, double, double, double }
%struct.point12 = type { double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point13 = type { double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point14 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point15 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point16 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point17 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point18 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point19 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.point20 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.point1 @demo1([1 x double] %0) #0 {
  %2 = alloca %struct.point1, align 8
  %3 = alloca %struct.point1, align 8
  %4 = getelementptr inbounds %struct.point1, %struct.point1* %3, i32 0, i32 0
  %5 = bitcast double* %4 to [1 x double]*
  store [1 x double] %0, [1 x double]* %5, align 8
  %6 = bitcast %struct.point1* %2 to i8*
  %7 = bitcast %struct.point1* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 8, i1 false)
  %8 = load %struct.point1, %struct.point1* %2, align 8
  ret %struct.point1 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.point2 @demo2([2 x double] %0) #0 {
  %2 = alloca %struct.point2, align 8
  %3 = alloca %struct.point2, align 8
  %4 = bitcast %struct.point2* %3 to [2 x double]*
  store [2 x double] %0, [2 x double]* %4, align 8
  %5 = bitcast %struct.point2* %2 to i8*
  %6 = bitcast %struct.point2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.point2, %struct.point2* %2, align 8
  ret %struct.point2 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.point3 @demo3([3 x double] %0) #0 {
  %2 = alloca %struct.point3, align 8
  %3 = alloca %struct.point3, align 8
  %4 = bitcast %struct.point3* %3 to [3 x double]*
  store [3 x double] %0, [3 x double]* %4, align 8
  %5 = bitcast %struct.point3* %2 to i8*
  %6 = bitcast %struct.point3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  %7 = load %struct.point3, %struct.point3* %2, align 8
  ret %struct.point3 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.point4 @demo4([4 x double] %0) #0 {
  %2 = alloca %struct.point4, align 8
  %3 = alloca %struct.point4, align 8
  %4 = bitcast %struct.point4* %3 to [4 x double]*
  store [4 x double] %0, [4 x double]* %4, align 8
  %5 = bitcast %struct.point4* %2 to i8*
  %6 = bitcast %struct.point4* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false)
  %7 = load %struct.point4, %struct.point4* %2, align 8
  ret %struct.point4 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo5(%struct.point5* noalias sret(%struct.point5) align 8 %0, %struct.point5* noundef %1) #0 {
  %3 = bitcast %struct.point5* %0 to i8*
  %4 = bitcast %struct.point5* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo6(%struct.point6* noalias sret(%struct.point6) align 8 %0, %struct.point6* noundef %1) #0 {
  %3 = bitcast %struct.point6* %0 to i8*
  %4 = bitcast %struct.point6* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo7(%struct.point7* noalias sret(%struct.point7) align 8 %0, %struct.point7* noundef %1) #0 {
  %3 = bitcast %struct.point7* %0 to i8*
  %4 = bitcast %struct.point7* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 56, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo8(%struct.point8* noalias sret(%struct.point8) align 8 %0, %struct.point8* noundef %1) #0 {
  %3 = bitcast %struct.point8* %0 to i8*
  %4 = bitcast %struct.point8* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 64, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo9(%struct.point9* noalias sret(%struct.point9) align 8 %0, %struct.point9* noundef %1) #0 {
  %3 = bitcast %struct.point9* %0 to i8*
  %4 = bitcast %struct.point9* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 72, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo10(%struct.point10* noalias sret(%struct.point10) align 8 %0, %struct.point10* noundef %1) #0 {
  %3 = bitcast %struct.point10* %0 to i8*
  %4 = bitcast %struct.point10* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 80, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo11(%struct.point11* noalias sret(%struct.point11) align 8 %0, %struct.point11* noundef %1) #0 {
  %3 = bitcast %struct.point11* %0 to i8*
  %4 = bitcast %struct.point11* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 88, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo12(%struct.point12* noalias sret(%struct.point12) align 8 %0, %struct.point12* noundef %1) #0 {
  %3 = bitcast %struct.point12* %0 to i8*
  %4 = bitcast %struct.point12* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 96, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo13(%struct.point13* noalias sret(%struct.point13) align 8 %0, %struct.point13* noundef %1) #0 {
  %3 = bitcast %struct.point13* %0 to i8*
  %4 = bitcast %struct.point13* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 104, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo14(%struct.point14* noalias sret(%struct.point14) align 8 %0, %struct.point14* noundef %1) #0 {
  %3 = bitcast %struct.point14* %0 to i8*
  %4 = bitcast %struct.point14* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 112, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo15(%struct.point15* noalias sret(%struct.point15) align 8 %0, %struct.point15* noundef %1) #0 {
  %3 = bitcast %struct.point15* %0 to i8*
  %4 = bitcast %struct.point15* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 120, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo16(%struct.point16* noalias sret(%struct.point16) align 8 %0, %struct.point16* noundef %1) #0 {
  %3 = bitcast %struct.point16* %0 to i8*
  %4 = bitcast %struct.point16* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 128, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo17(%struct.point17* noalias sret(%struct.point17) align 8 %0, %struct.point17* noundef %1) #0 {
  %3 = bitcast %struct.point17* %0 to i8*
  %4 = bitcast %struct.point17* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 136, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo18(%struct.point18* noalias sret(%struct.point18) align 8 %0, %struct.point18* noundef %1) #0 {
  %3 = bitcast %struct.point18* %0 to i8*
  %4 = bitcast %struct.point18* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 144, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo19(%struct.point19* noalias sret(%struct.point19) align 8 %0, %struct.point19* noundef %1) #0 {
  %3 = bitcast %struct.point19* %0 to i8*
  %4 = bitcast %struct.point19* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 152, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo20(%struct.point20* noalias sret(%struct.point20) align 8 %0, %struct.point20* noundef %1) #0 {
  %3 = bitcast %struct.point20* %0 to i8*
  %4 = bitcast %struct.point20* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 160, i1 false)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"branch-target-enforcement", i32 0}
!2 = !{i32 8, !"sign-return-address", i32 0}
!3 = !{i32 8, !"sign-return-address-all", i32 0}
!4 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
