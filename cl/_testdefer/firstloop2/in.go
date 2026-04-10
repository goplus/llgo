// LITTEST
package foo

// CHECK-LINE: {{ *}}0: always
// CHECK-NEXT: {{ *}}1: loop
// CHECK-NEXT: {{ *}}2: loop
// CHECK-NEXT: {{ *}}3: always
func Loop() {
	for i := 0; i < 3; i++ {
		println(i)
	}
}
