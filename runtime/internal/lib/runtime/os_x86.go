// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build 386 || amd64

package runtime

/*
#include <stdint.h>
#include <cpuid.h>

static inline int has_rdtscp(void) {
    unsigned int eax, ebx, ecx, edx;
    if (__get_cpuid_max(0x80000001, NULL) >= 0x80000001) {
        __cpuid(0x80000001, eax, ebx, ecx, edx);
        return (edx >> 27) & 1; // Check RDTSCP bit
    }
    return 0;
}

static inline int64_t read_tsc(void) {
    uint32_t hi, lo;
    if (has_rdtscp()) {
        unsigned int aux;
        __asm__ __volatile__ ("rdtscp" : "=a"(lo), "=d"(hi), "=c"(aux));
    } else {
        __asm__ __volatile__ (
            "mfence\n\t"
            "lfence\n\t"
            "rdtsc" : "=a"(lo), "=d"(hi)
        );
    }
    return ((int64_t)hi << 32) | lo;
}
*/
import "C"

// cputicks returns the current value of the TSC (Time Stamp Counter) on x86/x86-64.
//
//go:nosplit
func cputicks() int64 {
	return int64(C.read_tsc())
}
