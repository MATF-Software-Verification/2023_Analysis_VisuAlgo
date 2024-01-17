#!/usr/bin/bash

set -xe

valgrind --tool=memcheck $@ --log-file="$(date +%s).memcheck.out" ../VisuAlgo/visuAlgo/build/visuAlgo

