# shellcheck disable=all
brew update
brew install llvm@22 bdw-gc openssl cjson libffi libuv pkg-config
brew install python@3.12 # optional
brew link --force --overwrite llvm@22 libffi
if [[ "$(uname -m)" != arm64 ]]; then
    brew install lld@22
    brew link --force --overwrite lld@22
fi
# install.sh also provisions lld@23 for macOS arm64 source installs.
./install.sh
