package tuple

type Tuple[T any] struct {
	V T
}

func T[T any](v T) Tuple[T] {
	return Tuple[T]{V: v}
}

func (t Tuple[T]) Get() T {
	return t.V
}

type Tuple2[T1 any, T2 any] struct {
	V1 T1
	V2 T2
}

func T2[T1 any, T2 any](v1 T1, v2 T2) Tuple2[T1, T2] {
	return Tuple2[T1, T2]{V1: v1, V2: v2}
}

func (t Tuple2[T1, T2]) Get() (T1, T2) {
	return t.V1, t.V2
}

type Tuple3[T1 any, T2 any, T3 any] struct {
	V1 T1
	V2 T2
	V3 T3
}

func T3[T1 any, T2 any, T3 any](v1 T1, v2 T2, v3 T3) Tuple3[T1, T2, T3] {
	return Tuple3[T1, T2, T3]{V1: v1, V2: v2, V3: v3}
}

func (t Tuple3[T1, T2, T3]) Get() (T1, T2, T3) {
	return t.V1, t.V2, t.V3
}
