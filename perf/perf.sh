#!/usr/bin/bash

QMAKE=/home/bob9952/Qt/6.5.3/gcc_64/bin/qmake

mkdir -p ../visuAlgo/build && cd ../visuAlgo/build
qmake CONFIG+=debug ../visuAlgo.pro > /dev/null
make > /dev/null
cd ../../perf

perf record --call-graph dwarf ../visuAlgo/build/visuAlgo
perf script -i perf.data > perf.folded

cd FlameGraph
./stackcollapse-perf.pl < ../perf.folded > ../perf.collapsed
./flamegraph.pl ../perf.collapsed > ../flamegraph.svg
cd ..

rm -rf ../visuAlgo/build
rm perf.folded
rm perf.collapsed
rm perf.data
