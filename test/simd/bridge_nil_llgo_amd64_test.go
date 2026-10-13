//go:build goexperiment.simd && llgo && amd64

package simd_test

import (
	"simd/archsimd"
	"testing"
)

func TestSIMDBridgeMaskedStoreNil(t *testing.T) {
	defer func() {
		if recover() == nil {
			t.Fatal("active masked nil store did not panic")
		}
	}()
	archsimd.BroadcastUint32x4(1).StoreArrayMasked(nil, archsimd.Mask32x4FromBits(1))
}
