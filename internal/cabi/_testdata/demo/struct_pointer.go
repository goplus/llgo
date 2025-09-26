package main

import "unsafe"

const (
	LLGoFiles = "../wrap/struct_pointer.c"
)

type pointer = *int8

//go:linkname printf C.printf
func printf(format *byte, __llgo_va_list ...any) int32

func assert(info string, b bool) {
	if !b {
		printf(unsafe.StringData("Assertion failed: %s\n\000"), unsafe.StringData(info))
	}
}

func main() {
}

type point1 struct {
	x0 pointer
}

//go:linkname cdemo1 C.demo1
func cdemo1(a point1) point1

func demo1(a point1) point1 {
	return a
}

func init() {
	a := point1{func() pointer { var a int8 = 1; return &a}()}
	assert("cdemo1\000", cdemo1(a) == a)
	assert("demo1\000", demo1(a) == a)
}

type point2 struct {
	x0 pointer
	x1 pointer
}

//go:linkname cdemo2 C.demo2
func cdemo2(a point2) point2

func demo2(a point2) point2 {
	return a
}

func init() {
	a := point2{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}()}
	assert("cdemo2\000", cdemo2(a) == a)
	assert("demo2\000", demo2(a) == a)
}

type point3 struct {
	x0 pointer
	x1 pointer
	x2 pointer
}

//go:linkname cdemo3 C.demo3
func cdemo3(a point3) point3

func demo3(a point3) point3 {
	return a
}

func init() {
	a := point3{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}()}
	assert("cdemo3\000", cdemo3(a) == a)
	assert("demo3\000", demo3(a) == a)
}

type point4 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
}

//go:linkname cdemo4 C.demo4
func cdemo4(a point4) point4

func demo4(a point4) point4 {
	return a
}

func init() {
	a := point4{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}()}
	assert("cdemo4\000", cdemo4(a) == a)
	assert("demo4\000", demo4(a) == a)
}

type point5 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
}

//go:linkname cdemo5 C.demo5
func cdemo5(a point5) point5

func demo5(a point5) point5 {
	return a
}

func init() {
	a := point5{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}()}
	assert("cdemo5\000", cdemo5(a) == a)
	assert("demo5\000", demo5(a) == a)
}

type point6 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
}

//go:linkname cdemo6 C.demo6
func cdemo6(a point6) point6

func demo6(a point6) point6 {
	return a
}

func init() {
	a := point6{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}()}
	assert("cdemo6\000", cdemo6(a) == a)
	assert("demo6\000", demo6(a) == a)
}

type point7 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
}

//go:linkname cdemo7 C.demo7
func cdemo7(a point7) point7

func demo7(a point7) point7 {
	return a
}

func init() {
	a := point7{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}()}
	assert("cdemo7\000", cdemo7(a) == a)
	assert("demo7\000", demo7(a) == a)
}

type point8 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
}

//go:linkname cdemo8 C.demo8
func cdemo8(a point8) point8

func demo8(a point8) point8 {
	return a
}

func init() {
	a := point8{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}()}
	assert("cdemo8\000", cdemo8(a) == a)
	assert("demo8\000", demo8(a) == a)
}

type point9 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
}

//go:linkname cdemo9 C.demo9
func cdemo9(a point9) point9

func demo9(a point9) point9 {
	return a
}

func init() {
	a := point9{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}()}
	assert("cdemo9\000", cdemo9(a) == a)
	assert("demo9\000", demo9(a) == a)
}

type point10 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
}

//go:linkname cdemo10 C.demo10
func cdemo10(a point10) point10

func demo10(a point10) point10 {
	return a
}

func init() {
	a := point10{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}()}
	assert("cdemo10\000", cdemo10(a) == a)
	assert("demo10\000", demo10(a) == a)
}

type point11 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
}

//go:linkname cdemo11 C.demo11
func cdemo11(a point11) point11

func demo11(a point11) point11 {
	return a
}

func init() {
	a := point11{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}()}
	assert("cdemo11\000", cdemo11(a) == a)
	assert("demo11\000", demo11(a) == a)
}

type point12 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
}

//go:linkname cdemo12 C.demo12
func cdemo12(a point12) point12

func demo12(a point12) point12 {
	return a
}

func init() {
	a := point12{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}()}
	assert("cdemo12\000", cdemo12(a) == a)
	assert("demo12\000", demo12(a) == a)
}

type point13 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
}

//go:linkname cdemo13 C.demo13
func cdemo13(a point13) point13

func demo13(a point13) point13 {
	return a
}

func init() {
	a := point13{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}()}
	assert("cdemo13\000", cdemo13(a) == a)
	assert("demo13\000", demo13(a) == a)
}

type point14 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
}

//go:linkname cdemo14 C.demo14
func cdemo14(a point14) point14

func demo14(a point14) point14 {
	return a
}

func init() {
	a := point14{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}()}
	assert("cdemo14\000", cdemo14(a) == a)
	assert("demo14\000", demo14(a) == a)
}

type point15 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
	x14 pointer
}

//go:linkname cdemo15 C.demo15
func cdemo15(a point15) point15

func demo15(a point15) point15 {
	return a
}

func init() {
	a := point15{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}(), func() pointer { var a int8 = 15; return &a}()}
	assert("cdemo15\000", cdemo15(a) == a)
	assert("demo15\000", demo15(a) == a)
}

type point16 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
	x14 pointer
	x15 pointer
}

//go:linkname cdemo16 C.demo16
func cdemo16(a point16) point16

func demo16(a point16) point16 {
	return a
}

func init() {
	a := point16{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}(), func() pointer { var a int8 = 15; return &a}(), func() pointer { var a int8 = 16; return &a}()}
	assert("cdemo16\000", cdemo16(a) == a)
	assert("demo16\000", demo16(a) == a)
}

type point17 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
	x14 pointer
	x15 pointer
	x16 pointer
}

//go:linkname cdemo17 C.demo17
func cdemo17(a point17) point17

func demo17(a point17) point17 {
	return a
}

func init() {
	a := point17{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}(), func() pointer { var a int8 = 15; return &a}(), func() pointer { var a int8 = 16; return &a}(), func() pointer { var a int8 = 17; return &a}()}
	assert("cdemo17\000", cdemo17(a) == a)
	assert("demo17\000", demo17(a) == a)
}

type point18 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
	x14 pointer
	x15 pointer
	x16 pointer
	x17 pointer
}

//go:linkname cdemo18 C.demo18
func cdemo18(a point18) point18

func demo18(a point18) point18 {
	return a
}

func init() {
	a := point18{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}(), func() pointer { var a int8 = 15; return &a}(), func() pointer { var a int8 = 16; return &a}(), func() pointer { var a int8 = 17; return &a}(), func() pointer { var a int8 = 18; return &a}()}
	assert("cdemo18\000", cdemo18(a) == a)
	assert("demo18\000", demo18(a) == a)
}

type point19 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
	x14 pointer
	x15 pointer
	x16 pointer
	x17 pointer
	x18 pointer
}

//go:linkname cdemo19 C.demo19
func cdemo19(a point19) point19

func demo19(a point19) point19 {
	return a
}

func init() {
	a := point19{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}(), func() pointer { var a int8 = 15; return &a}(), func() pointer { var a int8 = 16; return &a}(), func() pointer { var a int8 = 17; return &a}(), func() pointer { var a int8 = 18; return &a}(), func() pointer { var a int8 = 19; return &a}()}
	assert("cdemo19\000", cdemo19(a) == a)
	assert("demo19\000", demo19(a) == a)
}

type point20 struct {
	x0 pointer
	x1 pointer
	x2 pointer
	x3 pointer
	x4 pointer
	x5 pointer
	x6 pointer
	x7 pointer
	x8 pointer
	x9 pointer
	x10 pointer
	x11 pointer
	x12 pointer
	x13 pointer
	x14 pointer
	x15 pointer
	x16 pointer
	x17 pointer
	x18 pointer
	x19 pointer
}

//go:linkname cdemo20 C.demo20
func cdemo20(a point20) point20

func demo20(a point20) point20 {
	return a
}

func init() {
	a := point20{func() pointer { var a int8 = 1; return &a}(), func() pointer { var a int8 = 2; return &a}(), func() pointer { var a int8 = 3; return &a}(), func() pointer { var a int8 = 4; return &a}(), func() pointer { var a int8 = 5; return &a}(), func() pointer { var a int8 = 6; return &a}(), func() pointer { var a int8 = 7; return &a}(), func() pointer { var a int8 = 8; return &a}(), func() pointer { var a int8 = 9; return &a}(), func() pointer { var a int8 = 10; return &a}(), func() pointer { var a int8 = 11; return &a}(), func() pointer { var a int8 = 12; return &a}(), func() pointer { var a int8 = 13; return &a}(), func() pointer { var a int8 = 14; return &a}(), func() pointer { var a int8 = 15; return &a}(), func() pointer { var a int8 = 16; return &a}(), func() pointer { var a int8 = 17; return &a}(), func() pointer { var a int8 = 18; return &a}(), func() pointer { var a int8 = 19; return &a}(), func() pointer { var a int8 = 20; return &a}()}
	assert("cdemo20\000", cdemo20(a) == a)
	assert("demo20\000", demo20(a) == a)
}
