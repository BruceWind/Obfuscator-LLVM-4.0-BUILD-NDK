# Obfuscator-LLVM 4.0 BUILD AND SETUP TO NDK 
1.执行shell文件,会执行 clone, build ,copy新目录


2.修改三个目录下的setup.xml
# setup.xml修改的内容如下

#
# Override the toolchain prefix
#
############################ old ############################

# LLVM_TOOLCHAIN_PREBUILT_ROOT := $(call get-toolchain-root,llvm)
# LLVM_TOOLCHAIN_PREFIX := $(LLVM_TOOLCHAIN_PREBUILT_ROOT)/bin/

############################ new  #############################
OLLVM_NAME := ollvm-4.0
LLVM_TOOLCHAIN_PREBUILT_ROOT := $(call get-toolchain-root,$(OLLVM_NAME))
LLVM_TOOLCHAIN_PREFIX := $(LLVM_TOOLCHAIN_PREBUILT_ROOT)/bin/



如果build环境始终没有build好，这里有一个我自己build好的,下载好了解压出来直接覆盖到ndk跟目录即可，要求ndk版本13b+。
[下载地址](https://www.dropbox.com/s/rvqrrb9g8a1y8jt/Obfuscator-LLVM4.0_NDK.7z?dl=0)




