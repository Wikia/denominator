#!/bin/bash
../gradlew clean build
mkdir -p pkg/etc/init/ pkg/opt/denominator/
cp build/denominatord pkg/opt/denominator/
cd pkg
VER=1.4
fpm -s dir -t deb -n denominator -v $VER .
