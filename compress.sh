#!/bin/sh

for piece in Basic Glass Metal Wood RedVBlue Wax; do
  orig=Renders/$piece/Scaled
  dimensions="180x230"
  echo "$orig/180";
  cd $orig;
  mkdir -p 180;
  for f in *.png; do
    convert -resize $dimensions "$f" "180/$f";
  done;
  cd -;
done

orig=Boards/Scaled
dest="512"
dimensions="512x479"
cd $orig
mkdir -p $dest
for f in *.png; do
  echo $dest/$f;
  convert -resize $dimensions "$f" "$dest/$f";
done;
cd -;

orig=Boards/Scaled
dest="1024"
dimensions="1024x958"
cd $orig
mkdir -p $dest
for f in *.png; do
  echo $dest/$f;
  convert -resize $dimensions "$f" "$dest/$f";
done;
cd -;
