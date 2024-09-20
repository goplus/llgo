#!/bin/bash

set -e

go run ./cmd/llgo build -o ./cl/_testdata/debug/out -dbg ./cl/_testdata/debug/

/opt/homebrew/bin/lldb -S _lldb/runtest.lldb
