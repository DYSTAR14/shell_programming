#!/bin/bash -x
read -p "Enter three number : " a b c
echo $a $b $c
aop[0]=$((a+b*c))
aop[1]=$((a%b+c))
aop[2]=$((c+a/b))
aop[3]=$((a*b+c))
echo NUmber is $aop1 $aop2 $aop3 $aop4
max=0
min=999
for i in ${aop[*]}
do
   if [[ $i -gt $max ]];
   then
      max=$i
   fi

   if [[ $i -lt $min ]];
   then
      min=$i
   fi
done
echo max : $max
echo min : $min


