Type Mapping between C and Go
=====

| C type | Go Type | Note |
| ---- | ---- | ---- |
| char | c.Char | int8 |
| short | int16 | |
| int | c.Int | |
| long | c.Long | |
| long long | int64 | c.LongLong |
| unsigned char | byte | uint8 |
| unsigned short | uint16 | |
| unsigned int | c.Uint | |
| unsigned long | c.Ulong | |
| unsigned long long | uint64 | c.UlongLong |
| size_t | uintptr | |
| ssize_t | int | sizeof(int) = sizeof(uint) = sizeof(uintptr) in Go |
| float | float32 | c.Float |
| double | float64 | c.Double |
| complex float | complex64 |
| complex double | complex128 |
| void* | c.Pointer | |
| T* | *T | |
| T[] (in parameter) | *T |  |
| T[N] (in parameter) | *T | fake array |
| T[N] (in struct) | [N]T | array |
| func ptr (in parameter) | func | LLGo knows `func ptr` in C function parameters is `func ptr` not `closure` |
| func ptr (in struct) | c.Pointer | C `func ptr` not Go `func()` |
| struct | struct | |
