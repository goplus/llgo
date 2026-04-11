// LITTEST
package main

// Test of promotion of methods of an interface embedded within a
// struct.  In particular, this test exercises that the correct
// method is called.

type I interface {
	one() int
	two() string
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/ifaceprom.S.one"{{.*}}
// CHECK: IfacePtrData
// CHECK: ret i64
//
// CHECK-LABEL: define {{.*}} @"{{.*}}/ifaceprom.S.two"{{.*}}
// CHECK: IfacePtrData
// CHECK: ret
type S struct {
	I
}

type impl struct{}

func (impl) one() int {
	return 1
}

func (impl) two() string {
	return "two"
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/ifaceprom.main"{{.*}}
// CHECK: NewItab
// CHECK: IfacePtrData
// CHECK: PrintString
// CHECK: ret void
func main() {
	var s S
	s.I = impl{}
	if one := s.I.one(); one != 1 {
		panic(one)
	}
	if one := s.one(); one != 1 {
		panic(one)
	}
	closOne := s.I.one
	if one := closOne(); one != 1 {
		panic(one)
	}
	closOne = s.one
	if one := closOne(); one != 1 {
		panic(one)
	}

	if two := s.I.two(); two != "two" {
		panic(two)
	}
	if two := s.two(); two != "two" {
		panic(two)
	}
	closTwo := s.I.two
	if two := closTwo(); two != "two" {
		panic(two)
	}
	closTwo = s.two
	if two := closTwo(); two != "two" {
		panic(two)
	}

	println("pass")
}
