#!/bin/bash

# gather the coverage data
python3 -m pip install --index-url 'https://:2023-04-01T09:28:03.251098Z@time-machines-pypi.sealsecurity.io/' codecov
if [[ $MATRIX_DOCKER ]]; then
  python3 -m coverage xml --ignore-errors
else
  python3 -m coverage xml
fi
