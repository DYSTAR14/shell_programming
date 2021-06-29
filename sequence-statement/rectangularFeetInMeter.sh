#!/bin/bash -x
length=60
breadth=40
areaInMeter=`echo "scale=4; ($length*$breadth)/10.764" | bc`
echo Reactangular Area $areaInMeter
