#!/bin/bash
cd ./doc/_readme/ || exit 1
llgo build -v ./...
pip3 install --user numpy
for dir in ./*/; do
  if grep -q "func main()" "$dir"/*.go 2>/dev/null; then
    echo "Running examples in $dir"
    llgo run "$dir"
  fi
done
