# shellcheck disable=all
DIR=$(cd "$(dirname "$0")" && pwd)
brew update
brew install llvm@19 lld@19 bdw-gc openssl cjson libffi libuv pkg-config
brew install python@3.12 # optional
brew link --overwrite lld@19 libffi
# curl https://raw.githubusercontent.com/goplus/llgo/refs/heads/main/install.sh | bash
cat ${DIR}/../../../install.sh | bash
