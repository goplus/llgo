import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import { pathToFileURL } from "node:url";
import "../targets/emscripten-node-polyfills.mjs";
import { runEmscriptenModule } from "../targets/emscripten-exit-status.mjs";

const nodeProcess = globalThis.process;
const [modulePath, mode, operation, browserFlag] = nodeProcess.argv.slice(2);
assert.ok(modulePath, "usage: test_wasm_js_boundary.mjs <module.mjs> <return|throw|exit-0|exit-7|callback-exit-0|callback-exit-7> <Call|Invoke|New>");
assert.ok(["return", "throw", "exit-0", "exit-7", "callback-exit-0", "callback-exit-7"].includes(mode));
assert.ok(["Call", "Invoke", "New"].includes(operation));
const moduleURL = pathToFileURL(modulePath);
const { default: factory } = await import(moduleURL);
let called = false;
const options = {
  preRun: [module => {
    const expected = { code: "ENOENT", message: "host boundary probe" };
    globalThis.llgoHostMode = mode;
    globalThis.llgoHostOperation = operation;
    globalThis.llgoHostExpected = expected;
    globalThis.llgoHostProbe = function (argument) {
      called = true;
      assert.equal(argument, expected, "call lost an argument before entering JS");
      if (mode.startsWith("callback-exit-")) {
        console.log("wasm host exit reached");
        argument.callback();
        throw new Error("exiting callback returned");
      }
      if (mode.startsWith("exit-")) {
        console.log("wasm host exit reached");
        module._emscripten_force_exit(Number(mode.slice(5)));
        throw new Error("emscripten_force_exit returned");
      }
      const before = module.memory.buffer.byteLength;
      assert.equal(module._emscripten_resize_heap(before + 65536), true);
      assert.ok(module.memory.buffer.byteLength > before, "probe did not grow Wasm memory");
      if (mode === "throw") throw expected;
      return expected;
    };
  }],
};
if (browserFlag === "--browser-only") {
  const wasmURL = new URL(moduleURL);
  wasmURL.pathname = wasmURL.pathname.replace(/\.[^/.]+$/, ".wasm");
  const wasmBinary = await readFile(wasmURL);
  options.instantiateWasm = (imports, receiveInstance) => {
    WebAssembly.instantiate(wasmBinary, imports).then(result => receiveInstance(result.instance));
  };
  globalThis.window ??= globalThis;
  globalThis.process = undefined;
  globalThis.fs = undefined;
  globalThis.path = undefined;
}
await runEmscriptenModule(factory, options);
if (mode.startsWith("callback-exit-")) {
  // Asyncify may resolve the factory before the parked callback's ExitStatus
  // reaches the runner's uncaught-exception handler. Check at process shutdown.
  await new Promise(resolve => nodeProcess.once("beforeExit", resolve));
}
assert.ok(called, "module did not call the host probe");
assert.equal(nodeProcess.exitCode ?? 0, mode.endsWith("exit-7") ? 7 : 0);
console.log("wasm host boundary runner ok");
