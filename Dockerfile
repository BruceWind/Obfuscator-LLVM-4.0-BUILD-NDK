FROM ubuntu:16.04

ENV LANG en_US.UTF-8
RUN locale-gen $LANG

# Installing packages
RUN apt-get install -y \
  autoconf \
  build-essential \
  bzip2 \
  curl \
  gcc \
  git \
  groff \
  lib32stdc++6 \
  lib32z1 \
  lib32z1-dev \
  lib32ncurses5 \
  lib32bz2-1.0 \
  libc6-dev \
  libgmp-dev \
  libmpc-dev \
  libmpfr-dev \
  libxslt-dev \
  libxml2-dev \
  m4 \
  make \
  ncurses-dev \
  ocaml \
  openssh-client \
  pkg-config \
  python-software-properties \
  rsync \
  software-properties-common \
  unzip \
  wget \
  zip \
  zlib1g-dev \
  --no-install-recommends && \
  apt-get clean



RUN wget https://dl.google.com/android/repository/android-ndk-r13-linux-x86_64.zip
RUN unzip android-ndk-r13-linux-x86_64.zip
RUN mv android-ndk-r13 /usr/local/android-ndk
RUN rm android-ndk-r13-linux-x86_64.zip


ENV ANDROID_NDK_HOME /usr/local/android-ndk
ENV PATH $PATH:$ANDROID_NDK_HOME

RUN chown -R  $ANDROID_NDK_HOME
RUN chmod -R a+rx $ANDROID_NDK_HOME



