#!/bin/bash -x
var1=20
var2=30
if [ $var1 -ge $var2 ]
then 
	echo $var1 is greater than equals to $var2
else
	echo $var1 is less than $var2
fi
