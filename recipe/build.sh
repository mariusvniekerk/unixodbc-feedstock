#!/bin/bash

set -e
set -x

CFLAGS="-O2 ${CFLAGS}" CXXFLAGS="-O2 ${CXXFLAGS}" ./configure --sysconfdir=/etc --prefix=$PREFIX
make -j${CPU_COUNT}
make install
