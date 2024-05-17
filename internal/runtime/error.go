package runtime

type errorString string

func (e errorString) RuntimeError() {}

func (e errorString) Error() string {
	return "runtime error: " + string(e)
}

func AssertRuntimeError(b bool, msg string) {
	if b {
		panic(errorString(msg).Error())
	}
}

func AssertNegativeShift(b bool) {
	if b {
		panic(errorString("negative shift amount").Error())
	}
}

func AssertIndexRange(b bool) {
	if b {
		panic(errorString("index out of range").Error())
	}
}
