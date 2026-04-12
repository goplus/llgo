// LITTEST
package main

// Tests of interface conversions and type assertions.

type I0 interface {
}
type I1 interface {
	f()
}
type I2 interface {
	f()
	g()
}

type C0 struct{}
type C1 struct{}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.C1.f"(%"{{.*}}/cl/_testgo/ifaceconv.C1" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.(*C1).f"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load %"{{.*}}/cl/_testgo/ifaceconv.C1", ptr %0, align 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/ifaceconv.C1.f"(%"{{.*}}/cl/_testgo/ifaceconv.C1" %1)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func (C1) f() {}

type C2 struct{}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.C2.f"(%"{{.*}}/cl/_testgo/ifaceconv.C2" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.C2.g"(%"{{.*}}/cl/_testgo/ifaceconv.C2" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.(*C2).f"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load %"{{.*}}/cl/_testgo/ifaceconv.C2", ptr %0, align 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/ifaceconv.C2.f"(%"{{.*}}/cl/_testgo/ifaceconv.C2" %1)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.(*C2).g"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = load %"{{.*}}/cl/_testgo/ifaceconv.C2", ptr %0, align 1
// CHECK-NEXT:   call void @"{{.*}}/cl/_testgo/ifaceconv.C2.g"(%"{{.*}}/cl/_testgo/ifaceconv.C2" %1)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }
func (C2) f() {}
func (C2) g() {}

// CHECK-LABEL: define void @"{{.*}}/cl/_testgo/ifaceconv.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   br i1 false, label %_llgo_23, label %_llgo_24
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_25
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @2, i64 21 }, ptr %0, align 8
// CHECK-NEXT:   %1 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %0, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %1)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_25
// CHECK-NEXT:   %2 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT:   br i1 false, label %_llgo_26, label %_llgo_27
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_28
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %3, align 8
// CHECK-NEXT:   %4 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %4)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_28
// CHECK-NEXT:   %5 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT:   br i1 false, label %_llgo_29, label %_llgo_30
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_31
// CHECK-NEXT:   %6 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @10, i64 21 }, ptr %6, align 8
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %7)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_6:                                          ; preds = %_llgo_31
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT:   %9 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %8, 0
// CHECK-NEXT:   %10 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %9, ptr null, 1
// CHECK-NEXT:   %11 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT:   %12 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %11, 0
// CHECK-NEXT:   %13 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %12, ptr null, 1
// CHECK-NEXT:   %14 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT:   %15 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr %14)
// CHECK-NEXT:   %16 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %15, 0
// CHECK-NEXT:   %17 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %16, ptr null, 1
// CHECK-NEXT:   %18 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 0)
// CHECK-NEXT:   store %"{{.*}}/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %18, align 1
// CHECK-NEXT:   %19 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.C1")
// CHECK-NEXT:   %20 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %19, 0
// CHECK-NEXT:   %21 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %20, ptr %18, 1
// CHECK-NEXT:   %22 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %21)
// CHECK-NEXT:   %23 = call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I0", ptr %22)
// CHECK-NEXT:   br i1 %23, label %_llgo_32, label %_llgo_33
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_7:                                          ; preds = %_llgo_34
// CHECK-NEXT:   %24 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @14, i64 17 }, ptr %24, align 8
// CHECK-NEXT:   %25 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %24, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %25)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_8:                                          ; preds = %_llgo_34
// CHECK-NEXT:   %26 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %21)
// CHECK-NEXT:   %27 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %21, 1
// CHECK-NEXT:   br i1 true, label %_llgo_35, label %_llgo_36
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_9:                                          ; preds = %_llgo_37
// CHECK-NEXT:   %28 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @16, i64 17 }, ptr %28, align 8
// CHECK-NEXT:   %29 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %28, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %29)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_10:                                         ; preds = %_llgo_37
// CHECK-NEXT:   %30 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %21)
// CHECK-NEXT:   %31 = call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I2", ptr %30)
// CHECK-NEXT:   br i1 %31, label %_llgo_38, label %_llgo_39
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_11:                                         ; preds = %_llgo_40
// CHECK-NEXT:   %32 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @17, i64 20 }, ptr %32, align 8
// CHECK-NEXT:   %33 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %33)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_12:                                         ; preds = %_llgo_40
// CHECK-NEXT:   %34 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 0)
// CHECK-NEXT:   store %"{{.*}}/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %34, align 1
// CHECK-NEXT:   %35 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.C2")
// CHECK-NEXT:   %36 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %35, 0
// CHECK-NEXT:   %37 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %36, ptr %34, 1
// CHECK-NEXT:   %38 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %37)
// CHECK-NEXT:   %39 = call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I0", ptr %38)
// CHECK-NEXT:   br i1 %39, label %_llgo_41, label %_llgo_42
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_13:                                         ; preds = %_llgo_43
// CHECK-NEXT:   %40 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %40, align 8
// CHECK-NEXT:   %41 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %40, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %41)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_14:                                         ; preds = %_llgo_43
// CHECK-NEXT:   %42 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %37)
// CHECK-NEXT:   %43 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %37, 1
// CHECK-NEXT:   br i1 true, label %_llgo_44, label %_llgo_45
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_15:                                         ; preds = %_llgo_46
// CHECK-NEXT:   %44 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @21, i64 17 }, ptr %44, align 8
// CHECK-NEXT:   %45 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %44, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %45)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_16:                                         ; preds = %_llgo_46
// CHECK-NEXT:   %46 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %37)
// CHECK-NEXT:   %47 = call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I2", ptr %46)
// CHECK-NEXT:   br i1 %47, label %_llgo_47, label %_llgo_48
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_17:                                         ; preds = %_llgo_49
// CHECK-NEXT:   %48 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @22, i64 17 }, ptr %48, align 8
// CHECK-NEXT:   %49 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %48, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %49)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_18:                                         ; preds = %_llgo_49
// CHECK-NEXT:   %50 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 0)
// CHECK-NEXT:   store %"{{.*}}/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %50, align 1
// CHECK-NEXT:   %51 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.C1")
// CHECK-NEXT:   %52 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %51, 0
// CHECK-NEXT:   %53 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %52, ptr %50, 1
// CHECK-NEXT:   %54 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %53)
// CHECK-NEXT:   %55 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %53, 1
// CHECK-NEXT:   %56 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %54, 0
// CHECK-NEXT:   %57 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %56, ptr %55, 1
// CHECK-NEXT:   %58 = call i1 @"{{.*}}/runtime/internal/runtime.EfaceEqual"(%"{{.*}}/runtime/internal/runtime.eface" %57, %"{{.*}}/runtime/internal/runtime.eface" zeroinitializer)
// CHECK-NEXT:   br i1 %58, label %_llgo_19, label %_llgo_20
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_19:                                         ; preds = %_llgo_18
// CHECK-NEXT:   %59 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @23, i64 17 }, ptr %59, align 8
// CHECK-NEXT:   %60 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %59, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %60)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_20:                                         ; preds = %_llgo_18
// CHECK-NEXT:   %61 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %53)
// CHECK-NEXT:   %62 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %53, 1
// CHECK-NEXT:   %63 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %61, 0
// CHECK-NEXT:   %64 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %63, ptr %62, 1
// CHECK-NEXT:   %65 = call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT:   %66 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %65, 0
// CHECK-NEXT:   %67 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %66, ptr null, 1
// CHECK-NEXT:   %68 = call i1 @"{{.*}}/runtime/internal/runtime.EfaceEqual"(%"{{.*}}/runtime/internal/runtime.eface" %64, %"{{.*}}/runtime/internal/runtime.eface" %67)
// CHECK-NEXT:   br i1 %68, label %_llgo_21, label %_llgo_22
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_21:                                         ; preds = %_llgo_20
// CHECK-NEXT:   %69 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @24, i64 17 }, ptr %69, align 8
// CHECK-NEXT:   %70 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %69, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %70)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_22:                                         ; preds = %_llgo_20
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @25, i64 4 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_23:                                         ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_25
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_24:                                         ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_25
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
// CHECK-NEXT:   %71 = phi { %"{{.*}}/runtime/internal/runtime.eface", i1 } [ { %"{{.*}}/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
// CHECK-NEXT:   %72 = extractvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %71, 0
// CHECK-NEXT:   %73 = extractvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %71, 1
// CHECK-NEXT:   br i1 %73, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_26:                                         ; preds = %_llgo_2
// CHECK-NEXT:   br label %_llgo_28
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_27:                                         ; preds = %_llgo_2
// CHECK-NEXT:   br label %_llgo_28
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
// CHECK-NEXT:   %74 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ { %"{{.*}}/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
// CHECK-NEXT:   %75 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %74, 0
// CHECK-NEXT:   %76 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %74, 1
// CHECK-NEXT:   br i1 %76, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_29:                                         ; preds = %_llgo_4
// CHECK-NEXT:   br label %_llgo_31
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_30:                                         ; preds = %_llgo_4
// CHECK-NEXT:   br label %_llgo_31
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
// CHECK-NEXT:   %77 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ { %"{{.*}}/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
// CHECK-NEXT:   %78 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %77, 0
// CHECK-NEXT:   %79 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %77, 1
// CHECK-NEXT:   br i1 %79, label %_llgo_5, label %_llgo_6
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_32:                                         ; preds = %_llgo_6
// CHECK-NEXT:   %80 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %21, 1
// CHECK-NEXT:   %81 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %22, 0
// CHECK-NEXT:   %82 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %81, ptr %80, 1
// CHECK-NEXT:   %83 = insertvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } undef, %"{{.*}}/runtime/internal/runtime.eface" %82, 0
// CHECK-NEXT:   %84 = insertvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %83, i1 true, 1
// CHECK-NEXT:   br label %_llgo_34
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_33:                                         ; preds = %_llgo_6
// CHECK-NEXT:   br label %_llgo_34
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
// CHECK-NEXT:   %85 = phi { %"{{.*}}/runtime/internal/runtime.eface", i1 } [ %84, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
// CHECK-NEXT:   %86 = extractvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %85, 0
// CHECK-NEXT:   %87 = extractvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %85, 1
// CHECK-NEXT:   br i1 %87, label %_llgo_8, label %_llgo_7
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_35:                                         ; preds = %_llgo_8
// CHECK-NEXT:   %88 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } undef, %"{{.*}}/runtime/internal/runtime.iface" %21, 0
// CHECK-NEXT:   %89 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %88, i1 true, 1
// CHECK-NEXT:   br label %_llgo_37
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_36:                                         ; preds = %_llgo_8
// CHECK-NEXT:   br label %_llgo_37
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
// CHECK-NEXT:   %90 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ %89, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
// CHECK-NEXT:   %91 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %90, 0
// CHECK-NEXT:   %92 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %90, 1
// CHECK-NEXT:   br i1 %92, label %_llgo_10, label %_llgo_9
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_38:                                         ; preds = %_llgo_10
// CHECK-NEXT:   %93 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %21, 1
// CHECK-NEXT:   %94 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", ptr %30)
// CHECK-NEXT:   %95 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %94, 0
// CHECK-NEXT:   %96 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %95, ptr %93, 1
// CHECK-NEXT:   %97 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } undef, %"{{.*}}/runtime/internal/runtime.iface" %96, 0
// CHECK-NEXT:   %98 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %97, i1 true, 1
// CHECK-NEXT:   br label %_llgo_40
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_39:                                         ; preds = %_llgo_10
// CHECK-NEXT:   br label %_llgo_40
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
// CHECK-NEXT:   %99 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ %98, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
// CHECK-NEXT:   %100 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %99, 0
// CHECK-NEXT:   %101 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %99, 1
// CHECK-NEXT:   br i1 %101, label %_llgo_11, label %_llgo_12
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_41:                                         ; preds = %_llgo_12
// CHECK-NEXT:   %102 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %37, 1
// CHECK-NEXT:   %103 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" undef, ptr %38, 0
// CHECK-NEXT:   %104 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" %103, ptr %102, 1
// CHECK-NEXT:   %105 = insertvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } undef, %"{{.*}}/runtime/internal/runtime.eface" %104, 0
// CHECK-NEXT:   %106 = insertvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %105, i1 true, 1
// CHECK-NEXT:   br label %_llgo_43
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_42:                                         ; preds = %_llgo_12
// CHECK-NEXT:   br label %_llgo_43
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
// CHECK-NEXT:   %107 = phi { %"{{.*}}/runtime/internal/runtime.eface", i1 } [ %106, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
// CHECK-NEXT:   %108 = extractvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %107, 0
// CHECK-NEXT:   %109 = extractvalue { %"{{.*}}/runtime/internal/runtime.eface", i1 } %107, 1
// CHECK-NEXT:   br i1 %109, label %_llgo_14, label %_llgo_13
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_44:                                         ; preds = %_llgo_14
// CHECK-NEXT:   %110 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } undef, %"{{.*}}/runtime/internal/runtime.iface" %37, 0
// CHECK-NEXT:   %111 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %110, i1 true, 1
// CHECK-NEXT:   br label %_llgo_46
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_45:                                         ; preds = %_llgo_14
// CHECK-NEXT:   br label %_llgo_46
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
// CHECK-NEXT:   %112 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ %111, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
// CHECK-NEXT:   %113 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %112, 0
// CHECK-NEXT:   %114 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %112, 1
// CHECK-NEXT:   br i1 %114, label %_llgo_16, label %_llgo_15
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_47:                                         ; preds = %_llgo_16
// CHECK-NEXT:   %115 = extractvalue %"{{.*}}/runtime/internal/runtime.iface" %37, 1
// CHECK-NEXT:   %116 = call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", ptr %46)
// CHECK-NEXT:   %117 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" undef, ptr %116, 0
// CHECK-NEXT:   %118 = insertvalue %"{{.*}}/runtime/internal/runtime.iface" %117, ptr %115, 1
// CHECK-NEXT:   %119 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } undef, %"{{.*}}/runtime/internal/runtime.iface" %118, 0
// CHECK-NEXT:   %120 = insertvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %119, i1 true, 1
// CHECK-NEXT:   br label %_llgo_49
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_48:                                         ; preds = %_llgo_16
// CHECK-NEXT:   br label %_llgo_49
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
// CHECK-NEXT:   %121 = phi { %"{{.*}}/runtime/internal/runtime.iface", i1 } [ %120, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
// CHECK-NEXT:   %122 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %121, 0
// CHECK-NEXT:   %123 = extractvalue { %"{{.*}}/runtime/internal/runtime.iface", i1 } %121, 1
// CHECK-NEXT:   br i1 %123, label %_llgo_18, label %_llgo_17
// CHECK-NEXT: }
func main() {
	var i0 I0
	var i1 I1
	var i2 I2

	// Nil always causes a type assertion to fail, even to the
	// same type.
	if _, ok := i0.(I0); ok {
		panic("nil i0.(I0) succeeded")
	}
	if _, ok := i1.(I1); ok {
		panic("nil i1.(I1) succeeded")
	}
	if _, ok := i2.(I2); ok {
		panic("nil i2.(I2) succeeded")
	}

	// Conversions can't fail, even with nil.
	_ = I0(i0)

	_ = I0(i1)
	_ = I1(i1)

	_ = I0(i2)
	_ = I1(i2)
	_ = I2(i2)

	// Non-nil type assertions pass or fail based on the concrete type.
	i1 = C1{}
	if _, ok := i1.(I0); !ok {
		panic("C1 i1.(I0) failed")
	}
	if _, ok := i1.(I1); !ok {
		panic("C1 i1.(I1) failed")
	}
	if _, ok := i1.(I2); ok {
		panic("C1 i1.(I2) succeeded")
	}

	i1 = C2{}
	if _, ok := i1.(I0); !ok {
		panic("C2 i1.(I0) failed")
	}
	if _, ok := i1.(I1); !ok {
		panic("C2 i1.(I1) failed")
	}
	if _, ok := i1.(I2); !ok {
		panic("C2 i1.(I2) failed")
	}

	// Conversions can't fail.
	i1 = C1{}
	if I0(i1) == nil {
		panic("C1 I0(i1) was nil")
	}
	if I1(i1) == nil {
		panic("C1 I1(i1) was nil")
	}

	println("pass")
}
