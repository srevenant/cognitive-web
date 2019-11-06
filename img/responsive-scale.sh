#!/bin/sh

baseimg="$1"
basename=${baseimg%.*}
baseext=${baseimg##*.}
sizes="576 768 992 1200"

for size in $sizes; do
    new="$basename-${size}w.$baseext"
    echo "$new"
    convert -resize $size $baseimg $new
done
