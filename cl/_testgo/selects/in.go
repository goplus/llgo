// LITTEST
package main

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/selects.main"(){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.NewChan"(i64 0, i64 1)
// CHECK-NEXT:   store ptr %1, ptr %0, align 8
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.NewChan"(i64 0, i64 1)
// CHECK-NEXT:   store ptr %3, ptr %2, align 8
// CHECK-NEXT:   %4 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %5 = call ptr @"{{.*}}/runtime/internal/runtime.NewChan"(i64 0, i64 1)
// CHECK-NEXT:   store ptr %5, ptr %4, align 8
// CHECK-NEXT:   %6 = call ptr @"{{.*}}/runtime/internal/runtime.NewChan"(i64 0, i64 1)
// CHECK-NEXT:   %7 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 24)
// CHECK-NEXT:   %8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %7, i32 0, i32 0
// CHECK-NEXT:   store ptr %0, ptr %8, align 8
// CHECK-NEXT:   %9 = getelementptr inbounds { ptr, ptr, ptr }, ptr %7, i32 0, i32 1
// CHECK-NEXT:   store ptr %2, ptr %9, align 8
// CHECK-NEXT:   %10 = getelementptr inbounds { ptr, ptr, ptr }, ptr %7, i32 0, i32 2
// CHECK-NEXT:   store ptr %4, ptr %10, align 8
// CHECK-NEXT:   %11 = insertvalue { ptr, ptr } { ptr @"{{.*}}/cl/_testgo/selects.main$1", ptr undef }, ptr %7, 1
// CHECK-NEXT:   %12 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   %13 = getelementptr inbounds { { ptr, ptr } }, ptr %12, i32 0, i32 0
// CHECK-NEXT:   store { ptr, ptr } %11, ptr %13, align 8
// CHECK-NEXT:   %14 = alloca i8, i64 8, align 1
// CHECK-NEXT:   %15 = call i32 @"{{.*}}/runtime/internal/runtime.CreateThread"(ptr %14, ptr null, ptr @"{{.*}}/cl/_testgo/selects._llgo_routine$1", ptr %12)
// CHECK-NEXT:   %16 = load ptr, ptr %0, align 8
// CHECK-NEXT:   %17 = alloca {}, align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %17, i8 0, i64 0, i1 false)
// CHECK-NEXT:   store {} zeroinitializer, ptr %17, align 1
// CHECK-NEXT:   %18 = call i1 @"{{.*}}/runtime/internal/runtime.ChanSend"(ptr %16, ptr %17, i64 0)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %19 = load ptr, ptr %2, align 8
// CHECK-NEXT:   %20 = alloca {}, align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %20, i8 0, i64 0, i1 false)
// CHECK-NEXT:   %21 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" undef, ptr %19, 0
// CHECK-NEXT:   %22 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %21, ptr %20, 1
// CHECK-NEXT:   %23 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %22, i32 0, 2
// CHECK-NEXT:   %24 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %23, i1 false, 3
// CHECK-NEXT:   %25 = alloca {}, align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %25, i8 0, i64 0, i1 false)
// CHECK-NEXT:   %26 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" undef, ptr %6, 0
// CHECK-NEXT:   %27 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %26, ptr %25, 1
// CHECK-NEXT:   %28 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %27, i32 0, 2
// CHECK-NEXT:   %29 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %28, i1 false, 3
// CHECK-NEXT:   %30 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 48)
// CHECK-NEXT:   %31 = getelementptr %"{{.*}}/runtime/internal/runtime.ChanOp", ptr %30, i64 0
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.ChanOp" %24, ptr %31, align 8
// CHECK-NEXT:   %32 = getelementptr %"{{.*}}/runtime/internal/runtime.ChanOp", ptr %30, i64 1
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.ChanOp" %29, ptr %32, align 8
// CHECK-NEXT:   %33 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %30, 0
// CHECK-NEXT:   %34 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %33, i64 2, 1
// CHECK-NEXT:   %35 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %34, i64 2, 2
// CHECK-NEXT:   %36 = call { i64, i1 } @"{{.*}}/runtime/internal/runtime.Select"(%"{{.*}}/runtime/internal/runtime.Slice" %35)
// CHECK-NEXT:   %37 = extractvalue { i64, i1 } %36, 0
// CHECK-NEXT:   %38 = extractvalue { i64, i1 } %36, 1
// CHECK-NEXT:   %39 = extractvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %24, 1
// CHECK-NEXT:   %40 = load {}, ptr %39, align 1
// CHECK-NEXT:   %41 = extractvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %29, 1
// CHECK-NEXT:   %42 = load {}, ptr %41, align 1
// CHECK-NEXT:   %43 = insertvalue { i64, i1, {}, {} } undef, i64 %37, 0
// CHECK-NEXT:   %44 = insertvalue { i64, i1, {}, {} } %43, i1 %38, 1
// CHECK-NEXT:   %45 = insertvalue { i64, i1, {}, {} } %44, {} %40, 2
// CHECK-NEXT:   %46 = insertvalue { i64, i1, {}, {} } %45, {} %42, 3
// CHECK-NEXT:   %47 = extractvalue { i64, i1, {}, {} } %46, 0
// CHECK-NEXT:   %48 = icmp eq i64 %47, 0
// CHECK-NEXT:   br i1 %48, label %_llgo_2, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_0
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @1, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %49 = icmp eq i64 %47, 1
// CHECK-NEXT:   br i1 %49, label %_llgo_4, label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_3
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @2, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %50 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %50, align 8
// CHECK-NEXT:   %51 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %50, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %51)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }
func main() {
	c1 := make(chan struct{}, 1)
	c2 := make(chan struct{}, 1)
	c3 := make(chan struct{}, 1)
	c4 := make(chan struct{}, 1)

	go func() {
		<-c1
		println("<-c1")

		select {
		case c2 <- struct{}{}:
			println("c2<-")
		case <-c3:
			println("<-c3")
		}
	}()

	c1 <- struct{}{}
	println("c1<-")

	select {
	case <-c2:
		println("<-c2")
	case <-c4:
		println("<-c4")
	}
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/selects.main$1"(ptr %0){{.*}} {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load { ptr, ptr, ptr }, ptr %0, align 8
// CHECK-NEXT:   %2 = extractvalue { ptr, ptr, ptr } %1, 0
// CHECK-NEXT:   %3 = load ptr, ptr %2, align 8
// CHECK-NEXT:   %4 = alloca {}, align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %4, i8 0, i64 0, i1 false)
// CHECK-NEXT:   %5 = call i1 @"{{.*}}/runtime/internal/runtime.ChanRecv"(ptr %3, ptr %4, i64 0)
// CHECK-NEXT:   %6 = load {}, ptr %4, align 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %7 = extractvalue { ptr, ptr, ptr } %1, 1
// CHECK-NEXT:   %8 = load ptr, ptr %7, align 8
// CHECK-NEXT:   %9 = extractvalue { ptr, ptr, ptr } %1, 2
// CHECK-NEXT:   %10 = load ptr, ptr %9, align 8
// CHECK-NEXT:   %11 = alloca {}, align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %11, i8 0, i64 0, i1 false)
// CHECK-NEXT:   store {} zeroinitializer, ptr %11, align 1
// CHECK-NEXT:   %12 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" undef, ptr %8, 0
// CHECK-NEXT:   %13 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %12, ptr %11, 1
// CHECK-NEXT:   %14 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %13, i32 0, 2
// CHECK-NEXT:   %15 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %14, i1 true, 3
// CHECK-NEXT:   %16 = alloca {}, align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %16, i8 0, i64 0, i1 false)
// CHECK-NEXT:   %17 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" undef, ptr %10, 0
// CHECK-NEXT:   %18 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %17, ptr %16, 1
// CHECK-NEXT:   %19 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %18, i32 0, 2
// CHECK-NEXT:   %20 = insertvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %19, i1 false, 3
// CHECK-NEXT:   %21 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 48)
// CHECK-NEXT:   %22 = getelementptr %"{{.*}}/runtime/internal/runtime.ChanOp", ptr %21, i64 0
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.ChanOp" %15, ptr %22, align 8
// CHECK-NEXT:   %23 = getelementptr %"{{.*}}/runtime/internal/runtime.ChanOp", ptr %21, i64 1
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.ChanOp" %20, ptr %23, align 8
// CHECK-NEXT:   %24 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %21, 0
// CHECK-NEXT:   %25 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %24, i64 2, 1
// CHECK-NEXT:   %26 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %25, i64 2, 2
// CHECK-NEXT:   %27 = call { i64, i1 } @"{{.*}}/runtime/internal/runtime.Select"(%"{{.*}}/runtime/internal/runtime.Slice" %26)
// CHECK-NEXT:   %28 = extractvalue { i64, i1 } %27, 0
// CHECK-NEXT:   %29 = extractvalue { i64, i1 } %27, 1
// CHECK-NEXT:   %30 = extractvalue %"{{.*}}/runtime/internal/runtime.ChanOp" %20, 1
// CHECK-NEXT:   %31 = load {}, ptr %30, align 1
// CHECK-NEXT:   %32 = insertvalue { i64, i1, {} } undef, i64 %28, 0
// CHECK-NEXT:   %33 = insertvalue { i64, i1, {} } %32, i1 %29, 1
// CHECK-NEXT:   %34 = insertvalue { i64, i1, {} } %33, {} %31, 2
// CHECK-NEXT:   %35 = extractvalue { i64, i1, {} } %34, 0
// CHECK-NEXT:   %36 = icmp eq i64 %35, 0
// CHECK-NEXT:   br i1 %36, label %_llgo_2, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_4, %_llgo_2
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_0
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %37 = icmp eq i64 %35, 1
// CHECK-NEXT:   br i1 %37, label %_llgo_4, label %_llgo_5
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_3
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @7, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_3
// CHECK-NEXT:   %38 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @3, i64 31 }, ptr %38, align 8
// CHECK-NEXT:   %39 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %38, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %39)
// CHECK-NEXT:   unreachable
// CHECK-NEXT: }
