#!/bin/bash

set -e

output=$(llgo test ./... 2>&1)
echo "$output"

pass_count=$(echo "$output" | grep -c "^PASS$")
echo "llgo test pass count: $pass_count"

if [ "$pass_count" -gt 1 ]; then
    echo "llgo test ./... passed"
    exit 0
else
    echo "llgo test ./... failed: PASS count is not greater than 1"
    exit 1
fi
