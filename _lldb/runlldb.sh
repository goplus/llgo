#!/bin/bash

set -e

go run ./cmd/llgo build -o ./cl/_testdata/debug/out -dbg ./cl/_testdata/debug/
lldb -O "command script import _lldb/llgo_plugin.py" ./cl/_testdata/debug/out
