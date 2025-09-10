#!/bin/bash
# install webp

archive=libwebp-1.3.0

./download-and-extract.sh $archive https://raw.githubusercontent.com/python-pillow/pillow-depends/23aaaad2f6204c22b6e3af9304810ffd76905210/$archive.tar.gz

pushd $archive

./configure --prefix=/usr --enable-libwebpmux --enable-libwebpdemux && make -j4 && sudo make -j4 install

popd
