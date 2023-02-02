_default:
    just --list

build:
    cargo build --target wasm32-unknown-unknown  # build rust
    wasm-pack build --target web --out-dir ./www/dist/wasm  # generate bindings
    cp ./www/src/index.html ./www/dist # copy static files
    npm run build --prefix www  # build typescript

clean:
    cargo clean
    rm ./dist -rf