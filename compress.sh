#!/bin/sh

for piece in Basic Glass Metal Wood; do
  orig=Renders/$piece/Scaled
  dest="$orig/180"
  dimensions="180x230"
  echo $dest
  mkdir -p $dest
  for f in $dir/*.png; do
    convert -resize $dimensions "$orig/$f" "$dest/${f%.png}.png";
  done;
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
