# shellcheck disable=all
brew update
brew install llvm@18 bdw-gc openssl cjson libffi pkg-config
brew install python@3.12 # optional
brew link --force libffi
go install -v github.com/goplus/llgo/cmd/llgo@latest
