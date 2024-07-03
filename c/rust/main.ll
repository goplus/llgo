; ModuleID = '4q7i9caidxlp1hcp'
source_filename = "4q7i9caidxlp1hcp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_d0d2f9788f985fe416c608920db91568 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\02\00\00\00\05\00\00\00" }>, align 8

; my_library::add
; Function Attrs: uwtable
define i32 @_ZN10my_library3add17h1aca24f6690df0dfE(i32 %a, i32 %b) unnamed_addr #0 !dbg !6 {
start:
  %b.dbg.spill = alloca [4 x i8], align 4
  %a.dbg.spill = alloca [4 x i8], align 4
  store i32 %a, ptr %a.dbg.spill, align 4
  call void @llvm.dbg.declare(metadata ptr %a.dbg.spill, metadata !13, metadata !DIExpression()), !dbg !16
  store i32 %b, ptr %b.dbg.spill, align 4
  call void @llvm.dbg.declare(metadata ptr %b.dbg.spill, metadata !14, metadata !DIExpression()), !dbg !17
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 %b), !dbg !18
  %_3.0 = extractvalue { i32, i1 } %0, 0, !dbg !18
  %_3.1 = extractvalue { i32, i1 } %0, 1, !dbg !18
  %1 = call i1 @llvm.expect.i1(i1 %_3.1, i1 false), !dbg !18
  br i1 %1, label %panic, label %bb1, !dbg !18

bb1:                                              ; preds = %start
  ret i32 %_3.0, !dbg !19

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h2a3701a832247fcdE(ptr align 8 @alloc_d0d2f9788f985fe416c608920db91568) #4, !dbg !18
  unreachable, !dbg !18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; core::panicking::panic_const::panic_const_add_overflow
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h2a3701a832247fcdE(ptr align 8) unnamed_addr #3

attributes #0 = { uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.dbg.cu = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"rustc version 1.79.0 (129f3b996 2024-06-10)"}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.79.0 (129f3b996 2024-06-10))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "src/lib.rs/@/4q7i9caidxlp1hcp", directory: "/Users/zhangzhiyang/Documents/Code/rust/demo/my_library")
!6 = distinct !DISubprogram(name: "add", linkageName: "_ZN10my_library3add17h1aca24f6690df0dfE", scope: !8, file: !7, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, templateParams: !15, retainedNodes: !12)
!7 = !DIFile(filename: "src/lib.rs", directory: "/Users/zhangzhiyang/Documents/Code/rust/demo/my_library", checksumkind: CSK_MD5, checksum: "31e4fac67c109d1aec10ca2ad140453f")
!8 = !DINamespace(name: "my_library", scope: null)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11}
!11 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "a", arg: 1, scope: !6, file: !7, line: 1, type: !11)
!14 = !DILocalVariable(name: "b", arg: 2, scope: !6, file: !7, line: 1, type: !11)
!15 = !{}
!16 = !DILocation(line: 1, column: 12, scope: !6)
!17 = !DILocation(line: 1, column: 20, scope: !6)
!18 = !DILocation(line: 2, column: 5, scope: !6)
!19 = !DILocation(line: 3, column: 2, scope: !6)
