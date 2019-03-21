#!/bin/bash

outFile="docker.iso"

docker build -t customb2d .

if [ -e $outFile ]; then
	echo "Removing old $outFile ..."
	rm $outFile
fi

echo "Saving $outFile ..."

docker run --rm customb2d > $outFile

echo "Done"
