#!/bin/bash
set -e

llgo install ./chore/_xtool/llcppsymg
llgo install ./chore/_xtool/llcppsigfetch
go install ./chore/gogensig