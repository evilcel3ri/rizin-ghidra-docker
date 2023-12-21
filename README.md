# Rizin + Ghidra in a docker

## Description

This repository contains the necessary files and instructions to build and run the rizin and rz-ghidra tool using Docker.

## Prerequisites

- Docker installed on your machine

## Build Instructions

To build the Docker image, follow these steps:

1. Clone this repository: `git clone https://github.com/evilc3leri/rizin-ghidra-docker.git`
2. Navigate to the project directory: `cd rizin-ghidra-docker`
3. Build the Docker image: `docker build -t rizin-ghidra-docker .`

## Usage

To launch the Docker container with the rizin-ghidra-docker tool, use the following command:
```sh
docker run -it rizin-ghidra-docker --rm -v /path/to/your/workdir:/home/nonroot/workdir 

# Or you can use in in your current directory
docker run -it --rm -v $(pwd):/home/nonroot/workdir rizin-ghidra-docker 
```
## Rizin quick usage

```sh
# Run rizin
rizin your_binary

# Analyse the binary
aaaa

# List functions
afl

# Disassemble a function
pdf

# Decompile a function 
pdg

# List strings
iz
izz

# List imports
ii

# Seek an offset of a function
s fnc.deadbeef
s 0xdeadbeef

# Find XREFs to an offset
axt @ 0xdeadbeef
```

More at [rizin.re](https://book.rizin.re/) and [field manual](https://github.com/evilcel3ri/yaCTFpl/blob/aleph/manual.md#radare2rizin-suite)
