#!/bin/bash

for file in *.m4r
do
    mkdir -p "io.github.suntrackspb.${file}/DEBIAN";
    touch "io.github.suntrackspb.${file}/DEBIAN/control";
    echo "" > "io.github.suntrackspb.${file}/DEBIAN/control"
    mkdir -p "io.github.suntrackspb.${file}/Library/Ringtones";
    cp ${file} "io.github.suntrackspb.${file}/Library/Ringtones";
done
