package runtime

type errorString string

func (e errorString) RuntimeError() {}

func (e errorString) Error() string {
	return "runtime error: " + string(e)
}

func CheckRuntimeError(b bool, s string) {
	if b {
		panic(errorString(s).Error())
	}
}
