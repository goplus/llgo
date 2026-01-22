//go:build !llgo || !darwin

package unique

import _ "unsafe"

//go:linkname runtime_registerUniqueMapCleanup
func runtime_registerUniqueMapCleanup(cleanup func()) {
}
