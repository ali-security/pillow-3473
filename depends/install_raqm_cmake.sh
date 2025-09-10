#!/usr/bin/env bash
# install raqm


archive=raqm-cmake-99300ff3

./download-and-extract.sh $archive https://raw.githubusercontent.com/python-pillow/pillow-depends/23aaaad2f6204c22b6e3af9304810ffd76905210/$archive.tar.gz

pushd $archive

mkdir build
cd build
cmake ..
make && sudo make install
cd ..

popd

