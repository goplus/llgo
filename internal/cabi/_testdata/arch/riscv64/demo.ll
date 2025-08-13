; ModuleID = '../../wrap/demo.c'
source_filename = "../../wrap/demo.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-unknown-elf"

%struct.st1 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone
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

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+m,+relax,-save-restore" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64"}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{i32 1, !"SmallDataLimit", i32 8}
!4 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
