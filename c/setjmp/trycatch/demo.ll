; ModuleID = '_code/demo.cpp'
source_filename = "_code/demo.cpp"

%"class.std::runtime_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::__libcpp_refstring" = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"C++ exception\00", align 1
@_ZTISt13runtime_error = external constant i8*

; Function Attrs: noinline optnone ssp uwtable(sync)
define void @throwCppException() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i8* @__cxa_allocate_exception(i64 16) #3
  %4 = bitcast i8* %3 to %"class.std::runtime_error"*
  %5 = invoke %"class.std::runtime_error"* @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* noundef %4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
          to label %6 unwind label %7

6:                                                ; preds = %0
  call void @__cxa_throw(i8* %3, i8* bitcast (i8** @_ZTISt13runtime_error to i8*), i8* bitcast (%"class.std::runtime_error"* (%"class.std::runtime_error"*)* @_ZNSt13runtime_errorD1Ev to i8*)) #4
  unreachable

7:                                                ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %1, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %2, align 4
  call void @__cxa_free_exception(i8* %3) #3
  br label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** %1, align 8
  %13 = load i32, i32* %2, align 4
  %14 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

declare i8* @__cxa_allocate_exception(i64)

declare %"class.std::runtime_error"* @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* noundef returned, i8* noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(i8*)

; Function Attrs: nounwind
declare %"class.std::runtime_error"* @_ZNSt13runtime_errorD1Ev(%"class.std::runtime_error"* noundef returned) unnamed_addr #2

declare void @__cxa_throw(i8*, i8*, i8*)

attributes #0 = { noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

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
