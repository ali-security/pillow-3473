#!/usr/bin/env bash
# install raqm


archive=libraqm-0.10.0

./download-and-extract.sh $archive https://raw.githubusercontent.com/python-pillow/pillow-depends/23aaaad2f6204c22b6e3af9304810ffd76905210/$archive.tar.gz

pushd $archive

meson build --prefix=/usr && sudo ninja -C build install

popd

