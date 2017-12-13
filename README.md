## Obfuscator-LLVM 4.0 BUILD AND SETUP TO NDK 

1.执行shell之前 需要先配置环境变量$NDK_ROOT;

``` shell

debian/ubuntu 配置$NDK_ROOT:  
vi .bashrc

mac os x 配置$NDK_ROOT:
vi .bash_profile

```


**如果不能提供该环境变量，则手动修改 shell文件中$NDK_ROOT;**


2.执行shell文件,会执行 clone, build ,toolchains中copy新目录;

3.修改三个目录下的setup.xml;
 
setup.xml修改的内容如下

``` xml
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
```


PS:如果第二步，build始终没有build成功，这里有一个我build出来的,下载好了解压出来直接覆盖到ndk跟目录即可，要求ndk版本13b+。
[下载地址](https://www.dropbox.com/s/rvqrrb9g8a1y8jt/Obfuscator-LLVM4.0_NDK.7z?dl=0)




