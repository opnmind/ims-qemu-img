git clone https://github.com/facebook/zstd
cd zstd && make && sudo make install && cd ..
wget https://download.qemu.org/qemu-2.3.0.tar.bz2
tar xvfj qemu-2.3.0.tar.bz2
cp src/* qemu-2.3.0/block/
cd qemu-2.3.0 && make && ./qemu-img --help

