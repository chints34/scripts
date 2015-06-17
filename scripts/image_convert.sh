#!/bin/sh

for i in *.png ; do
convert -resize 18X18! "$i" "${i%.*}.jpg" || exit 0
echo "remving ${i}"
rm ${i}
done
