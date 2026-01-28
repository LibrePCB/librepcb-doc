#!/bin/sh

flag=$(identify -format '%[processed]' $@)
if [ "$flag" = "true" ]; then
  echo "Skipping $@ (already processed)"
else
  echo "Process $@..."

  # Remove drop shadows (if any)
  #convert $@ -channel A -threshold 75% +channel -trim $@

  # If it's a window, make rounded corners and add a window border.
  TOPLEFT_COLOR=`magick $@ -format "%[hex:u.p{0,0}]\n" info:`
  if [ "$TOPLEFT_COLOR" = "00000000" ]; then

    # Extract left/right/bottom borders and convert light colors to border color
    convert $@ -alpha set -channel RGBA -fx 'i==0 || i==w-1 || j==h-1 ? u : transparent' \
      -colorspace HSL -channel lightness -separate +channel \
      -threshold 50% -transparent black -fill "#343434" -colorize 100% \
      "${@/.png/~1.png}"

    # Overlay manual border colors with input image
    convert $@ "${@/.png/~1.png}" -composite $@

    # Make nice round corners at top left and right
    convert $@ \
      \( +clone -alpha extract \
        \( -size 17x17 xc:black -draw 'fill white circle 17,17 17,0' -write mpr:arc +delete \) \
        \( mpr:arc \) -gravity northwest -composite \
        \( mpr:arc -flop \) -gravity northeast -composite \
      \) \
      -alpha off -compose CopyOpacity -composite -compose over \
      \( -clone 0 -fill "black" -colorize 100% \) \
      +swap -background none -layers merge +repage $@
  fi

  # Remove temporary images
  rm "${@/.png/~1.png}"

  # Reduce file size
  pngcrush -rem allb -brute -reduce -ow $@

  # Set flag that this file has been processed
  convert $@ -set "processed" "true" $@
fi
