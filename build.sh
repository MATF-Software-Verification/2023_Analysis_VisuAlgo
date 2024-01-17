#!/usr/bin/bash
set -xe

QMAKE=$HOME/Qt/6.5.3/gcc_64/bin/qmake

mkdir -p VisuAlgo/visuAlgo/build && cd VisuAlgo/visuAlgo/build
${QMAKE} CONFIG+="debug -spec linux-clang"  ../visuAlgo.pro > /dev/null
make qmake_all > /dev/null 2>&1
bear -- make > /dev/null 2>&1

