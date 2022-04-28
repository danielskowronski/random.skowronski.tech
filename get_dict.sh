#!/bin/bash
if [[ -f slowa.txt ]]; then
	exit 0
fi

wget http://www.math.uni.wroc.pl/~hebisch/prog/pol.lst -O slowa-iso.txt
iconv -f ISO-8859-2 slowa-iso.txt -t UTF-8 -o slowa.txt
rm slowa-iso.txt

wget https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.0.min.js

wget https://raw.githubusercontent.com/dolph/dictionary/master/popular.txt