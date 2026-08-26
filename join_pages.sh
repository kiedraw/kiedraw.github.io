#!/bin/sh
set -ex 
for ((i=0; ; i++)); do
    left="$((2*i)).jpg"
    right="$((2*i+1)).jpg"

    [[ -f "$left" && -f "$right" ]] || break

    convert "$left" "$right" +append   \( -size 201x1414 xc:'rgba(0,0,0,0)'      -fill 'rgba(0,0,0,0.2)'      -draw 'rectangle 80,0 120,1414'      -blur 0x30   \)   -gravity center   -compose multiply -composite   "book$i.jpg"
done
