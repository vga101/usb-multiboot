#!/bin/bash
#
# Convenience:
# prints out suggested menuentry statements
# for the *.iso files in /images
# VG 2018

dirname=/usr/bin/dirname
test -x "$dirname" || { echo "$dirname not available"; exit 1; }

wd="$( $dirname $0 )"
cd "$wd/../../images"

for f in *.iso ; do printf 'menuentry "%s" {\n        execute_distro_menu "/images/%s"\n}\n\n' $f $f; done

