#!/bin/bash
set -ex 
for ((i=1; ; i++)); do
    left="img/$((2*i)).jpg"
    right="img/$((2*i+1)).jpg"

    [[ -f "$left" && -f "$right" ]] || break

    convert "$left" "$right" +append   \( -size 201x1414 xc:'rgba(0,0,0,0)'      -fill 'rgba(0,0,0,0.2)'      -draw 'rectangle 80,0 120,1414'      -blur 0x30   \)   -gravity center   -compose multiply -composite   "img/book$i.jpg"
done
