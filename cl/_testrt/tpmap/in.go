// LITTEST
package main

type T1 int

type T2 struct {
	v int
}

type T3[T any] struct {
	v T
}

type cacheKey struct {
	t1 T1
	t2 T2
	t3 T3[any]
	t4 *int
	t5 uintptr
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/tpmap.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.MakeMap"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", i64 0)
// CHECK-NEXT:   %1 = alloca %"{{.*}}/cl/_testrt/tpmap.cacheKey", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 48, i1 false)
// CHECK-NEXT:   %2 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %1, i32 0, i32 0
// CHECK-NEXT:   %3 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %1, i32 0, i32 1
// CHECK-NEXT:   %4 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.T2", ptr %3, i32 0, i32 0
// CHECK-NEXT:   %5 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %1, i32 0, i32 2
// CHECK-NEXT:   %6 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.T3[any]", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %7 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %1, i32 0, i32 3
// CHECK-NEXT:   %8 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %1, i32 0, i32 4
// CHECK-NEXT:   store i64 0, ptr %2, align 4
// CHECK-NEXT:   store i64 0, ptr %4, align 4
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null }, ptr %6, align 8
// CHECK-NEXT:   store ptr null, ptr %7, align 8
// CHECK-NEXT:   store i64 0, ptr %8, align 4
// CHECK-NEXT:   %9 = load %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %1, align 8
// CHECK-NEXT:   %10 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 48)
// CHECK-NEXT:   store %"{{.*}}/cl/_testrt/tpmap.cacheKey" %9, ptr %10, align 8
// CHECK-NEXT:   %11 = call ptr @"{{.*}}/runtime/internal/runtime.MapAssign"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", ptr %0, ptr %10)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @29, i64 5 }, ptr %11, align 8
// CHECK-NEXT:   %12 = alloca %"{{.*}}/cl/_testrt/tpmap.cacheKey", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %12, i8 0, i64 48, i1 false)
// CHECK-NEXT:   %13 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %12, i32 0, i32 0
// CHECK-NEXT:   %14 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %12, i32 0, i32 1
// CHECK-NEXT:   %15 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.T2", ptr %14, i32 0, i32 0
// CHECK-NEXT:   %16 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %12, i32 0, i32 2
// CHECK-NEXT:   %17 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.T3[any]", ptr %16, i32 0, i32 0
// CHECK-NEXT:   %18 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %12, i32 0, i32 3
// CHECK-NEXT:   %19 = getelementptr inbounds %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %12, i32 0, i32 4
// CHECK-NEXT:   store i64 0, ptr %13, align 4
// CHECK-NEXT:   store i64 0, ptr %15, align 4
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null }, ptr %17, align 8
// CHECK-NEXT:   store ptr null, ptr %18, align 8
// CHECK-NEXT:   store i64 0, ptr %19, align 4
// CHECK-NEXT:   %20 = load %"{{.*}}/cl/_testrt/tpmap.cacheKey", ptr %12, align 8
// CHECK-NEXT:   %21 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 48)
// CHECK-NEXT:   store %"{{.*}}/cl/_testrt/tpmap.cacheKey" %20, ptr %21, align 8
// CHECK-NEXT:   %22 = call { ptr, i1 } @"{{.*}}/runtime/internal/runtime.MapAccess2"(ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", ptr %0, ptr %21)
// CHECK-NEXT:   %23 = extractvalue { ptr, i1 } %22, 0
// CHECK-NEXT:   %24 = load %"{{.*}}/runtime/internal/runtime.String", ptr %23, align 8
// CHECK-NEXT:   %25 = extractvalue { ptr, i1 } %22, 1
// CHECK-NEXT:   %26 = insertvalue { %"{{.*}}/runtime/internal/runtime.String", i1 } undef, %"{{.*}}/runtime/internal/runtime.String" %24, 0
// CHECK-NEXT:   %27 = insertvalue { %"{{.*}}/runtime/internal/runtime.String", i1 } %26, i1 %25, 1
// CHECK-NEXT:   %28 = extractvalue { %"{{.*}}/runtime/internal/runtime.String", i1 } %27, 0
// CHECK-NEXT:   %29 = extractvalue { %"{{.*}}/runtime/internal/runtime.String", i1 } %27, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %28)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %29)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func main() {
	m := map[cacheKey]string{}
	m[cacheKey{0, T2{0}, T3[any]{0}, nil, 0}] = "world"
	v, ok := m[cacheKey{0, T2{0}, T3[any]{0}, nil, 0}]
	println(v, ok)
}
