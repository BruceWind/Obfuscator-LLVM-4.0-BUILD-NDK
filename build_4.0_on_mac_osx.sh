 git clone -b llvm-4.0 https://github.com/obfuscator-llvm/obfuscator.git
 mkdir build
 cd build
 cmake -DCMAKE_BUILD_TYPE=Release ../obfuscator/
 make -j7
# the build out in dir “bin/  lib/”
ls 
# will show lib/  bin/



 mkdir  $NDK_ROOT/toolchains/ollvm-4.0
 mkdir $NDK_ROOT/toolchains/ollvm-4.0/prebuilt
 mkdir $NDK_ROOT/toolchains/ollvm-4.0/prebuilt/linux-x86_64


# cp “bin/  lib/”
 cp -r ./bin $NDK_ROOT/toolchains/ollvm-4.0/prebuilt/linux-x86_64/bin
 cp -r ./lib $NDK_ROOT/toolchains/ollvm-4.0/prebuilt/linux-x86_64/lib


 cd $NDK_ROOT/build/core/toolchains

//拷贝新目录 让obfuscator4.0 支持 arm64-v8a，armeabi，armeabi-v7a，x86_64
 cp -r aarch64-linux-android-clang aarch64-linux-android-clang-ollvm4.0	//需要手动新修改 目录下setup.xml
 cp -r arm-linux-androideabi-clang arm-linux-androideabi-clang-ollvm4.0	//需要手动修改 目录下setup.xml
 cp -r x86_64-clang x86_64-clang-ollvm4.0				//需要手动修改 目录下setup.xml


 echo "需要手动修改 当前新拷贝出来的三个目录下的setup.xml,修改的内容见README"
