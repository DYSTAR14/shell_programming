#!/bin/bash -x
read -p "Enter Start and End number for Prime Number : " start end
echo $start $end
echo Prime Numbers are 
for ((i=$start;i<=$end;i++))
do
	if [ $i -eq 1 -o $i -eq 0 ];then
		continue
	fi
	flag=1
  	for ((j=2;j<=$i/2;j++))
   do
      if [ $(($i%$j)) -eq 0 ];then
         #echo $i is Not Prime Number
			flag=0
         break
      fi
   done
	if [ $flag -eq 1 ];then
		echo $i
	fi
done
