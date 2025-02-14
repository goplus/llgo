package godebug

func setUpdate(update func(string, string)) {
	println("todo: godebug.setUpdate")
}

func registerMetric(name string, read func() uint64) {
	println("todo: godebug.registerMetric")
}

func setNewIncNonDefault(newIncNonDefault func(string) func()) {
	println("todo: godebug.setNewIncNonDefault")
}
