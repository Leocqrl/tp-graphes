#!/usr/bin/bash
#tool=dot
tool=neato
for a in *.dot;
do
	echo "traitement du fichier $a"
	a2="${a%.*}"
	$tool -Tpng $a > $a2.png
	$tool -Tsvg $a > $a2.svg
done
