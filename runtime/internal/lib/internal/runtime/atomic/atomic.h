/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#pragma once

#include <stdint.h>
#include <stdbool.h>

// Load operations
uint32_t atomic_Load(uint32_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

void *atomic_Loadp(void **ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

uint64_t atomic_Load64(uint64_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

uintptr_t atomic_Loaduintptr(uintptr_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

uint32_t atomic_LoadAcq(uint32_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_ACQUIRE);
}

uint64_t atomic_LoadAcq64(uint64_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_ACQUIRE);
}

uintptr_t atomic_LoadAcquintptr(uintptr_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_ACQUIRE);
}

uint8_t atomic_Load8(uint8_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

uintptr_t atomic_Loaduint(uintptr_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

int32_t atomic_Loadint32(int32_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

int64_t atomic_Loadint64(int64_t *ptr)
{
    return __atomic_load_n(ptr, __ATOMIC_SEQ_CST);
}

// Add operations
uint32_t atomic_Xadd(uint32_t *ptr, int32_t delta)
{
    return __atomic_fetch_add(ptr, delta, __ATOMIC_SEQ_CST);
}

uint64_t atomic_Xadd64(uint64_t *ptr, int64_t delta)
{
    return __atomic_fetch_add(ptr, delta, __ATOMIC_SEQ_CST);
}

uintptr_t atomic_Xadduintptr(uintptr_t *ptr, uintptr_t delta)
{
    return __atomic_fetch_add(ptr, delta, __ATOMIC_SEQ_CST);
}

int32_t atomic_Xaddint32(int32_t *ptr, int32_t delta)
{
    return __atomic_fetch_add(ptr, delta, __ATOMIC_SEQ_CST);
}

int64_t atomic_Xaddint64(int64_t *ptr, int64_t delta)
{
    return __atomic_fetch_add(ptr, delta, __ATOMIC_SEQ_CST);
}

// Exchange operations
uint32_t atomic_Xchg(uint32_t *ptr, uint32_t v)
{
    uint32_t old;
    __atomic_exchange(ptr, &v, &old, __ATOMIC_SEQ_CST);
    return old;
}

uint64_t atomic_Xchg64(uint64_t *ptr, uint64_t v)
{
    uint64_t old;
    __atomic_exchange(ptr, &v, &old, __ATOMIC_SEQ_CST);
    return old;
}

uintptr_t atomic_Xchguintptr(uintptr_t *ptr, uintptr_t v)
{
    uintptr_t old;
    __atomic_exchange(ptr, &v, &old, __ATOMIC_SEQ_CST);
    return old;
}

int32_t atomic_Xchgint32(int32_t *ptr, int32_t v)
{
    int32_t old;
    __atomic_exchange(ptr, &v, &old, __ATOMIC_SEQ_CST);
    return old;
}

int64_t atomic_Xchgint64(int64_t *ptr, int64_t v)
{
    int64_t old;
    __atomic_exchange(ptr, &v, &old, __ATOMIC_SEQ_CST);
    return old;
}

// Bitwise operations
void atomic_And8(uint8_t *ptr, uint8_t val)
{
    __atomic_and_fetch(ptr, val, __ATOMIC_SEQ_CST);
}

void atomic_Or8(uint8_t *ptr, uint8_t val)
{
    __atomic_or_fetch(ptr, val, __ATOMIC_SEQ_CST);
}

void atomic_And(uint32_t *ptr, uint32_t val)
{
    __atomic_and_fetch(ptr, val, __ATOMIC_SEQ_CST);
}

void atomic_Or(uint32_t *ptr, uint32_t val)
{
    __atomic_or_fetch(ptr, val, __ATOMIC_SEQ_CST);
}

uint32_t atomic_And32(uint32_t *ptr, uint32_t val)
{
    return __atomic_fetch_and(ptr, val, __ATOMIC_SEQ_CST);
}

uint32_t atomic_Or32(uint32_t *ptr, uint32_t val)
{
    return __atomic_fetch_or(ptr, val, __ATOMIC_SEQ_CST);
}

uint64_t atomic_And64(uint64_t *ptr, uint64_t val)
{
    return __atomic_fetch_and(ptr, val, __ATOMIC_SEQ_CST);
}

uint64_t atomic_Or64(uint64_t *ptr, uint64_t val)
{
    return __atomic_fetch_or(ptr, val, __ATOMIC_SEQ_CST);
}

uintptr_t atomic_Anduintptr(uintptr_t *ptr, uintptr_t val)
{
    return __atomic_fetch_and(ptr, val, __ATOMIC_SEQ_CST);
}

uintptr_t atomic_Oruintptr(uintptr_t *ptr, uintptr_t val)
{
    return __atomic_fetch_or(ptr, val, __ATOMIC_SEQ_CST);
}

// Compare and swap operations
bool atomic_Cas(uint32_t *ptr, uint32_t old, uint32_t v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

bool atomic_Casp1(void **ptr, void *old, void *v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

bool atomic_Casint32(int32_t *ptr, int32_t old, int32_t v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

bool atomic_Casint64(int64_t *ptr, int64_t old, int64_t v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

bool atomic_Casuintptr(uintptr_t *ptr, uintptr_t old, uintptr_t v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

bool atomic_Cas64(uint64_t *ptr, uint64_t old, uint64_t v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
}

bool atomic_CasRel(uint32_t *ptr, uint32_t old, uint32_t v)
{
    return __atomic_compare_exchange_n(ptr, &old, v, false, __ATOMIC_RELEASE, __ATOMIC_RELAXED);
}

// Store operations
void atomic_Store(uint32_t *ptr, uint32_t val)
{
    __atomic_store_n(ptr, val, __ATOMIC_SEQ_CST);
}

void atomic_Store8(uint8_t *ptr, uint8_t val)
{
    __atomic_store_n(ptr, val, __ATOMIC_SEQ_CST);
}

void atomic_Store64(uint64_t *ptr, uint64_t val)
{
    __atomic_store_n(ptr, val, __ATOMIC_SEQ_CST);
}

void atomic_StoreRel(uint32_t *ptr, uint32_t val)
{
    __atomic_store_n(ptr, val, __ATOMIC_RELEASE);
}

void atomic_StoreRel64(uint64_t *ptr, uint64_t val)
{
    __atomic_store_n(ptr, val, __ATOMIC_RELEASE);
}

void atomic_StoreReluintptr(uintptr_t *ptr, uintptr_t val)
{
    __atomic_store_n(ptr, val, __ATOMIC_RELEASE);
}

void atomic_Storeint32(int32_t *ptr, int32_t v)
{
    __atomic_store_n(ptr, v, __ATOMIC_SEQ_CST);
}

void atomic_Storeint64(int64_t *ptr, int64_t v)
{
    __atomic_store_n(ptr, v, __ATOMIC_SEQ_CST);
}

void atomic_Storeuintptr(uintptr_t *ptr, uintptr_t v)
{
    __atomic_store_n(ptr, v, __ATOMIC_SEQ_CST);
}

void atomic_StorepNoWB(void **ptr, void *val)
{
    __atomic_store_n(ptr, val, __ATOMIC_SEQ_CST);
}