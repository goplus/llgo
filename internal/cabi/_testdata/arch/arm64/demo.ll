; ModuleID = '../../wrap/demo.c'
source_filename = "../../wrap/demo.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.st1 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fn1(i64 %0) #0 {
  %2 = alloca %struct.st1, align 4
  %3 = alloca %struct.st1, align 4
  %4 = bitcast %struct.st1* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = bitcast %struct.st1* %2 to i8*
  %6 = bitcast %struct.st1* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 8, i1 false)
  %7 = bitcast %struct.st1* %2 to i64*
  %8 = load i64, i64* %7, align 4
  ret i64 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
