#!/usr/bin/bash

QMAKE=/home/bob9952/Qt/6.5.3/gcc_64/bin/qmake

mkdir -p ../VisuAlgo/visuAlgo/build && cd ../VisuAlgo/visuAlgo/build
qmake CONFIG+=debug ../visuAlgo.pro > /dev/null
make > /dev/null
cd ../../../perf

perf record --call-graph dwarf ../VisuAlgo/visuAlgo/build/visuAlgo
perf script -i perf.data > perf.folded

cd FlameGraph
./stackcollapse-perf.pl < ../perf.folded > ../perf.collapsed
./flamegraph.pl ../perf.collapsed > ../flamegraph.svg
cd ..

rm -rf ../VisuAlgo/visuAlgo/build
rm perf.folded
rm perf.collapsed
rm perf.data
