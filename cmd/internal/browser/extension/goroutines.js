// Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
// Licensed under the Apache License, Version 2.0.

(() => {
  'use strict';

  const LIMIT = 4096;

  function resolve(module, type) {
    const seen = new Set();
    while (type?.kind === 'typedef') {
      if (seen.has(type.id)) throw new Error('cyclic debugger type');
      seen.add(type.id);
      type = module.types.get(type.elem);
    }
    return type;
  }

  function fieldType(module, type, name) {
    const field = resolve(module, type)?.fields?.find(field => field.name === name);
    if (!field) throw new Error(`missing debugger field ${name}`);
    return resolve(module, module.types.get(field.type));
  }

  function pointee(module, type, name) {
    const pointer = fieldType(module, type, name);
    if (pointer?.kind !== 'pointer') throw new Error(`debugger field ${name} is not a pointer`);
    return resolve(module, module.types.get(pointer.elem));
  }

  async function read(plugin, module, context, stopId) {
    const spec = module.layout?.wasm_goroutine;
    if (!spec) return null;
    const variable = module.index.variables.find(variable => variable.scope === 'GLOBAL' &&
        variable.name === spec.registry_symbol);
    if (!variable) return null;
    const located = await plugin.variableLocation(variable, context.codeOffset, module, stopId);
    if (located?.kind !== 'address') throw new Error('Wasm goroutine registry has no address');
    const registry = resolve(module, module.types.get(variable.type));
    const scalar = async (type, address, field) => {
      const value = await plugin.readNamedUnsigned(module, type, address, field, stopId);
      if (value === null) throw new Error(`unreadable debugger field ${field}`);
      return value;
    };
    const version = await scalar(registry, located.value, spec.version);
    if (version !== BigInt(spec.registry_version)) throw new Error(`unsupported Wasm goroutine registry ${version}`);
    const epoch = await scalar(registry, located.value, spec.epoch);
    if (epoch & 1n) throw new Error('goroutine registry is changing; pause all workers outside runtime updates');
    let nodeAddress = await scalar(registry, located.value, spec.head);
    const node = pointee(module, registry, spec.head);
    const g = pointee(module, node, spec.goroutine);
    const caller = pointee(module, node, spec.callers);
    const stack = fieldType(module, caller, spec.stack);
    const frame = pointee(module, stack, module.layout.slice.data);
    const results = [], visited = new Set();
    while (nodeAddress !== 0n) {
      if (results.length >= LIMIT || visited.has(String(nodeAddress))) throw new Error('invalid or oversized goroutine registry');
      visited.add(String(nodeAddress));
      const sequence = await scalar(node, nodeAddress, spec.sequence);
      if (sequence & 1n) throw new Error('goroutine stack is changing; pause all workers outside runtime updates');
      const address = await scalar(node, nodeAddress, spec.goroutine);
      if (address === 0n) throw new Error('goroutine registry contains a nil G');
      const id = await scalar(g, address, spec.id);
      const parent = await scalar(g, address, spec.parent_id);
      const state = await scalar(g, address, spec.status);
      const record = {id: String(id), parent: String(parent),
        state: module.layout.goroutine.status_names[String(state)] || `unknown(${state})`, processor: null, frames: []};
      const processor = await scalar(node, nodeAddress, spec.processor_id);
      if (processor !== 0n) record.processor = String(processor);
      const storeAddress = await scalar(node, nodeAddress, spec.callers);
      if (storeAddress !== 0n) {
        const stackField = caller.fields.find(field => field.name === spec.stack);
        if (!stackField) throw new Error('missing caller stack field');
        const stackAddress = storeAddress + BigInt(stackField.offset);
        const data = await scalar(stack, stackAddress, module.layout.slice.data);
        const count = await scalar(stack, stackAddress, module.layout.slice.length);
        if (count > BigInt(LIMIT) || (count !== 0n && data === 0n) || frame.size <= 0) throw new Error('invalid or oversized logical stack');
        for (let index = Number(count) - 1; index >= 0; --index) {
          const frameAddress = data + BigInt(index * frame.size);
          const text = async name => {
            const field = frame.fields.find(field => field.name === name);
            if (!field) throw new Error(`missing caller frame ${name}`);
            const result = await plugin.readGoString(module, fieldType(module, frame, name), frameAddress + BigInt(field.offset), stopId, LIMIT);
            if (result === null) throw new Error(`invalid caller frame ${name}`);
            return result;
          };
          record.frames.push({function: await text(spec.function), file: await text(spec.file),
            line: String(await scalar(frame, frameAddress, spec.line))});
        }
      }
      if (await scalar(node, nodeAddress, spec.sequence) !== sequence) throw new Error('goroutine stack changed during inspection; pause all workers');
      results.push(record);
      nodeAddress = await scalar(node, nodeAddress, spec.next);
    }
    if (await scalar(registry, located.value, spec.epoch) !== epoch) throw new Error('goroutine registry changed during inspection; pause all workers');
    return results;
  }

  globalThis.LLGoWasmGoroutines = {read};
})();
