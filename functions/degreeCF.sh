#!/bin/bash -x
degreeCF(){
	fah=$1
	cel=$(((fah-32)*5/9))
	echo $cel
}
degreeFC(){
   cel=$1
   fah=$(((cel*9/5)+32))
   echo $fah
}
echo 1.Degree Celsius to Degree Fahrenheit
echo 2.Degree Fahrenheit to Degree Celsius
read num
echo $num
case $num in
	1) echo C to F Enter Degree Fahrenheit
		read degF
		degC=$( degreeCF $degF)
		echo $degC
	;;
	2) echo F to C Enter Degree Celsius
		read degC
      degF=$( degreeFC $degC)
      echo $degF
	;;
esac
