import init, { add } from "@wasm/wasm_in_browser.js";

async function start() {
  const wasm = await (init as any)();
  console.debug("Loaded WASM module", wasm);

  const res = add(1, 2);
  console.log({ result: res });
}

start().catch((e) => console.error(e));
