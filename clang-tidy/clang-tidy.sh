QMAKE=/home/bob9952/Qt/6.5.3/gcc_64/bin/qmake

<<<<<<< HEAD
mkdir ../stock-app/source/build && cd ../stock-app/source/build
${QMAKE} -spec linux-clang ../source.pro
make qmake_all 
bear -- make > /dev/null # generates compile_commands.json

cd ../../../clang-tidy

CURRENT_DIR=$(pwd) # source
PROJECT_DIR="${CURRENT_DIR}/../stock-app"
BUILD_DIR="${PROJECT_DIR}/source/build/"

run-clang-tidy -p "${BUILD_DIR}" -header-filter='${PROJECT_DIR}/source/.*' $(find '${PROJECT_DIR}/source/' \( -name "*.cpp" -or -name "*.hpp" \)) > out.txt

rm -rf ../stock-app/source/build
=======
mkdir -p ../VisuAlgo/visuAlgo/build && cd ../VisuAlgo/visuAlgo/build
${QMAKE} CONFIG+=debug -spec linux-clang ../visuAlgo.pro
make qmake_all 
bear -- make > /dev/null 2>&1 # out.txt >2&1

cd ../../../clang-tidy

run-clang-tidy -p ../VisuAlgo/visuAlgo/build/ -header-filter='../VisuAlgo/visuAlgo/Headers/.*' ../VisuAlgo/visuAlgo/Resources/ ../visuAlgo/Headers/ > out.txt

rm -rf ../VisuAlgo/visuAlgo/build

>>>>>>> 6f191c5 (Added clang-tidy script and output)
