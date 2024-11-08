#!/bin/bash
cd ./doc/_readme/ || exit 1
llgo build -v ./...

python3 -m venv .venv
# shellcheck source=/dev/null
source .venv/bin/activate
pip3 install numpy

PYTHONPATH=""
PYTHONPATH=$(python -c "import sys; print(':'.join(sys.path))")
export PYTHONPATH

for dir in ./*/; do
  if grep -q "func main()" "$dir"/*.go 2>/dev/null; then
    echo "Running examples in $dir"
    llgo run "$dir"
  fi
done
