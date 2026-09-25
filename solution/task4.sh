#!/usr/bin/env bash

# Вывести дату в формате:
#   Freitag, 13. Oktober 2023

D=$(date '+%d' -d "$@")
M=$(date '+%m' -d "$@")
Y=$(date '+%Y' -d "$@")
W=$(LC_TIME=de_DE.UTF-8 date '+%A' -d "$@")

M=$((10#$M))

case $M in
  1) mon="Januar";;    2) mon="Februar";; 3) mon="März";;
  4) mon="April";;     5) mon="Mai";;     6) mon="Juni";;
  7) mon="Juli";;      8) mon="August";;  9) mon="September";;
  10) mon="Oktober";;  11) mon="November";; 12) mon="Dezember";;
esac

echo "$W, $D. $mon $Y"
