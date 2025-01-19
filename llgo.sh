#!/bin/bash
set -e
WORKDIR=$(pwd)
export LLGO_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )
cd $LLGO_ROOT/compiler
go install ./cmd/llgo
cd $WORKDIR
llgo $@
