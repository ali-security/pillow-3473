

# install dependencies which are too old in Amazon Linux 2
# yum install -y libtiff-devel libjpeg-devel openjpeg2-devel zlib-devel \
#     freetype-devel lcms2-devel libwebp-devel tcl-devel tk-devel \
#     harfbuzz-devel fribidi-devel libraqm-devel libimagequant-devel libxcb-devel

# Required for _ctypes to be available in Python
# yum install -y libffi-devel

# Download and compile Python 3.9.16
wget https://www.python.org/ftp/python/3.9.16/Python-3.9.16.tgz
tar xzf Python-3.9.16.tgz
cd Python-3.9.16
./configure --enable-optimizations
make install
cd ..

# Update the symlink in the virtual environment to point to the new Python
ln -sf /Python-3.9.16/python /vpy3/bin/python3
