#!/usr/bin/bash

set -xe

valgrind --tool=cachegrind --keep-debuginfo=yes --cache-sim=yes --log-file="cachegrind-%p.txt" ../VisuAlgo/visuAlgo/build/visuAlgo

latest_file=$(ls -t cachegrind.out.* | head -n1)
cg_annotate "$latest_file" > "$latest_file.txt"

