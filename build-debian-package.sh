#!/bin/sh -e

cd `dirname $0`

rm -rf debian-tmp && mkdir debian-tmp
cp -r packaging/debian steam-session/* debian-tmp

cd debian-tmp
fakeroot dpkg-buildpackage -b -us -uc
cd ..
rm -rf debian-tmp

