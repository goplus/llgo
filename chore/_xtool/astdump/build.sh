export LLVM_DIR=/opt/homebrew/Cellar/llvm@17/17.0.6
clang -L$LLVM_DIR/lib -lclang -lc++ -I$LLVM_DIR/include astdump.cpp
