#!/bin/bash

cd library
./configure
make install
cd /
cd etc/nginx/
rm nginx.conf
cd /
cp nginx.conf etc/nginx/nginx.conf
make

