CURRENT_DIR=$(pwd)
PROJECT_DIR="${CURRENT_DIR}/../stock-app/"
BUILD_DIR="${PROJECT_DIR}/build-source-Desktop_Qt_6_5_3_GCC_64bit-Debug/"

run-clang-tidy -p "${BUILD_DIR}" -header-filter='${PROJECT_DIR}/source/.*' $(find '${PROJECT_DIR}/source/' \( -name "*.cpp" -or -name "*.hpp" \)) > out.txt

