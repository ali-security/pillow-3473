# Required for _ctypes to be available in Python
yum install -y libffi-devel

# Download and compile Python 3.9.16
wget https://www.python.org/ftp/python/3.9.16/Python-3.9.16.tgz
tar xzf Python-3.9.16.tgz
cd Python-3.9.16
./configure --enable-optimizations
make install
cd ..

# Update the symlink in the virtual environment to point to the new Python
ln -sf /Python-3.9.16/python /vpy3/bin/python3
