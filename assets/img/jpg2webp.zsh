#!/usr/bin/env zsh

input="$1"

magick "$input" -resize 800x  -quality 85 me-800.webp
magick "$input" -resize 1400x -quality 85 me-1400.webp
