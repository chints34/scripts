#!/bin/sh
cd ${1}/.facedetect/persons
FILES="*"
for f in $FILES
do
  # take action on each file. $f store current file name
	rm -r $f
	echo "removing ${f}"
	find "${1}" -type f -name '*bin' -exec sed -i "s/${f}/ /g" {} +
done
