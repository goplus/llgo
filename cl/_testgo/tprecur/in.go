// LITTEST
package main

// CHECK-LABEL: define {{.*}} @"{{.*}}/tprecur.main"{{.*}}
// CHECK: recursive"
// CHECK: ret void
func main() {
	recursive()
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/tprecur.recursive"{{.*}}
// CHECK: recur1[
// CHECK: Panic
// CHECK: ret void
func recursive() {
	type T int
	if got, want := recur1[T](5), T(110); got != want {
		panic("error")
	}
}

type Integer interface {
	~int | ~int32 | ~int64
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/tprecur.recur1[github.com/goplus/llgo/cl/_testgo/tprecur.T.1.0]"{{.*}}
// CHECK: recur2[
// CHECK: ret i64
func recur1[T Integer](n T) T {
	if n == 0 || n == 1 {
		return T(1)
	} else {
		return n * recur2(n-1)
	}
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/tprecur.recur2[github.com/goplus/llgo/cl/_testgo/tprecur.T.1.0]"{{.*}}
// CHECK: ret i64
func recur2[T Integer](n T) T {
	list := make([]T, n)
	for i, _ := range list {
		list[i] = T(i + 1)
	}
	var sum T
	for _, elt := range list {
		sum += elt
	}
	return sum + recur1(n-1)
}
