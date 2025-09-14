

# Required for _ctypes to be available in Python
yum install -y libffi-devel

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
