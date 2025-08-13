; ModuleID = '../../wrap/demo.c'
source_filename = "../../wrap/demo.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct.st1 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fn1(%struct.st1* noalias sret(%struct.st1) align 4 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca %struct.st1, align 4
  %6 = bitcast %struct.st1* %0 to i8*
  store i8* %6, i8** %4, align 4
  %7 = getelementptr inbounds %struct.st1, %struct.st1* %5, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.st1, %struct.st1* %5, i32 0, i32 1
  store i32 %2, i32* %8, align 4
  %9 = bitcast %struct.st1* %0 to i8*
  %10 = bitcast %struct.st1* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %9, i8* align 4 %10, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
