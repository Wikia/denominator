#!/bin/bash
../gradlew  build 
mkdir -p pkg/etc/init/ pkg/opt/denominator/
cp build/denominatord pkg/opt/denominator/
cd pkg
VER=1.0
fpm -s dir -t deb -n denominator -v $VER .
