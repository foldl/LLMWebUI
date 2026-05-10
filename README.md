## Web UI

This is extracted from [llama.cpp](https://github.com/ggml-org/llama.cpp), with some modifications for [chatllm.cpp](https://github.com/foldl/chatllm.cpp).

New Features/Modifications:

* Input video files.
* Reverted to `index.html.gz`.

### Development

```sh
# make sure you have Node.js installed
npm i

# run dev server (with hot reload)
npm run dev

# build production bundle
npm run build
```

After `build/index.html` has been generated, launch `server` (built from `chatllm.cpp/bindings/server.nim`) with `--ui` pointing to it to test.

**Note:** The Vite dev server automatically proxies API requests to `http://localhost:8080` (defined in `vite.config.ts`). Make sure `server` is running on that port during development.
