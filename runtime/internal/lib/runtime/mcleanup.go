package runtime

func AddCleanup[T, S any](ptr *T, cleanup func(S), arg S) Cleanup {
	// TODO
	return Cleanup{}
}

type Cleanup struct {
}

func (c Cleanup) Stop() {}
