#!/bin/bash -x
n=$1
echo $n
h=1
for ((i=2;i<=n;i++))
do
	h=`echo "scale=4; $h+(1/$i)" | bc`
done
echo Nth Harmonic Number is $h
