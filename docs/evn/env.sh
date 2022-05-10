#!/bin/bash
echo "--------------------------------------------"
echo "installing rust evn"
echo "--------------------------------------------"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
echo "--------------------------------------------"
echo "rust installed"
echo "--------------------------------------------"

rustup target add wasm32-unknown-unknown
echo "--------------------------------------------"
echo "rust wasm installed"
echo "--------------------------------------------"

npm install -g near-cli

echo "--------------------------------------------"
echo "near cli installed"
echo "--------------------------------------------"