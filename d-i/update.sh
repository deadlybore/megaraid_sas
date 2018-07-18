#!/bin/bash

URL="https://github.com/deadlybore/megaraid_sas/raw/personify"
for path in ../deb/*amd64.deb; do
  file=${path##*/}
  t=${file#megaraid-sas-modules-}
  kernel_version=${t%%_*}
  # Hope ls sorts files with the latest version lastest.
  echo "wget $URL/deb/$file && udpkg -i $file && disk-detect" > $kernel_version
done

