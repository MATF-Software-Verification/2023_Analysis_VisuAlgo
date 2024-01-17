#!/usr/bin/bash

set -xe

../VisuAlgo/visuAlgo/build/visuAlgo &
pid=$!

while ! ps -p $pid > /dev/null; do
	sleep 1
done

sleep 3

perf record --call-graph dwarf -F 99 -g -p $pid -- sleep 20

# perf record --call-graph dwarf ../VisuAlgo/visuAlgo/build/visuAlgo
perf script -i perf.data > perf.folded

cd FlameGraph
./stackcollapse-perf.pl < ../perf.folded > ../perf.collapsed
./flamegraph.pl ../perf.collapsed > ../flamegraph.svg
