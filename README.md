# ims-qemu-img

ZVHD/ZVHD2 is a private image format for Huaweicloud.
This module is based on qemu 2.3.0 version to support zvhd/zvhd2 format convert from/to other formats by qemu-img command

## How to use this module?

### Requirements

The development environment for compiling this module consists of:
- qemu 2.3.0 version
- zstd library

### Requirements CentOS

Install the necessary development packages:
```
 yum groupinstall "Development tools"
 yum install glib2-devel
 yum install zlib-devel
 yum install openssl-devel
 yum install libuuid-devel
```

### Requirements Debian

Install the necessary development packages:

```bash
sudo apt-get install -y build-essential \
	libglib2.0-dev \
	zlib1g-dev \
	libssl-dev \
	uuid-dev \
	autoconf \
	autotools-dev \
	automake \
	libtool
```

### Compile

Download,compile and install zstd library:
```
https://github.com/facebook/zstd
```

Enter the source code directory and compile the module:
```
make
make install
```

Download qemu 2.3.0 version:
```
https://download.qemu.org/qemu-2.3.0.tar.bz2
```

Exctract qemu-2.3.0.tar.bz2:

```bash
tar xvfj qemu-2.3.0.atr.bz2
```

Copy all the 'src' files of this module to 'qemu-2.3.0/block' directory:

```
cp ~/ims-qemu-img/src/* ~/qemu-2.3.0/block/
```

Enter the 'qemu-2.3.0' directory,configure and compile
```
./configure --target-list=x86_64-softmmu --enable-uuid --disable-werror
make
```

The qemu-img support zvhd/zvhd2 format is in the 'qemu-2.3.0' directory.
```
./qemu-img --help
```

Now the 'Supported formats' of qemu-img includ zvhd and zvhd2.

