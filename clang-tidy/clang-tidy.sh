QMAKE=/home/bob9952/Qt/6.5.3/gcc_64/bin/qmake

mkdir -p ../VisuAlgo/visuAlgo/build && cd ../VisuAlgo/visuAlgo/build
${QMAKE} CONFIG+=debug -spec linux-clang ../visuAlgo.pro
make qmake_all 
bear -- make > /dev/null 2>&1 # out.txt >2&1

cd ../../../clang-tidy

run-clang-tidy -p ../VisuAlgo/visuAlgo/build/ -header-filter='../VisuAlgo/visuAlgo/Headers/.*' ../VisuAlgo/visuAlgo/Resources/ ../visuAlgo/Headers/ > out.txt

rm -rf ../VisuAlgo/visuAlgo/build
