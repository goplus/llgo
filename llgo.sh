#!/bin/bash
set -e
WORKDIR=''
WORKDIR=$(pwd)
LLGO_ROOT=''
LLGO_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )
export LLGO_ROOT
cd $LLGO_ROOT
go install ./cmd/llgo
cd $WORKDIR
llgo "$@"
