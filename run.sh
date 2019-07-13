#!/bin/sh

export SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$SCRIPT_DIR"
make run
server/bin/lua-language-server -E -e LANG=en server/main.lua
