#!/bin/bash
echo "running cargo testing ....."
cargo test -- --nocapture
echo "--------------------------------------------"
echo "cargo test  done"
echo "--------------------------------------------"

echo "buildint release wasm file"
cargo build --target wasm32-unknown-unknown --release
echo "--------------------------------------------"
echo "build   done"
echo "--------------------------------------------"
