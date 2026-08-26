#!/bin/sh
set -ex
convert $(printf '%s\n' book*.jpg | sort -V) Portfolio.pdf
exiftool -Title="Portfolio - Wiktoria Kiedrowicz" -Author="Wiktoria Kiedrowicz" -Subject="Portfolio" -Keywords="book,pages,portfolio" Portfolio.pdf
