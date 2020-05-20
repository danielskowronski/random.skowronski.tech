#!/bin/bash
if [[ -f slowa.txt ]]; then
	exit 0
fi

wget http://www.math.uni.wroc.pl/~hebisch/prog/pol.lst -O slowa-iso.txt
iconv -f ISO-8859-2 slowa-iso.txt -t UTF-8 -o slowa.txt
rm slowa-iso.txt