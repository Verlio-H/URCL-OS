#!/bin/sh
echo "Please provide a valid keyboard layout"
select layout in "qwerty_us" "qwerty_uk" "colemak" "colemak-dh"; do
    case $layout in
        qwerty_us ) cp src/io/virtual/layouts/qwerty_us.urcl keyboard.urcl; break;;
        qwerty_uk ) cp src/io/virtual/layouts/qwerty_uk.urcl keyboard.urcl; break;;
        colemak ) cp src/io/virtual/layouts/colemak.urcl keyboard.urcl; break;;
        colemak-dh ) cp src/io/virtual/layouts/colemak-dh.urcl keyboard.urcl; break;;
    esac
done