#!/bin/bash

# Make target folder if it doesn't exist
mkdir -p marfa-selections

# Read each code from codes.txt and copy matching files
while read code; do
    cp IMG_"$code".JPG marfa-selections/ 2>/dev/null
done < codes.txt
