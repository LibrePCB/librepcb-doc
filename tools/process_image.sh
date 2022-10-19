#!/bin/sh

TOPLEFT_COLOR=`magick $@ -format "%[hex:u.p{0,0}]\n" info:`
if [ "$TOPLEFT_COLOR" = "00000000" ]
then
  echo "Has top corners"
  TOP_CORNERS="( mpr:arc ) -gravity northwest -composite ( mpr:arc -flop ) -gravity northeast -composite"
else
  echo "Does not have top corners"
  TOP_CORNERS=""
fi

BORDER_COLOR=`magick $@ -format "%[hex:u.p{0,20}]\n" info:`
if [ "$BORDER_COLOR" = "D3D3D3FF" ]
then
  echo "Border already added, skipping."
else
  convert $@ \
    \( +clone -alpha extract \
      \( -size 15x15 xc:black -draw 'fill white circle 15,15 15,0' -write mpr:arc +delete \) \
      $TOP_CORNERS \
    \) \
    -alpha off -compose CopyOpacity -composite -compose over \
    \( -clone 0 -fill "#D3D3D3FF" -colorize 100% \) \
    \( -clone 0 -alpha extract -virtual-pixel black -morphology edgein octagon:1  \) \
    -compose over -composite \
    \( +clone -background black \) \
    +swap -background none -layers merge +repage $@

  pngcrush -rem allb -brute -reduce -ow $@
fi