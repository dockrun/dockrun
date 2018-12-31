#!/bin/sh
set -e

thisScript=$(readlink -f "$0")
thisFolder=$(dirname "$thisScript")

version=$1
tag=$2
packageFolder=$thisFolder/../dockrun-$tag
srcFolder=$thisFolder/../../../..

mkdir -p $packageFolder/DEBIAN

# Create package
cat > $packageFolder/DEBIAN/control << _EOF_
Package: dockrun
Version: $version
Section: base
Priority: optional
Architecture: all
Depends:
Maintainer: Hans-Filip Elo <hansfilipelo@gmail.com>
Description: dockrun uses Alpine GNU/Linux along with Docker to simplify package management for all platforms
  https://dockrun.github.io
_EOF_

# Install dockrun
PREFIX=$packageFolder make install -f $srcFolder/Makefile
dpkg-deb --build $packageFolder
