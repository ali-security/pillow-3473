#!/bin/bash
# install libimagequant

archive=libimagequant-4.1.1

./download-and-extract.sh $archive https://raw.githubusercontent.com/python-pillow/pillow-depends/23aaaad2f6204c22b6e3af9304810ffd76905210/$archive.tar.gz

pushd $archive/imagequant-sys

cargo install cargo-c
cargo cinstall --prefix=/usr --destdir=.
sudo cp usr/lib/libimagequant.so* /usr/lib/
sudo cp usr/include/libimagequant.h /usr/include/

popd
