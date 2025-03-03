
cd llvm
export BTYPE=Release

. venv/urbench/bin/activate

cmake -B$HOME/mkomar/KVM-utils/llvm/llvm/build \
 -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release \
 -DUR_ENABLE_TRACING=ON \
 -DUR_DEVELOPER_MODE=ON \
 -DUR_BUILD_TESTS=ON \
 -DUR_BUILD_ADAPTER_L0_V2=ON \
 -DUR_CONFORMANCE_TEST_LOADER=OFF \
 -DUR_STATIC_LOADER=OFF \
 -DUR_STATIC_ADAPTER_L0_V2=OFF \
 -DUR_DPCXX=$HOME/mkomar/KVM-utils/llvm/llvm/dpcpp_compiler/bin/clang++ \
 -DUR_SYCL_LIBRARY_DIR=$HOME/mkomar/KVM-utils/llvm/llvm/dpcpp_compiler/lib \
 -DCMAKE_INSTALL_PREFIX=$HOME/mkomar/KVM-utils/llvm/llvm/install \
 
cmake --build $HOME/mkomar/KVM-utils/llvm/llvm/build -- -j