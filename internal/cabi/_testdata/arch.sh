#!/bin/sh
mkdir -p arch/amd64
mkdir -p arch/arm64
mkdir -p arch/i386
mkdir -p arch/armv6
mkdir -p arch/riscv64
mkdir -p arch/wasm32
(cd arch/amd64 && clang -target amd64-unknown-linux-gnu -S -emit-llvm ../../wrap/*.c)
(cd arch/arm64 && clang -target aarch64-linux-gnu  -S -emit-llvm ../../wrap/*.c)
(cd arch/i386 && clang -target i386-unknown-linux-gnu  -S -emit-llvm ../../wrap/*.c)
(cd arch/armv6 && clang -target armv6l-unknown-linux-gnueabihf  -S -emit-llvm ../../wrap/*.c)
(cd arch/riscv64 && clang -target riscv64-unknown-elf  -S -emit-llvm ../../wrap/*.c)
(cd arch/wasm32 && clang -target wasm32-unknown-emscripten  -S -emit-llvm ../../wrap/*.c)