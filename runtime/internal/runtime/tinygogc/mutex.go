package tinygogc

// TODO(MeteorsLiu): mutex lock for baremetal GC
type mutex struct{}

func lock(m *mutex) {}

func unlock(m *mutex) {}
