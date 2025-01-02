# shellcheck disable=all
echo "deb http://apt.llvm.org/$(lsb_release -cs)/ llvm-toolchain-$(lsb_release -cs)-18 main" | sudo tee /etc/apt/sources.list.d/llvm.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y llvm-18-dev clang-18 libclang-18-dev lld-18 pkg-config libgc-dev libssl-dev zlib1g-dev libcjson-dev libsqlite3-dev libunwind-dev
sudo apt-get install -y python3.12-dev # optional
go install -v github.com/goplus/llgo/cmd/llgo@latest