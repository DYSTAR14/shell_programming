#!/bin/bash -x
length=60
breadth=40
areaInMeter=`echo "scale=4; ($length*$breadth)/10.764" | bc`
echo Reactangular Area $areaInMeter
meterInAcres=`echo "scale=4; ($areaInMeter*25)/4047" | bc`
echo Acres is $meterInAcres
