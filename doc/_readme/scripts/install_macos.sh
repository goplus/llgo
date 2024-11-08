# shellcheck disable=all
brew update
brew install llvm@18 pkg-config bdw-gc openssl cjson
brew install python@3.12 # optional
go install -v github.com/goplus/llgo/cmd/llgo@latest