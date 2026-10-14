#!/usr/bin/bash
#tool=dot
tool=neato
if [ -z "$1" ]; then
	echo "Il faut renseigner un argument"
	exit 2
fi
if [ $# = 1 ]; then
	$tool -Tpng $1.dot >$1.png
	$tool -Tsvg $1.dot >$1.svg
fi
