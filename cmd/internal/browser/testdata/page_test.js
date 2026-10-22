// Exercise the actual session page without Chromium or a five-second sleep.
const assert = require('node:assert/strict');
const {readFileSync} = require('node:fs');
const {join} = require('node:path');
const test = require('node:test');
const vm = require('node:vm');

function page(mode = '') {
  const html = readFileSync(join(__dirname, '..', 'page.html'), 'utf8');
  const script = html.match(/<script type="module">([\s\S]*)<\/script>/)[1]
    .replace('__LLGO_DEBUG_CONFIG__', JSON.stringify({module: '/fixture.wasm', glue: ''}));
  const elements = new Map(['status', 'run', 'output'].map(id => [id, {
    textContent: '', disabled: true, addEventListener() {},
  }]));
  const listeners = new Map();
  let timeout, instantiated = 0;
  const context = vm.createContext({
    document: {getElementById: id => elements.get(id)},
    location: {search: mode}, URLSearchParams,
    console: {error() {}},
    setTimeout(callback) { timeout = callback; return 1; }, clearTimeout() { timeout = undefined; },
    addEventListener(name, callback) { listeners.set(name, callback); },
    fetch: async () => ({}),
    WebAssembly: {async instantiateStreaming() {
      instantiated++;
      return {instance: {exports: {}}, module: {}};
    }},
  });
  const completed = vm.runInContext(`(async () => {${script}\n})()`, context);
  return {
    context, elements, completed,
    instantiated: () => instantiated,
    timeout: () => timeout(),
    ready: () => listeners.get('__llgoLanguageExtensionReady')(),
  };
}

test('extension timeout fails visibly before Wasm instantiation', async () => {
  const session = page();
  assert.equal(session.instantiated(), 0);
  session.timeout();
  await session.completed;
  assert.equal(session.instantiated(), 0);
  assert.equal(session.context.__llgoDebugStatus.state, 'error');
  assert.match(session.elements.get('status').textContent, /DevTools extension did not become ready/);
  assert.equal(session.elements.get('run').disabled, true);
  // A late extension cannot silently start an already failed session.
  session.ready();
  assert.equal(session.instantiated(), 0);
});

test('extension handshake gates Wasm instantiation', async () => {
  const session = page();
  assert.equal(session.instantiated(), 0);
  session.ready();
  await session.completed;
  assert.equal(session.instantiated(), 1);
  assert.equal(session.context.__llgoDebugStatus.state, 'ready');
  assert.equal(session.elements.get('run').disabled, false);
});

test('explicit no-extension mode still instantiates Wasm', async () => {
  const session = page('?llgo-devtools=disabled');
  await session.completed;
  assert.equal(session.instantiated(), 1);
  assert.equal(session.context.__llgoDebugStatus.state, 'ready');
});
