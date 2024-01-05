#!/usr/bin/bash
QMAKE=/home/bob9952/Qt/6.5.3/gcc_64/bin/qmake

mkdir -p ../VisuAlgo/visuAlgo/build && cd ../VisuAlgo/visuAlgo/build
${QMAKE} CONFIG+=debug ../visuAlgo.pro > /dev/null
make > /dev/null
cd ../../../memcheck

valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all  --log-file="$(date +%s).memcheck.out" ../VisuAlgo/visuAlgo/build/visuAlgo

rm -rf ../VisuAlgo/visuAlgo/build
