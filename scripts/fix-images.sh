#!/bin/bash

# usage: 
#        ./fix-images.sh SW_architecture.png SW-architecture.png


HERE=$(pwd)

echo "going to mv $1 to $2"
echo "press <ENTER> to go on"
read r

pushd figures
mv $1.png $2.png
mv $1.jpg $2.jpg
git st .
popd

pushd figures.color
mv $1.png $2.png
mv $1.jpg $2.jpg
git st .
popd

pushd figures.gray
mv $1.png $2.png
mv $1.jpg $2.jpg
git st .
popd

pushd movies
mv $1.png $2.png
mv $1.jpg $2.jpg
git st .
popd

pushd figures_raw
mv $1.svg $2.svg
git st .
popd

echo 
find . -type f -exec sed -i "s/$1/$2/g" {} \;
git diff .
