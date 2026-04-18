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
// CHECK: br i1 false, label %{{.*}}, label %{{.*}}
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT: %{{[0-9]+}} = icmp ne ptr %{{[0-9]+}}, null
// CHECK-NEXT: br i1 %{{[0-9]+}}, label %{{.*}}, label %{{.*}}
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" zeroinitializer)
// CHECK-NEXT: %{{[0-9]+}} = icmp ne ptr %{{[0-9]+}}, null
// CHECK-NEXT: br i1 %{{[0-9]+}}, label %{{.*}}, label %{{.*}}
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr %{{[0-9]+}})
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.C1")
// CHECK: call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I0", ptr %{{[0-9]+}})
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %{{[0-9]+}})
// CHECK-NEXT: %{{[0-9]+}} = icmp ne ptr %{{[0-9]+}}, null
// CHECK-NEXT: br i1 %{{[0-9]+}}, label %{{.*}}, label %{{.*}}
// CHECK: call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I2", ptr %{{[0-9]+}})
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.NewItab"(ptr @"{{.*}}/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.C2")
// CHECK: call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I0", ptr %{{[0-9]+}})
// CHECK: call ptr @"{{.*}}/runtime/internal/runtime.IfaceType"(%"{{.*}}/runtime/internal/runtime.iface" %{{[0-9]+}})
// CHECK-NEXT: %{{[0-9]+}} = icmp ne ptr %{{[0-9]+}}, null
// CHECK-NEXT: br i1 %{{[0-9]+}}, label %{{.*}}, label %{{.*}}
// CHECK: call i1 @"{{.*}}/runtime/internal/runtime.Implements"(ptr @"_llgo_{{.*}}/cl/_testgo/ifaceconv.I2", ptr %{{[0-9]+}})
// CHECK: call i1 @"{{.*}}/runtime/internal/runtime.EfaceEqual"
// CHECK: call i1 @"{{.*}}/runtime/internal/runtime.EfaceEqual"
// CHECK: call void @"{{.*}}/runtime/internal/runtime.PrintString"
// CHECK-NEXT: call void @"{{.*}}/runtime/internal/runtime.PrintByte"
// CHECK-NEXT: ret void
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
