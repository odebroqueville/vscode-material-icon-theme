#!/bin/bash
for file in *.svg; do
    # Extract the filename without extension
    filename="${file%.*}"
    
    # Convert to 16x16 pixels
    magick "$file" -resize 16x16 "${filename}_16x16.png"
    
    # Convert to 24x24 pixels
    magick "$file" -resize 24x24 "${filename}_24x24.png"

    # Convert to 32x32 pixels
    magick "$file" -resize 32x32 "${filename}_32x32.png"
done
