#!/usr/bin/env bash

# Вывести дату в формате:
#   Freitag, 13. Oktober 2023

D=$(date '+%d' -d "$@")
M=$(date '+%m' -d "$@")
Y=$(date '+%Y' -d "$@")
W=$(date '+%u' -d "$@")

M=$((10#$M))
W=$((10#$W))

case $M in
  1) mon="Januar";;    2) mon="Februar";; 3) mon="März";;
  4) mon="April";;     5) mon="Mai";;     6) mon="Juni";;
  7) mon="Juli";;      8) mon="August";;  9) mon="September";;
  10) mon="Oktober";;  11) mon="November";; 12) mon="Dezember";;
esac

case $W in
  1) day="Montag";;     2) day="Dienstag";; 3) day="Mittwoch";;
  4) day="Donnerstag";; 5) day="Freitag";;  6) day="Samstag";;
  7) day="Sonntag";;
esac

echo "$day, $D. $mon $Y"
