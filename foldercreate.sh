#!/bin/bash

for file in *.m4r
do
    mkdir -p "io.github.suntrackspb.${file}/DEBIAN";
    touch "io.github.suntrackspb.${file}/DEBIAN/control";

	echo "Package: io.github.suntrackspb.${file}" > "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Name: ${file} Ringtone" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Version: 1.0" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Architecture: iphoneos-arm" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Author: SunTrack <repo@ggbb.ws>" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Depiction: https://suntrackspb.github.io/cydia/depiction/depiction.php?filename=${file}" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Section: Ringtones" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Description: ${file}" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Homepage: https://suntrackspb.github.io/cydia/depiction/depiction.php?filename=${file}" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo "Maintainer: SunTrack <repo@ggbb.ws>" >> "io.github.suntrackspb.${file}/DEBIAN/control"
	echo ""

    mkdir -p "io.github.suntrackspb.${file}/Library/Ringtones";
    cp ${file} "io.github.suntrackspb.${file}/Library/Ringtones";
done
