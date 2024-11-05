#!/bin/bash
set -e
llgo install ./chore/_xtool/llcppsymg

git clone -b llcppsigfetch/stdinclude https://github.com/luoliwoshang/llgo.git llgo_temp
cd llgo_temp

llgo install ./chore/_xtool/llcppsigfetch
cd ..
rm -rf llgo_temp

