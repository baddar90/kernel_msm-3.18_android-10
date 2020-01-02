export KBUILD_BUILD_USER=hidden
export KBUILD_BUILD_HOST=hidden
make O=$HOME/out ARCH=arm64 lineageos_axon7_defconfig

PATH="/home/mohammadbaddar1990/dragon/bin:/home/mohammadbaddar1990/gcc-64/bin:/home/mohammadbaddar1990/gcc-32/bin:${PATH}" \
make -j$(nproc --all) O=$HOME/out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=arm-linux-androideabi-
