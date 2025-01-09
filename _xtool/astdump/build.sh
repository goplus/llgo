export LLVM_DIR=$(llvm-config --prefix)
clang -L$LLVM_DIR/lib -lclang -lc++ -I$LLVM_DIR/include astdump.cpp
