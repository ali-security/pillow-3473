pacman -Sy --noconfirm --needed base-devel freetype2 harfbuzz libjpeg-turbo

wget https://www.python.org/ftp/python/3.9.17/Python-3.9.17.tgz
tar xzf Python-3.9.17.tgz
cd Python-3.9.17
./configure --enable-optimizations
make install
cd ..

# Update the symlink in the virtual environment to point to the new Python
ln -sf /Python-3.9.17/python /vpy3/bin/python3

