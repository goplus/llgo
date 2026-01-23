//go:build (386 || amd64 || arm || arm64 || loong64 || ppc64 || ppc64le || riscv64 || s390x) && !purego

package md5

const haveAsm = false

func block(dig *digest, p []byte) {
	blockGeneric(dig, p)
}
