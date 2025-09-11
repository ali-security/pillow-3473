# pacman -Sy --noconfirm --needed base-devel libtiff-devel # freetype2 harfbuzz libjpeg-turbo

pacman -Sy --needed --noconfirm base-devel zlib zlib-devel \
    libjpeg-turbo libjpeg-turbo-dev libtiff libtiff-dev \
    libwebp libwebp-dev freetype2 freetype2-dev \
    lcms2 lcms2-dev libimagequant libimagequant-dev \
    harfbuzz harfbuzz-dev fribidi fribidi-dev libxcb libxcb-dev \
    openjpeg2 openjpeg2-dev

wget https://www.python.org/ftp/python/3.9.17/Python-3.9.17.tgz
tar xzf Python-3.9.17.tgz
cd Python-3.9.17
./configure --enable-optimizations
make install
cd ..

# Update the symlink in the virtual environment to point to the new Python
ln -sf /Python-3.9.17/python /vpy3/bin/python3

