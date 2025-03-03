
cd llvm
export BTYPE=Release

. venv/urbench/bin/activate

cmake -DCMAKE_BUILD_TYPE=$BTYPE \
  -S$HOME/mkomar/KVM-utils/llvm/unified-runtime \
  -B$HOME/mkomar/KVM-utils/llvm/unified-runtime/build_$BTYPE \
  -DCMAKE_C_COMPILER=gcc \
  -DCMAKE_CXX_COMPILER=g++ \
  -DUR_DEVELOPER_MODE=ON \
  -DUR_BUILD_TESTS=ON \
  -DUR_CONFORMANCE_TEST_LOADER=OFF \
  -DUR_BUILD_ADAPTER_L0=ON \
  -DUR_BUILD_ADAPTER_L0_V2=ON \
  -DUMF_DISABLE_HWLOC=OFF \
  -DUR_FORMAT_CPP_STYLE=ON \
  -DUR_DPCXX=$HOME/dpcpp_compiler/bin/clang++ \
  -DUR_SYCL_LIBRARY_DIR=$HOME/dpcpp_compiler/lib
 
cmake --build $HOME/mkomar/KVM-utils/llvm/unified-runtime/build_$BTYPE -- -j