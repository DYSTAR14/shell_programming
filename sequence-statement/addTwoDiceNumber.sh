#!/bin/bash -x
num1=$(((RANDOM%6)+1))
echo Number one is $num1
num2=$(((RANDOM%6)+1))
echo Number two is $num2
echo Sum is $(($num1+$num2))

