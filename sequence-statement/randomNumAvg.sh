#!/bin/bash -x
num1=$((RANDOM%100))
echo Number 1 : $num1
num2=$((RANDOM%100))
echo Number 2 : $num2
num3=$((RANDOM%100))
echo Number 3 : $num3
num4=$((RANDOM%100))
echo Number 4 : $num4
num5=$((RANDOM%100))
echo Number 5 : $num5
echo AVG is $(((num1+num2+num3+num4+num5)/5))
