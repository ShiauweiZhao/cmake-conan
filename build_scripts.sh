rm -rf example/build
rm -rf example/build_aarch64
mkdir -p example/build
cmake -B example/build -S ./example -DCMAKE_PROJECT_TOP_LEVEL_INCLUDES=../conan_provider.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build example/build --config Release

mkdir -p example/build_aarch64
cmake -B example/build_aarch64 -S./example -DCMAKE_PROJECT_TOP_LEVEL_INCLUDES=../conan_provider.cmake -DCMAKE_BUILD_TYPE=Release -DCONAN_HOST_PROFILE=aarch64-linux-release-gcc-9 -DCONAN_BUILD_PROFILE=aarch64-linux-release-gcc-9
cmake --build example/build_aarch64 --config Release