#!/bin/bash -x

d=$1
m=$2
y=$3

echo date :: $d month :: $m year :: $y
#yo=$(($y-(14-$m)/12))
yo=$(($y-(14-$m)/12))
echo $yo
x=$(($yo+$yo/4-$yo/100+$yo/400))
echo $x
mo=$(($m+12*((14-$m)/12)-2))
echo $mo
do=$((($d+$x+31*$mo/12)%7))
echo $do
