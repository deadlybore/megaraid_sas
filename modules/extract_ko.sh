#!/bin/bash

tmpdir=$(mktemp -d)
for f in ../debian/megaraid-sas-modules-*; do
  dpkg-deb -x $f $tmpdir
done
cp -av $tmpdir/lib/modules/* .
rm -rf $tmpdir

