package main

import (
	"fmt"
	"go/token"
	"log"
	. "reflect"
	"runtime"
	"strconv"
	"strings"
	"time"
)

type testingT struct {
}

func (t *testingT) Errorf(format string, args ...any) {
	log.Panicf(format, args...)
}

func (t *testingT) Fatal(args ...any) {
	log.Panic(args...)
}

func (t *testingT) Fatalf(format string, args ...any) {
	log.Panicf(format, args...)
}

func main() {
	var t testingT
	TestArrayOf(&t)
	TestArrayOfAlg(&t)
	TestArrayOfGenericAlg(&t)
	TestArrayOfDirectIface(&t)
	TestArrayOfPanicOnNegativeLength(&t)
	TestSliceOf(&t)
	//TestSliceOverflow(&t)
	TestSliceOfGC(&t)
	TestStructOf(&t)
	TestStructOfGC(&t)
	TestStructOfAlg(&t)
	TestStructOfGenericAlg(&t)
	TestStructOfDirectIface(&t)
	TestStructOfExportRules(&t)
	TestStructOfFieldName(&t)
	TestStructOfAnonymous(&t)
	TestStructOfTooLarge(&t)
	TestStructOfDifferentPkgPath(&t)
	//TestStructOfTooManyFields(&t)
	//TestStructOfWithInterface(&t)
	//TestChanOf(&t)
	TestChanOfDir(&t)
	//TestChanOfGC(&t)
	TestMapOf(&t)
	TestFuncOf(&t)
}

func checkSameType(t *testingT, x Type, y any) {
	if x != TypeOf(y) || TypeOf(Zero(x).Interface()) != TypeOf(y) {
		t.Errorf("did not find preexisting type for %s (vs %s)", TypeOf(x), TypeOf(y))
	}
}

func TestArrayOf(t *testingT) {
	// check construction and use of type not in binary
	tests := []struct {
		n          int
		value      func(i int) any
		comparable bool
		want       string
	}{
		{
			n:          0,
			value:      func(i int) any { type Tint int; return Tint(i) },
			comparable: true,
			want:       "[]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tint int; return Tint(i) },
			comparable: true,
			want:       "[0 1 2 3 4 5 6 7 8 9]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tfloat float64; return Tfloat(i) },
			comparable: true,
			want:       "[0 1 2 3 4 5 6 7 8 9]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tstring string; return Tstring(strconv.Itoa(i)) },
			comparable: true,
			want:       "[0 1 2 3 4 5 6 7 8 9]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tstruct struct{ V int }; return Tstruct{i} },
			comparable: true,
			want:       "[{0} {1} {2} {3} {4} {5} {6} {7} {8} {9}]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tint int; return []Tint{Tint(i)} },
			comparable: false,
			want:       "[[0] [1] [2] [3] [4] [5] [6] [7] [8] [9]]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tint int; return [1]Tint{Tint(i)} },
			comparable: true,
			want:       "[[0] [1] [2] [3] [4] [5] [6] [7] [8] [9]]",
		},
		{
			n: 10,
			value: func(i int) any {
				type Tstruct struct{ V [1]int }
				return Tstruct{[1]int{i}}
			},
			comparable: true,
			want:       "[{[0]} {[1]} {[2]} {[3]} {[4]} {[5]} {[6]} {[7]} {[8]} {[9]}]",
		},
		{
			n:          10,
			value:      func(i int) any { type Tstruct struct{ V []int }; return Tstruct{[]int{i}} },
			comparable: false,
			want:       "[{[0]} {[1]} {[2]} {[3]} {[4]} {[5]} {[6]} {[7]} {[8]} {[9]}]",
		},
		{
			n:          10,
			value:      func(i int) any { type TstructUV struct{ U, V int }; return TstructUV{i, i} },
			comparable: true,
			want:       "[{0 0} {1 1} {2 2} {3 3} {4 4} {5 5} {6 6} {7 7} {8 8} {9 9}]",
		},
		{
			n: 10,
			value: func(i int) any {
				type TstructUV struct {
					U int
					V float64
				}
				return TstructUV{i, float64(i)}
			},
			comparable: true,
			want:       "[{0 0} {1 1} {2 2} {3 3} {4 4} {5 5} {6 6} {7 7} {8 8} {9 9}]",
		},
	}

	for _, table := range tests {
		at := ArrayOf(table.n, TypeOf(table.value(0)))
		v := New(at).Elem()
		vok := New(at).Elem()
		vnot := New(at).Elem()
		for i := 0; i < v.Len(); i++ {
			v.Index(i).Set(ValueOf(table.value(i)))
			vok.Index(i).Set(ValueOf(table.value(i)))
			j := i
			if i+1 == v.Len() {
				j = i + 1
			}
			vnot.Index(i).Set(ValueOf(table.value(j))) // make it differ only by last element
		}
		s := fmt.Sprint(v.Interface())
		if s != table.want {
			t.Errorf("constructed array = %s, want %s", s, table.want)
		}

		if table.comparable != at.Comparable() {
			t.Errorf("constructed array (%#v) is comparable=%v, want=%v", v.Interface(), at.Comparable(), table.comparable)
		}
		if table.comparable {
			if table.n > 0 {
				if DeepEqual(vnot.Interface(), v.Interface()) {
					t.Errorf(
						"arrays (%#v) compare ok (but should not)",
						v.Interface(),
					)
				}
			}
			if !DeepEqual(vok.Interface(), v.Interface()) {
				t.Errorf(
					"arrays (%#v) compare NOT-ok (but should)",
					v.Interface(),
				)
			}
		}
	}

	// check that type already in binary is found
	type T int
	checkSameType(t, ArrayOf(5, TypeOf(T(1))), [5]T{})
}

func TestArrayOfAlg(t *testingT) {
	at := ArrayOf(6, TypeOf(byte(0)))
	v1 := New(at).Elem()
	v2 := New(at).Elem()
	if v1.Interface() != v1.Interface() {
		t.Errorf("constructed array %v not equal to itself", v1.Interface())
	}
	v1.Index(5).Set(ValueOf(byte(1)))
	if i1, i2 := v1.Interface(), v2.Interface(); i1 == i2 {
		t.Errorf("constructed arrays %v and %v should not be equal", i1, i2)
	}

	at = ArrayOf(6, TypeOf([]int(nil)))
	v1 = New(at).Elem()
	shouldPanic("", func() { _ = v1.Interface() == v1.Interface() })
}

func TestArrayOfGenericAlg(t *testingT) {
	at1 := ArrayOf(5, TypeOf(string("")))
	at := ArrayOf(6, at1)
	v1 := New(at).Elem()
	v2 := New(at).Elem()
	if v1.Interface() != v1.Interface() {
		t.Errorf("constructed array %v not equal to itself", v1.Interface())
	}

	v1.Index(0).Index(0).Set(ValueOf("abc"))
	v2.Index(0).Index(0).Set(ValueOf("efg"))
	if i1, i2 := v1.Interface(), v2.Interface(); i1 == i2 {
		t.Errorf("constructed arrays %v and %v should not be equal", i1, i2)
	}

	v1.Index(0).Index(0).Set(ValueOf("abc"))
	v2.Index(0).Index(0).Set(ValueOf((v1.Index(0).Index(0).String() + " ")[:3]))
	if i1, i2 := v1.Interface(), v2.Interface(); i1 != i2 {
		t.Errorf("constructed arrays %v and %v should be equal", i1, i2)
	}

	// Test hash
	m := MakeMap(MapOf(at, TypeOf(int(0))))
	m.SetMapIndex(v1, ValueOf(1))
	if i1, i2 := v1.Interface(), v2.Interface(); !m.MapIndex(v2).IsValid() {
		t.Errorf("constructed arrays %v and %v have different hashes", i1, i2)
	}
}

func TestArrayOfDirectIface(t *testingT) {
	{
		type T [1]*byte
		i1 := Zero(TypeOf(T{})).Interface()
		v1 := ValueOf(&i1).Elem()
		p1 := v1.InterfaceData()[1]

		i2 := Zero(ArrayOf(1, PointerTo(TypeOf(int8(0))))).Interface()
		v2 := ValueOf(&i2).Elem()
		p2 := v2.InterfaceData()[1]

		if p1 != 0 {
			t.Errorf("got p1=%v. want=%v", p1, nil)
		}

		if p2 != 0 {
			t.Errorf("got p2=%v. want=%v", p2, nil)
		}
	}
	{
		type T [0]*byte
		i1 := Zero(TypeOf(T{})).Interface()
		v1 := ValueOf(&i1).Elem()
		p1 := v1.InterfaceData()[1]

		i2 := Zero(ArrayOf(0, PointerTo(TypeOf(int8(0))))).Interface()
		v2 := ValueOf(&i2).Elem()
		p2 := v2.InterfaceData()[1]

		if p1 == 0 {
			t.Errorf("got p1=%v. want=not-%v", p1, nil)
		}

		if p2 == 0 {
			t.Errorf("got p2=%v. want=not-%v", p2, nil)
		}
	}
}

// Ensure passing in negative lengths panics.
// See https://golang.org/issue/43603
func TestArrayOfPanicOnNegativeLength(t *testingT) {
	shouldPanic("reflect: negative length passed to ArrayOf", func() {
		ArrayOf(-1, TypeOf(byte(0)))
	})
}

func TestSliceOf(t *testingT) {
	// check construction and use of type not in binary
	type T int
	st := SliceOf(TypeOf(T(1)))
	if got, want := st.String(), "[]main.T"; got != want {
		t.Errorf("SliceOf(T(1)).String()=%q, want %q", got, want)
	}
	v := MakeSlice(st, 10, 10)
	runtime.GC()
	for i := 0; i < v.Len(); i++ {
		v.Index(i).Set(ValueOf(T(i)))
		runtime.GC()
	}
	s := fmt.Sprint(v.Interface())
	want := "[0 1 2 3 4 5 6 7 8 9]"
	if s != want {
		t.Errorf("constructed slice = %s, want %s", s, want)
	}

	// check that type already in binary is found
	type T1 int
	checkSameType(t, SliceOf(TypeOf(T1(1))), []T1{})
}

/*
func TestSliceOverflow(t *testingT) {
	// check that MakeSlice panics when size of slice overflows uint
	const S = 1e6
	s := uint(S)
	l := (1<<(unsafe.Sizeof((*byte)(nil))*8)-1)/s + 1
	if l*s >= s {
		t.Fatal("slice size does not overflow")
	}
	var x [S]byte
	st := SliceOf(TypeOf(x))
	defer func() {
		err := recover()
		if err == nil {
			t.Fatal("slice overflow does not panic")
		}
	}()
	MakeSlice(st, int(l), int(l))
}
*/

func TestSliceOfGC(t *testingT) {
	type T *uintptr
	tt := TypeOf(T(nil))
	st := SliceOf(tt)
	const n = 100
	var x []any
	for i := 0; i < n; i++ {
		v := MakeSlice(st, n, n)
		for j := 0; j < v.Len(); j++ {
			p := new(uintptr)
			*p = uintptr(i*n + j)
			v.Index(j).Set(ValueOf(p).Convert(tt))
		}
		x = append(x, v.Interface())
	}
	runtime.GC()

	for i, xi := range x {
		v := ValueOf(xi)
		for j := 0; j < v.Len(); j++ {
			k := v.Index(j).Elem().Interface()
			if k != uintptr(i*n+j) {
				t.Errorf("lost x[%d][%d] = %d, want %d", i, j, k, i*n+j)
			}
		}
	}
}

func TestMapOf(t *testingT) {
	// check construction and use of type not in binary
	type K string
	type V float64

	v := MakeMap(MapOf(TypeOf(K("")), TypeOf(V(0))))
	runtime.GC()
	v.SetMapIndex(ValueOf(K("a")), ValueOf(V(1)))
	runtime.GC()

	s := fmt.Sprint(v.Interface())
	want := "map[a:1]"
	if s != want {
		t.Errorf("constructed map = %s, want %s", s, want)
	}

	// check that type already in binary is found
	checkSameType(t, MapOf(TypeOf(V(0)), TypeOf(K(""))), map[V]K(nil))

	// check that invalid key type panics
	shouldPanic("invalid key type", func() { MapOf(TypeOf((func())(nil)), TypeOf(false)) })
}

func TestStructOfFieldName(t *testingT) {
	// invalid field name "1nvalid"
	shouldPanic("has invalid name", func() {
		StructOf([]StructField{
			{Name: "Valid", Type: TypeOf("")},
			{Name: "1nvalid", Type: TypeOf("")},
		})
	})

	// invalid field name "+"
	shouldPanic("has invalid name", func() {
		StructOf([]StructField{
			{Name: "Val1d", Type: TypeOf("")},
			{Name: "+", Type: TypeOf("")},
		})
	})

	// no field name
	shouldPanic("has no name", func() {
		StructOf([]StructField{
			{Name: "", Type: TypeOf("")},
		})
	})

	// verify creation of a struct with valid struct fields
	validFields := []StructField{
		{
			Name: "φ",
			Type: TypeOf(""),
		},
		{
			Name: "ValidName",
			Type: TypeOf(""),
		},
		{
			Name: "Val1dNam5",
			Type: TypeOf(""),
		},
	}

	validStruct := StructOf(validFields)

	const structStr = `struct { φ string; ValidName string; Val1dNam5 string }`
	if got, want := validStruct.String(), structStr; got != want {
		t.Errorf("StructOf(validFields).String()=%q, want %q", got, want)
	}
}

func TestStructOf(t *testingT) {
	// check construction and use of type not in binary
	fields := []StructField{
		{
			Name: "S",
			Tag:  "s",
			Type: TypeOf(""),
		},
		{
			Name: "X",
			Tag:  "x",
			Type: TypeOf(byte(0)),
		},
		{
			Name: "Y",
			Type: TypeOf(uint64(0)),
		},
		{
			Name: "Z",
			Type: TypeOf([3]uint16{}),
		},
	}

	st := StructOf(fields)
	v := New(st).Elem()
	runtime.GC()
	v.FieldByName("X").Set(ValueOf(byte(2)))
	v.FieldByIndex([]int{1}).Set(ValueOf(byte(1)))
	runtime.GC()

	s := fmt.Sprint(v.Interface())
	want := `{ 1 0 [0 0 0]}`
	if s != want {
		t.Errorf("constructed struct = %s, want %s", s, want)
	}
	const stStr = `struct { S string "s"; X uint8 "x"; Y uint64; Z [3]uint16 }`
	if got, want := st.String(), stStr; got != want {
		t.Errorf("StructOf(fields).String()=%q, want %q", got, want)
	}

	// check the size, alignment and field offsets
	stt := TypeOf(struct {
		String string
		X      byte
		Y      uint64
		Z      [3]uint16
	}{})
	if st.Size() != stt.Size() {
		t.Errorf("constructed struct size = %v, want %v", st.Size(), stt.Size())
	}
	if st.Align() != stt.Align() {
		t.Errorf("constructed struct align = %v, want %v", st.Align(), stt.Align())
	}
	if st.FieldAlign() != stt.FieldAlign() {
		t.Errorf("constructed struct field align = %v, want %v", st.FieldAlign(), stt.FieldAlign())
	}
	for i := 0; i < st.NumField(); i++ {
		o1 := st.Field(i).Offset
		o2 := stt.Field(i).Offset
		if o1 != o2 {
			t.Errorf("constructed struct field %v offset = %v, want %v", i, o1, o2)
		}
	}

	// Check size and alignment with a trailing zero-sized field.
	st = StructOf([]StructField{
		{
			Name: "F1",
			Type: TypeOf(byte(0)),
		},
		{
			Name: "F2",
			Type: TypeOf([0]*byte{}),
		},
	})
	stt = TypeOf(struct {
		G1 byte
		G2 [0]*byte
	}{})
	if st.Size() != stt.Size() {
		t.Errorf("constructed zero-padded struct size = %v, want %v", st.Size(), stt.Size())
	}
	if st.Align() != stt.Align() {
		t.Errorf("constructed zero-padded struct align = %v, want %v", st.Align(), stt.Align())
	}
	if st.FieldAlign() != stt.FieldAlign() {
		t.Errorf("constructed zero-padded struct field align = %v, want %v", st.FieldAlign(), stt.FieldAlign())
	}
	for i := 0; i < st.NumField(); i++ {
		o1 := st.Field(i).Offset
		o2 := stt.Field(i).Offset
		if o1 != o2 {
			t.Errorf("constructed zero-padded struct field %v offset = %v, want %v", i, o1, o2)
		}
	}

	// check duplicate names
	shouldPanic("duplicate field", func() {
		StructOf([]StructField{
			{Name: "string", PkgPath: "p", Type: TypeOf("")},
			{Name: "string", PkgPath: "p", Type: TypeOf("")},
		})
	})
	shouldPanic("has no name", func() {
		StructOf([]StructField{
			{Type: TypeOf("")},
			{Name: "string", PkgPath: "p", Type: TypeOf("")},
		})
	})
	shouldPanic("has no name", func() {
		StructOf([]StructField{
			{Type: TypeOf("")},
			{Type: TypeOf("")},
		})
	})

	// check that type already in binary is found
	checkSameType(t, StructOf(fields[2:3]), struct{ Y uint64 }{})

	// gccgo used to fail this test.
	type structFieldType any
	checkSameType(t,
		StructOf([]StructField{
			{
				Name: "F",
				Type: TypeOf((*structFieldType)(nil)).Elem(),
			},
		}),
		struct{ F structFieldType }{})
}

func TestStructOfExportRules(t *testingT) {
	type S1 struct{}
	type s2 struct{}
	type ΦType struct{}
	type φType struct{}

	testPanic := func(i int, mustPanic bool, f func()) {
		defer func() {
			err := recover()
			if err == nil && mustPanic {
				t.Errorf("test-%d did not panic", i)
			}
			if err != nil && !mustPanic {
				t.Errorf("test-%d panicked: %v\n", i, err)
			}
		}()
		f()
	}

	tests := []struct {
		field     StructField
		mustPanic bool
		exported  bool
	}{
		{
			field:    StructField{Name: "S1", Anonymous: true, Type: TypeOf(S1{})},
			exported: true,
		},
		{
			field:    StructField{Name: "S1", Anonymous: true, Type: TypeOf((*S1)(nil))},
			exported: true,
		},
		{
			field:     StructField{Name: "s2", Anonymous: true, Type: TypeOf(s2{})},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "s2", Anonymous: true, Type: TypeOf((*s2)(nil))},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "Name", Type: nil, PkgPath: ""},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "", Type: TypeOf(S1{}), PkgPath: ""},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "S1", Anonymous: true, Type: TypeOf(S1{}), PkgPath: "other/pkg"},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "S1", Anonymous: true, Type: TypeOf((*S1)(nil)), PkgPath: "other/pkg"},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "s2", Anonymous: true, Type: TypeOf(s2{}), PkgPath: "other/pkg"},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "s2", Anonymous: true, Type: TypeOf((*s2)(nil)), PkgPath: "other/pkg"},
			mustPanic: true,
		},
		{
			field: StructField{Name: "s2", Type: TypeOf(int(0)), PkgPath: "other/pkg"},
		},
		{
			field: StructField{Name: "s2", Type: TypeOf(int(0)), PkgPath: "other/pkg"},
		},
		{
			field:    StructField{Name: "S", Type: TypeOf(S1{})},
			exported: true,
		},
		{
			field:    StructField{Name: "S", Type: TypeOf((*S1)(nil))},
			exported: true,
		},
		{
			field:    StructField{Name: "S", Type: TypeOf(s2{})},
			exported: true,
		},
		{
			field:    StructField{Name: "S", Type: TypeOf((*s2)(nil))},
			exported: true,
		},
		{
			field:     StructField{Name: "s", Type: TypeOf(S1{})},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "s", Type: TypeOf((*S1)(nil))},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "s", Type: TypeOf(s2{})},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "s", Type: TypeOf((*s2)(nil))},
			mustPanic: true,
		},
		{
			field: StructField{Name: "s", Type: TypeOf(S1{}), PkgPath: "other/pkg"},
		},
		{
			field: StructField{Name: "s", Type: TypeOf((*S1)(nil)), PkgPath: "other/pkg"},
		},
		{
			field: StructField{Name: "s", Type: TypeOf(s2{}), PkgPath: "other/pkg"},
		},
		{
			field: StructField{Name: "s", Type: TypeOf((*s2)(nil)), PkgPath: "other/pkg"},
		},
		{
			field:     StructField{Name: "", Type: TypeOf(ΦType{})},
			mustPanic: true,
		},
		{
			field:     StructField{Name: "", Type: TypeOf(φType{})},
			mustPanic: true,
		},
		{
			field:    StructField{Name: "Φ", Type: TypeOf(0)},
			exported: true,
		},
		{
			field:    StructField{Name: "φ", Type: TypeOf(0)},
			exported: false,
		},
	}

	for i, test := range tests {
		testPanic(i, test.mustPanic, func() {
			typ := StructOf([]StructField{test.field})
			if typ == nil {
				t.Errorf("test-%d: error creating struct type", i)
				return
			}
			field := typ.Field(0)
			n := field.Name
			if n == "" {
				panic("field.Name must not be empty")
			}
			exported := token.IsExported(n)
			if exported != test.exported {
				t.Errorf("test-%d: got exported=%v want exported=%v", i, exported, test.exported)
			}
			if field.PkgPath != test.field.PkgPath {
				t.Errorf("test-%d: got PkgPath=%q want pkgPath=%q", i, field.PkgPath, test.field.PkgPath)
			}
		})
	}
}

func TestStructOfGC(t *testingT) {
	type T *uintptr
	tt := TypeOf(T(nil))
	fields := []StructField{
		{Name: "X", Type: tt},
		{Name: "Y", Type: tt},
	}
	st := StructOf(fields)

	const n = 10000
	var x []any
	for i := 0; i < n; i++ {
		v := New(st).Elem()
		for j := 0; j < v.NumField(); j++ {
			p := new(uintptr)
			*p = uintptr(i*n + j)
			v.Field(j).Set(ValueOf(p).Convert(tt))
		}
		x = append(x, v.Interface())
	}
	runtime.GC()

	for i, xi := range x {
		v := ValueOf(xi)
		for j := 0; j < v.NumField(); j++ {
			k := v.Field(j).Elem().Interface()
			if k != uintptr(i*n+j) {
				t.Errorf("lost x[%d].%c = %d, want %d", i, "XY"[j], k, i*n+j)
			}
		}
	}
}

func TestStructOfAlg(t *testingT) {
	st := StructOf([]StructField{{Name: "X", Tag: "x", Type: TypeOf(int(0))}})
	v1 := New(st).Elem()
	v2 := New(st).Elem()
	if !DeepEqual(v1.Interface(), v1.Interface()) {
		t.Errorf("constructed struct %v not equal to itself", v1.Interface())
	}
	v1.FieldByName("X").Set(ValueOf(int(1)))
	if i1, i2 := v1.Interface(), v2.Interface(); DeepEqual(i1, i2) {
		t.Errorf("constructed structs %v and %v should not be equal", i1, i2)
	}

	st = StructOf([]StructField{{Name: "X", Tag: "x", Type: TypeOf([]int(nil))}})
	v1 = New(st).Elem()
	shouldPanic("", func() { _ = v1.Interface() == v1.Interface() })
}

func TestStructOfGenericAlg(t *testingT) {
	st1 := StructOf([]StructField{
		{Name: "X", Tag: "x", Type: TypeOf(int64(0))},
		{Name: "Y", Type: TypeOf(string(""))},
	})
	st := StructOf([]StructField{
		{Name: "S0", Type: st1},
		{Name: "S1", Type: st1},
	})

	tests := []struct {
		rt  Type
		idx []int
	}{
		{
			rt:  st,
			idx: []int{0, 1},
		},
		{
			rt:  st1,
			idx: []int{1},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf([0]int{})},
					{Name: "YY", Type: TypeOf("")},
				},
			),
			idx: []int{1},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf([0]int{})},
					{Name: "YY", Type: TypeOf("")},
					{Name: "ZZ", Type: TypeOf([2]int{})},
				},
			),
			idx: []int{1},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf([1]int{})},
					{Name: "YY", Type: TypeOf("")},
				},
			),
			idx: []int{1},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf([1]int{})},
					{Name: "YY", Type: TypeOf("")},
					{Name: "ZZ", Type: TypeOf([1]int{})},
				},
			),
			idx: []int{1},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf([2]int{})},
					{Name: "YY", Type: TypeOf("")},
					{Name: "ZZ", Type: TypeOf([2]int{})},
				},
			),
			idx: []int{1},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf(int64(0))},
					{Name: "YY", Type: TypeOf(byte(0))},
					{Name: "ZZ", Type: TypeOf("")},
				},
			),
			idx: []int{2},
		},
		{
			rt: StructOf(
				[]StructField{
					{Name: "XX", Type: TypeOf(int64(0))},
					{Name: "YY", Type: TypeOf(int64(0))},
					{Name: "ZZ", Type: TypeOf("")},
					{Name: "AA", Type: TypeOf([1]int64{})},
				},
			),
			idx: []int{2},
		},
	}

	for _, table := range tests {
		v1 := New(table.rt).Elem()
		v2 := New(table.rt).Elem()

		if !DeepEqual(v1.Interface(), v1.Interface()) {
			t.Errorf("constructed struct %v not equal to itself", v1.Interface())
		}

		v1.FieldByIndex(table.idx).Set(ValueOf("abc"))
		v2.FieldByIndex(table.idx).Set(ValueOf("def"))
		if i1, i2 := v1.Interface(), v2.Interface(); DeepEqual(i1, i2) {
			t.Errorf("constructed structs %v and %v should not be equal", i1, i2)
		}

		abc := "abc"
		v1.FieldByIndex(table.idx).Set(ValueOf(abc))
		val := "+" + abc + "-"
		v2.FieldByIndex(table.idx).Set(ValueOf(val[1:4]))
		if i1, i2 := v1.Interface(), v2.Interface(); !DeepEqual(i1, i2) {
			t.Errorf("constructed structs %v and %v should be equal", i1, i2)
		}

		// Test hash
		m := MakeMap(MapOf(table.rt, TypeOf(int(0))))
		m.SetMapIndex(v1, ValueOf(1))
		if i1, i2 := v1.Interface(), v2.Interface(); !m.MapIndex(v2).IsValid() {
			t.Errorf("constructed structs %#v and %#v have different hashes", i1, i2)
		}

		v2.FieldByIndex(table.idx).Set(ValueOf("abc"))
		if i1, i2 := v1.Interface(), v2.Interface(); !DeepEqual(i1, i2) {
			t.Errorf("constructed structs %v and %v should be equal", i1, i2)
		}

		if i1, i2 := v1.Interface(), v2.Interface(); !m.MapIndex(v2).IsValid() {
			t.Errorf("constructed structs %v and %v have different hashes", i1, i2)
		}
	}
}

func TestStructOfDirectIface(t *testingT) {
	{
		type T struct{ X [1]*byte }
		i1 := Zero(TypeOf(T{})).Interface()
		v1 := ValueOf(&i1).Elem()
		p1 := v1.InterfaceData()[1]

		i2 := Zero(StructOf([]StructField{
			{
				Name: "X",
				Type: ArrayOf(1, TypeOf((*int8)(nil))),
			},
		})).Interface()
		v2 := ValueOf(&i2).Elem()
		p2 := v2.InterfaceData()[1]

		if p1 != 0 {
			t.Errorf("got p1=%v. want=%v", p1, nil)
		}

		if p2 != 0 {
			t.Errorf("got p2=%v. want=%v", p2, nil)
		}
	}
	{
		type T struct{ X [0]*byte }
		i1 := Zero(TypeOf(T{})).Interface()
		v1 := ValueOf(&i1).Elem()
		p1 := v1.InterfaceData()[1]

		i2 := Zero(StructOf([]StructField{
			{
				Name: "X",
				Type: ArrayOf(0, TypeOf((*int8)(nil))),
			},
		})).Interface()
		v2 := ValueOf(&i2).Elem()
		p2 := v2.InterfaceData()[1]

		if p1 == 0 {
			t.Errorf("got p1=%v. want=not-%v", p1, nil)
		}

		if p2 == 0 {
			t.Errorf("got p2=%v. want=not-%v", p2, nil)
		}
	}
}

type StructI int

func (i StructI) Get() int { return int(i) }

type StructIPtr int

func (i *StructIPtr) Get() int  { return int(*i) }
func (i *StructIPtr) Set(v int) { *(*int)(i) = v }

type SettableStruct struct {
	SettableField int
}

func (p *SettableStruct) Set(v int) { p.SettableField = v }

type SettablePointer struct {
	SettableField *int
}

func (p *SettablePointer) Set(v int) { *p.SettableField = v }

func TestStructOfWithInterface(t *testingT) {
	const want = 42
	type Iface interface {
		Get() int
	}
	type IfaceSet interface {
		Set(int)
	}
	tests := []struct {
		name string
		typ  Type
		val  Value
		impl bool
	}{
		{
			name: "StructI",
			typ:  TypeOf(StructI(want)),
			val:  ValueOf(StructI(want)),
			impl: true,
		},
		{
			name: "StructI",
			typ:  PointerTo(TypeOf(StructI(want))),
			val: ValueOf(func() any {
				v := StructI(want)
				return &v
			}()),
			impl: true,
		},
		{
			name: "StructIPtr",
			typ:  PointerTo(TypeOf(StructIPtr(want))),
			val: ValueOf(func() any {
				v := StructIPtr(want)
				return &v
			}()),
			impl: true,
		},
		{
			name: "StructIPtr",
			typ:  TypeOf(StructIPtr(want)),
			val:  ValueOf(StructIPtr(want)),
			impl: false,
		},
		// {
		//	typ:  TypeOf((*Iface)(nil)).Elem(), // FIXME(sbinet): fix method.ifn/tfn
		//	val:  ValueOf(StructI(want)),
		//	impl: true,
		// },
	}

	for i, table := range tests {
		for j := 0; j < 2; j++ {
			var fields []StructField
			if j == 1 {
				fields = append(fields, StructField{
					Name:    "Dummy",
					PkgPath: "",
					Type:    TypeOf(int(0)),
				})
			}
			fields = append(fields, StructField{
				Name:      table.name,
				Anonymous: true,
				PkgPath:   "",
				Type:      table.typ,
			})

			// We currently do not correctly implement methods
			// for embedded fields other than the first.
			// Therefore, for now, we expect those methods
			// to not exist.  See issues 15924 and 20824.
			// When those issues are fixed, this test of panic
			// should be removed.
			if j == 1 && table.impl {
				func() {
					defer func() {
						if err := recover(); err == nil {
							t.Errorf("test-%d-%d did not panic", i, j)
						}
					}()
					_ = StructOf(fields)
				}()
				continue
			}

			rt := StructOf(fields)
			rv := New(rt).Elem()
			rv.Field(j).Set(table.val)

			if _, ok := rv.Interface().(Iface); ok != table.impl {
				if table.impl {
					t.Errorf("test-%d-%d: type=%v fails to implement Iface.\n", i, j, table.typ)
				} else {
					t.Errorf("test-%d-%d: type=%v should NOT implement Iface\n", i, j, table.typ)
				}
				continue
			}

			if !table.impl {
				continue
			}

			v := rv.Interface().(Iface).Get()
			if v != want {
				t.Errorf("test-%d-%d: x.Get()=%v. want=%v\n", i, j, v, want)
			}

			fct := rv.MethodByName("Get")
			out := fct.Call(nil)
			if !DeepEqual(out[0].Interface(), want) {
				t.Errorf("test-%d-%d: x.Get()=%v. want=%v\n", i, j, out[0].Interface(), want)
			}
		}
	}

	// Test an embedded nil pointer with pointer methods.
	fields := []StructField{{
		Name:      "StructIPtr",
		Anonymous: true,
		Type:      PointerTo(TypeOf(StructIPtr(want))),
	}}
	rt := StructOf(fields)
	rv := New(rt).Elem()
	// This should panic since the pointer is nil.
	shouldPanic("", func() {
		rv.Interface().(IfaceSet).Set(want)
	})

	// Test an embedded nil pointer to a struct with pointer methods.

	fields = []StructField{{
		Name:      "SettableStruct",
		Anonymous: true,
		Type:      PointerTo(TypeOf(SettableStruct{})),
	}}
	rt = StructOf(fields)
	rv = New(rt).Elem()
	// This should panic since the pointer is nil.
	shouldPanic("", func() {
		rv.Interface().(IfaceSet).Set(want)
	})

	// The behavior is different if there is a second field,
	// since now an interface value holds a pointer to the struct
	// rather than just holding a copy of the struct.
	fields = []StructField{
		{
			Name:      "SettableStruct",
			Anonymous: true,
			Type:      PointerTo(TypeOf(SettableStruct{})),
		},
		{
			Name:      "EmptyStruct",
			Anonymous: true,
			Type:      StructOf(nil),
		},
	}
	// With the current implementation this is expected to panic.
	// Ideally it should work and we should be able to see a panic
	// if we call the Set method.
	shouldPanic("", func() {
		StructOf(fields)
	})

	// Embed a field that can be stored directly in an interface,
	// with a second field.
	fields = []StructField{
		{
			Name:      "SettablePointer",
			Anonymous: true,
			Type:      TypeOf(SettablePointer{}),
		},
		{
			Name:      "EmptyStruct",
			Anonymous: true,
			Type:      StructOf(nil),
		},
	}
	// With the current implementation this is expected to panic.
	// Ideally it should work and we should be able to call the
	// Set and Get methods.
	shouldPanic("", func() {
		StructOf(fields)
	})
}

func TestStructOfTooManyFields(t *testingT) {
	// Bug Fix: #25402 - this should not panic
	tt := StructOf([]StructField{
		{Name: "Time", Type: TypeOf(time.Time{}), Anonymous: true},
	})

	if _, present := tt.MethodByName("After"); !present {
		t.Errorf("Expected method `After` to be found")
	}
}

func TestStructOfDifferentPkgPath(t *testingT) {
	fields := []StructField{
		{
			Name:    "f1",
			PkgPath: "p1",
			Type:    TypeOf(int(0)),
		},
		{
			Name:    "f2",
			PkgPath: "p2",
			Type:    TypeOf(int(0)),
		},
	}
	shouldPanic("different PkgPath", func() {
		StructOf(fields)
	})
}

func TestStructOfTooLarge(t *testingT) {
	t1 := TypeOf(byte(0))
	t2 := TypeOf(int16(0))
	t4 := TypeOf(int32(0))
	t0 := ArrayOf(0, t1)

	// 2^64-3 sized type (or 2^32-3 on 32-bit archs)
	bigType := StructOf([]StructField{
		{Name: "F1", Type: ArrayOf(int(^uintptr(0)>>1), t1)},
		{Name: "F2", Type: ArrayOf(int(^uintptr(0)>>1-1), t1)},
	})

	type test struct {
		shouldPanic bool
		fields      []StructField
	}

	tests := [...]test{
		{
			shouldPanic: false, // 2^64-1, ok
			fields: []StructField{
				{Name: "F1", Type: bigType},
				{Name: "F2", Type: ArrayOf(2, t1)},
			},
		},
		{
			shouldPanic: true, // overflow in total size
			fields: []StructField{
				{Name: "F1", Type: bigType},
				{Name: "F2", Type: ArrayOf(3, t1)},
			},
		},
		{
			shouldPanic: true, // overflow while aligning F2
			fields: []StructField{
				{Name: "F1", Type: bigType},
				{Name: "F2", Type: t4},
			},
		},
		{
			shouldPanic: true, // overflow while adding trailing byte for zero-sized fields
			fields: []StructField{
				{Name: "F1", Type: bigType},
				{Name: "F2", Type: ArrayOf(2, t1)},
				{Name: "F3", Type: t0},
			},
		},
		{
			shouldPanic: true, // overflow while aligning total size
			fields: []StructField{
				{Name: "F1", Type: t2},
				{Name: "F2", Type: bigType},
			},
		},
	}

	for i, tt := range tests {
		func() {
			defer func() {
				err := recover()
				if !tt.shouldPanic {
					if err != nil {
						t.Errorf("test %d should not panic, got %s", i, err)
					}
					return
				}
				if err == nil {
					t.Errorf("test %d expected to panic", i)
					return
				}
				s := fmt.Sprintf("%s", err)
				if s != "reflect.StructOf: struct size would exceed virtual address space" {
					t.Errorf("test %d wrong panic message: %s", i, s)
					return
				}
			}()
			_ = StructOf(tt.fields)
		}()
	}
}

type D1 struct {
	d int
}
type D2 struct {
	d int
}

func TestStructOfAnonymous(t *testingT) {
	var s any = struct{ D1 }{}
	f := TypeOf(s).Field(0)
	ds := StructOf([]StructField{f})
	st := TypeOf(s)
	dt := New(ds).Elem()
	if st != dt.Type() {
		t.Errorf("StructOf returned %s, want %s", dt.Type(), st)
	}

	// This should not panic.
	_ = dt.Interface().(struct{ D1 })
}

func TestFuncOf(t *testingT) {
	// check construction and use of type not in binary
	type K string
	type V float64

	fn := func(args []Value) []Value {
		if len(args) != 1 {
			t.Errorf("args == %v, want exactly one arg", args)
		} else if args[0].Type() != TypeOf(K("")) {
			t.Errorf("args[0] is type %v, want %v", args[0].Type(), TypeOf(K("")))
		} else if args[0].String() != "gopher" {
			t.Errorf("args[0] = %q, want %q", args[0].String(), "gopher")
		}
		return []Value{ValueOf(V(3.14))}
	}
	v := MakeFunc(FuncOf([]Type{TypeOf(K(""))}, []Type{TypeOf(V(0))}, false), fn)

	outs := v.Call([]Value{ValueOf(K("gopher"))})
	if len(outs) != 1 {
		t.Fatalf("v.Call returned %v, want exactly one result", outs)
	} else if outs[0].Type() != TypeOf(V(0)) {
		t.Fatalf("c.Call[0] is type %v, want %v", outs[0].Type(), TypeOf(V(0)))
	}
	f := outs[0].Float()
	if f != 3.14 {
		t.Errorf("constructed func returned %f, want %f", f, 3.14)
	}

	// check that types already in binary are found
	type T1 int
	testCases := []struct {
		in, out  []Type
		variadic bool
		want     any
	}{
		{in: []Type{TypeOf(T1(0))}, want: (func(T1))(nil)},
		{in: []Type{TypeOf(int(0))}, want: (func(int))(nil)},
		{in: []Type{SliceOf(TypeOf(int(0)))}, variadic: true, want: (func(...int))(nil)},
		{in: []Type{TypeOf(int(0))}, out: []Type{TypeOf(false)}, want: (func(int) bool)(nil)},
		{in: []Type{TypeOf(int(0))}, out: []Type{TypeOf(false), TypeOf("")}, want: (func(int) (bool, string))(nil)},
	}
	for _, tt := range testCases {
		checkSameType(t, FuncOf(tt.in, tt.out, tt.variadic), tt.want)
	}

	// check that variadic requires last element be a slice.
	FuncOf([]Type{TypeOf(1), TypeOf(""), SliceOf(TypeOf(false))}, nil, true)
	shouldPanic("must be slice", func() { FuncOf([]Type{TypeOf(0), TypeOf(""), TypeOf(false)}, nil, true) })
	shouldPanic("must be slice", func() { FuncOf(nil, nil, true) })

	//testcase for  #54669
	var in []Type
	for i := 0; i < 51; i++ {
		in = append(in, TypeOf(1))
	}
	FuncOf(in, nil, false)
}

/*
func TestChanOf(t *testingT) {
	// check construction and use of type not in binary
	type T string
	ct := ChanOf(BothDir, TypeOf(T("")))
	v := MakeChan(ct, 2)
	runtime.GC()
	v.Send(ValueOf(T("hello")))
	runtime.GC()
	v.Send(ValueOf(T("world")))
	runtime.GC()

	sv1, _ := v.Recv()
	sv2, _ := v.Recv()
	s1 := sv1.String()
	s2 := sv2.String()
	if s1 != "hello" || s2 != "world" {
		t.Errorf("constructed chan: have %q, %q, want %q, %q", s1, s2, "hello", "world")
	}

	// check that type already in binary is found
	type T1 int
	checkSameType(t, ChanOf(BothDir, TypeOf(T1(1))), (chan T1)(nil))

	// Check arrow token association in undefined chan types.
	var left chan<- chan T
	var right chan (<-chan T)
	tLeft := ChanOf(SendDir, ChanOf(BothDir, TypeOf(T(""))))
	tRight := ChanOf(BothDir, ChanOf(RecvDir, TypeOf(T(""))))
	if tLeft != TypeOf(left) {
		t.Errorf("chan<-chan: have %s, want %T", tLeft, left)
	}
	if tRight != TypeOf(right) {
		t.Errorf("chan<-chan: have %s, want %T", tRight, right)
	}
}
*/

func TestChanOfDir(t *testingT) {
	// check construction and use of type not in binary
	type T string
	crt := ChanOf(RecvDir, TypeOf(T("")))
	cst := ChanOf(SendDir, TypeOf(T("")))

	// check that type already in binary is found
	type T1 int
	checkSameType(t, ChanOf(RecvDir, TypeOf(T1(1))), (<-chan T1)(nil))
	checkSameType(t, ChanOf(SendDir, TypeOf(T1(1))), (chan<- T1)(nil))

	// check String form of ChanDir
	if crt.ChanDir().String() != "<-chan" {
		t.Errorf("chan dir: have %q, want %q", crt.ChanDir().String(), "<-chan")
	}
	if cst.ChanDir().String() != "chan<-" {
		t.Errorf("chan dir: have %q, want %q", cst.ChanDir().String(), "chan<-")
	}
}

/*
func TestChanOfGC(t *testingT) {
	done := make(chan bool, 1)
	go func() {
		select {
		case <-done:
		case <-time.After(5 * time.Second):
			panic("deadlock in TestChanOfGC")
		}
	}()

	defer func() {
		done <- true
	}()

	type T *uintptr
	tt := TypeOf(T(nil))
	ct := ChanOf(BothDir, tt)

	// NOTE: The garbage collector handles allocated channels specially,
	// so we have to save pointers to channels in x; the pointer code will
	// use the gc info in the newly constructed chan type.
	const n = 100
	var x []any
	for i := 0; i < n; i++ {
		v := MakeChan(ct, n)
		for j := 0; j < n; j++ {
			p := new(uintptr)
			*p = uintptr(i*n + j)
			v.Send(ValueOf(p).Convert(tt))
		}
		pv := New(ct)
		pv.Elem().Set(v)
		x = append(x, pv.Interface())
	}
	runtime.GC()

	for i, xi := range x {
		v := ValueOf(xi).Elem()
		for j := 0; j < n; j++ {
			pv, _ := v.Recv()
			k := pv.Elem().Interface()
			if k != uintptr(i*n+j) {
				t.Errorf("lost x[%d][%d] = %d, want %d", i, j, k, i*n+j)
			}
		}
	}
}
*/

func shouldPanic(expect string, f func()) {
	defer func() {
		r := recover()
		if r == nil {
			panic("did not panic")
		}
		if expect != "" {
			var s string
			switch r := r.(type) {
			case string:
				s = r
			case *ValueError:
				s = r.Error()
			default:
				panic(fmt.Sprintf("panicked with unexpected type %T", r))
			}
			if !strings.HasPrefix(s, "reflect") {
				panic(`panic string does not start with "reflect": ` + s)
			}
			if !strings.Contains(s, expect) {
				panic(`panic string does not contain "` + expect + `": ` + s)
			}
		}
	}()
	f()
}
