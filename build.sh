#!/bin/bash

docker build -t customb2d .

if [ -e boot2docker.iso ]; then
	echo "Removing old boot2docker.iso ..."
	rm boot2docker.iso
fi

echo "Saving boot2docker.iso ..."

docker run --rm customb2d > boot2docker.iso

echo "Done"
