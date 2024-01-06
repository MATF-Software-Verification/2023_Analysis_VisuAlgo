#!/usr/bin/bash
QMAKE=/home/bob9952/Qt/6.5.3/gcc_64/bin/qmake

mkdir -p ../VisuAlgo/visuAlgo/build && cd ../VisuAlgo/visuAlgo/build
${QMAKE} "CONFIG+=debug -O0 --keep-debuginfo=yes -fno-omit-frame-pointer" ../visuAlgo.pro > /dev/null
make > /dev/null
cd ../../../cachegrind

valgrind --tool=cachegrind --keep-debuginfo=yes --cache-sim=yes --log-file="cachegrind-%p.txt" ../VisuAlgo/visuAlgo/build/visuAlgo

latest_file=$(ls -t cachegrind.out.* | head -n1)
cg_annotate "$latest_file" > "$latest_file.txt"

rm -rf ../VisuAlgo/visuAlgo/build
