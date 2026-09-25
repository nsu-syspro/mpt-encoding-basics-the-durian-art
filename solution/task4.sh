#!/usr/bin/env bash

# Вывести дату в формате:
#   Freitag, 13. Oktober 2023
D=$(date '+%d' -d "$@")
M=$(date '+%m' -d "$@")
Y=$(date '+%Y' -d "$@")
W=$(date '+%u' -d "$@")

D=$((10#$D))
M=$((10#$M))

case $M in
  01) mon="Januar";;    02) mon="Februar";;  03) mon="März";;
  04) mon="April";;     05) mon="Mai";;      06) mon="Juni";;
  07) mon="Juli";;      08) mon="August";;   09) mon="September";;
  10) mon="Oktober";;   11) mon="November";; 12) mon="Dezember";;
esac

case $W in
  1) day="Montag";;      2) day="Dienstag";;  3) day="Mittwoch";;
  4) day="Donnerstag";;  5) day="Freitag";;   6) day="Samstag";;
  7) day="Sonntag";;
esac

echo "$day, $D. $mon $Y"
