#!/usr/bin/bash

set -xe

run-clang-tidy -p ../VisuAlgo/visuAlgo/build/ -header-filter='../VisuAlgo/visuAlgo/Headers/.*' ../VisuAlgo/visuAlgo/Resources/ ../visuAlgo/Headers/ > out.txt

