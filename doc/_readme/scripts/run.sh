#!/bin/bash
DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$DIR" || exit 1

python3 -m venv .venv
# shellcheck source=/dev/null
source .venv/bin/activate
pip3 install numpy

PYTHONPATH=""
PYTHONPATH=$(python -c "import sys; print(':'.join(sys.path))")
export PYTHONPATH

for sub in ./*/; do
  if grep -q "func main()" "$DIR/$sub"/*.go 2>/dev/null; then
    echo "Running examples in $sub"
    cd "$DIR/$sub" || exit 1
    llgo run .
  fi
done
