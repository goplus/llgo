package main

import (
	"unsafe"

	"github.com/goplus/lib/c"
	"github.com/luoliwoshang/mquickjs/mquickjs"
)

// Link to the js_stdlib symbol exported from libmquickjs
//
//go:linkname jsStdlib js_stdlib
var jsStdlib mquickjs.JSSTDLibraryDef

func myprint(s *c.Char) {
	for i := 0; i < int(c.Strlen(s)); i++ {
		WriteByte(byte(c.Index(s, i)))
	}
}

// js_print - Override the weak symbol in libmquickjs to provide actual print functionality
// This function is called when JavaScript code calls print()
//
//export js_print
func js_print(ctx *mquickjs.JSContext, thisVal *mquickjs.JSValue, argc c.Int, argv *mquickjs.JSValue) mquickjs.JSValue {
	// Iterate through all arguments
	for i := c.Int(0); i < argc; i++ {
		// Get argument at index i
		argPtr := (*mquickjs.JSValue)(unsafe.Pointer(uintptr(unsafe.Pointer(argv)) + uintptr(i)*unsafe.Sizeof(*argv)))

		// Convert JS value to C string
		var buf mquickjs.JSCStringBuf
		str := ctx.JSToCString(*argPtr, &buf)
		if str != nil {
			myprint(str)
		}

		// Add space between arguments
		if i < argc-1 {
			WriteByte(' ')
		}
	}
	// Add newline at the end
	WriteByte('\n')

	return mquickjs.JSValue(mquickjs.JS_TAG_UNDEFINED)
}

func main() {
	// Allocate memory for JS context (64KB)
	const memSize = 64 * 1024
	mem := c.Malloc(memSize)

	// Create JS context with js_stdlib
	ctx := mquickjs.JSNewContext(mem, c.Int(memSize), &jsStdlib)
	if ctx == nil {
		myprint(c.Str("Failed to create JS context\n"))
		return
	}

	// Run JavaScript code
	code := c.Str("console.log('Hello from MQuickJS on ESP32!')")
	result := ctx.JSEval(code, c.Int(c.Strlen(code)), c.Str("<eval>"), 0)

	// Check for exception
	if mquickjs.JSValue(result) == mquickjs.JSValue(mquickjs.JS_TAG_EXCEPTION) {
		myprint(c.Str("JS Exception occurred\n"))
	}

	// Free context
	ctx.JSFreeContext()
	c.Free(unsafe.Pointer(mem))

	for {
		myprint(c.Str("hello world\n"))
		sleep(1)
	}
}
