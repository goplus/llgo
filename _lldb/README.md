## LLGo Plugin of LLDB

### Build with debug info

```shell
LLGO_DEBUG=1 llgo build -o cl/_testdata/debug/out ./cl/_testdata/debug
```

### Debug with lldb

```shell
_lldb/runlldb.sh ./cl/_testdata/debug/out
```

or

```shell
/opt/homebrew/bin/lldb -O "command script import _lldb/llgo_plugin.py" ./cl/_testdata/debug/out
# github.com/goplus/llgo/cl/_testdata/debug
Breakpoint 1: no locations (pending).
Breakpoint set in dummy target, will get copied into future targets.
(lldb) command script import _lldb/llgo_plugin.py
(lldb) target create "./cl/_testdata/debug/out"
Current executable set to '/Users/lijie/source/goplus/llgo/cl/_testdata/debug/out' (arm64).
(lldb) r
Process 21992 launched: '/Users/lijie/source/goplus/llgo/cl/_testdata/debug/out' (arm64)
globalInt: 301
s: 0x100123e40
0x100123be0
5 8
called function with struct
1 2 3 4 5 6 7 8 9 10 +1.100000e+01 +1.200000e+01 true (+1.300000e+01+1.400000e+01i) (+1.500000e+01+1.600000e+01i) [3/3]0x1001129a0 [3/3]0x100112920 hello 0x1001149b0 0x100123ab0 0x100123d10 0x1001149e0 (0x100116810,0x1001149d0) 0x10011bf00 0x10010fa80 (0x100116840,0x100112940) 0x10001b4a4
9
1 (0x1001167e0,0x100112900)
called function with types
0x100123e40
0x1000343d0
Process 21992 stopped
* thread #1, queue = 'com.apple.main-thread', stop reason = breakpoint 1.1
    frame #0: 0x000000010001b3b4 out`main at in.go:225:12
   222 		//   s.i8: '\x01'
   223 		//   s.i16: 2
   224 		s.i8 = 0x12
-> 225 		println(s.i8)
   226 		// Expected:
   227 		//   all variables: globalInt globalStruct globalStructPtr s i err
   228 		//   s.i8: '\x12'
(lldb) v
var i int = <variable not available>
var s github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields = {
  i8 = '\x12',
  i16 = 2,
  i32 = 3,
  i64 = 4,
  i = 5,
  u8 = '\x06',
  u16 = 7,
  u32 = 8,
  u64 = 9,
  u = 10,
  f32 = 11,
  f64 = 12,
  b = true,
  c64 = {real = 13, imag = 14},
  c128 = {real = 15, imag = 16},
  slice = []int{21, 22, 23},
  arr = [3]int{24, 25, 26},
  arr2 = [3]github.com/goplus/llgo/cl/_testdata/debug.E{{i = 27}, {i = 28}, {i = 29}},
  s = "hello",
  e = {i = 30},
  pf = 0x0000000100123d10,
  pi = 0x00000001001149e0,
  intr = {type = 0x0000000100116810, data = 0x00000001001149d0},
  m = {count = 4296130304},
  c = {},
  err = {type = 0x0000000100116840, data = 0x0000000100112940},
  fn = {f = 0x000000010001b4a4, data = 0x00000001001149c0},
  pad1 = 100,
  pad2 = 200
}
var globalStructPtr *github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields = <variable not available>
var globalStruct github.com/goplus/llgo/cl/_testdata/debug.StructWithAllTypeFields = {
  i8 = '\x01',
  i16 = 2,
  i32 = 3,
  i64 = 4,
  i = 5,
  u8 = '\x06',
  u16 = 7,
  u32 = 8,
  u64 = 9,
  u = 10,
  f32 = 11,
  f64 = 12,
  b = true,
  c64 = {real = 13, imag = 14},
  c128 = {real = 15, imag = 16},
  slice = []int{21, 22, 23},
  arr = [3]int{24, 25, 26},
  arr2 = [3]github.com/goplus/llgo/cl/_testdata/debug.E{{i = 27}, {i = 28}, {i = 29}},
  s = "hello",
  e = {i = 30},
  pf = 0x0000000100123d10,
  pi = 0x00000001001149e0,
  intr = {type = 0x0000000100116810, data = 0x00000001001149d0},
  m = {count = 4296130304},
  c = {},
  err = {type = 0x0000000100116840, data = 0x0000000100112940},
  fn = {f = 0x000000010001b4a4, data = 0x00000001001149c0},
  pad1 = 100,
  pad2 = 200
}
var globalInt int = 301
var err error = {type = 0x0000000100112900, data = 0x000000000000001a}
```
