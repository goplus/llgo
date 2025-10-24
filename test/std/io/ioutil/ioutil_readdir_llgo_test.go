//go:build llgo

package ioutil_test

import "testing"

func TestReadDir(t *testing.T) {
	t.Skip("TODO(llgo#os-readdir): os.File.Readdir not implemented")
}
