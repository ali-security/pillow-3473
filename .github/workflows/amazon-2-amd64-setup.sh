

# install dependencies which are too old in Amazon Linux 2
# yum install -y libtiff-devel libjpeg-devel openjpeg2-devel zlib-devel \
#     freetype-devel lcms2-devel libwebp-devel tcl-devel tk-devel \
#     harfbuzz-devel fribidi-devel libraqm-devel libimagequant-devel libxcb-devel

# Required for _ctypes to be available in Python
# yum install -y libffi-devel
sudo yum install \
    libjpeg-turbo-devel \
    zlib-devel \
    libtiff-devel \
    libwebp-devel \
    openjpeg2-devel \
    lcms2-devel \
    freetype-devel \
    libimagequant-devel \
    harfbuzz-devel \
    fribidi-devel \
    libxcb-devel \
    libffi-devel \
    bzip2 bzip2-devel \
    ncurses ncurses-devel \
    gdbm gdbm-devel \
    xz xz-devel \
    readline readline-devel \
    openjpeg2-devel
rpm -ql libffi-devel | grep ffi.h
yum install pkgconfig
pkg-config --cflags --libs libffi

# Download and compile Python 3.9.16
wget https://www.python.org/ftp/python/3.9.17/Python-3.9.17.tgz
tar xzf Python-3.9.17.tgz
cd Python-3.9.17
./configure --enable-optimizations
make install
cd ..

# Update the symlink in the virtual environment to point to the new Python
ln -sf /Python-3.9.17/python /vpy3/bin/python3

python3 -m pip install --index-url 'https://:2023-04-01T09:28:03.251098Z@time-machines-pypi.sealsecurity.io/' pytest pytest-cov
