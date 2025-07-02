; ModuleID = 'test_large.ll'
source_filename = "test_large.ll"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%BigStruct = type { i64, i64, i64, i64 }

define ccc %BigStruct @func(%BigStruct %arg) {
entry:
  ; Extract values from the argument
  %field0 = extractvalue %BigStruct %arg, 0
  %field1 = extractvalue %BigStruct %arg, 1
  
  ; Create a result using insertvalue instructions with extracted values
  %result1 = insertvalue %BigStruct undef, i64 %field0, 0
  %result2 = insertvalue %BigStruct %result1, i64 %field1, 1
  %result3 = insertvalue %BigStruct %result2, i64 300, 2
  %result4 = insertvalue %BigStruct %result3, i64 400, 3
  ret %BigStruct %result4
}

define ccc void @main() {
entry:
  %s = alloca %BigStruct
  ; Initialize the struct with some values
  %s_ptr = bitcast %BigStruct* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* %s_ptr, i8 0, i64 32, i1 false)
  ; Load the struct before passing it to func
  %s_val = load %BigStruct, %BigStruct* %s
  %result = call ccc %BigStruct @func(%BigStruct %s_val)
  ret void
}

; Declare memset for initialization
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i1)