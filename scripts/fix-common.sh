#!/bin/bash

# usage: 
#        ./fix-images.sh SW_architecture.png SW-architecture.png


HERE=$(pwd)

echo "going to mv $1 to $2"
echo "press <ENTER> to go on"
read r

pushd common
mv $1 $2
git st .
popd

find . -type f -exec sed -i "s/$1/$2/g" {} \;
git diff .
