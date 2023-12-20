FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    cmake \
    meson \
    sudo \
    pkg-config \
    libglib2.0-dev \
    zlib1g-dev \
    libpixman-1-dev \
    libcapstone-dev \
    libssl-dev \
    wget

# Create workdir and mount it
RUN mkdir -p /home/nonroot/workdir
WORKDIR /home/nonroot/workdir

# Install Rizin
RUN git clone https://github.com/rizinorg/rizin.git && \
    cd rizin && \
    git checkout stable && \
    meson setup build && \
    meson compile -C build && \
    sudo meson install -C build 

RUN git clone https://github.com/rizinorg/rz-ghidra.git && \
    cd rz-ghidra && \
    git checkout stable && \
    git submodule init && \
    git submodule update && \
    mkdir build && cd build && \
    cmake -DCMAKE_INSTALL_PREFIX=~/.local .. && \
    make && \
    make install 



RUN ["/bin/bash"]