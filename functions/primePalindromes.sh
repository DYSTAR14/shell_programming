#!/bin/bash -x
ud=0
reverse=""
palindrome(){
	val=$1
	while [ $val -gt 0 ]
	do
		ud=$(($val%10))
		val=$(($val/10))
		reverse=$reverse""$ud
	done
	echo $reverse
}

primeNumber(){
	val=$1
	flag=1
	if [ $val -eq 1 ];then
		flag=0
	else
		for ((i=2;i<=$val/2;i++))
		do
			if [ $(($val%$i)) -eq 0 ];then
				flag=0
				echo $flag
				exit
			fi
		done
		flag=1
	fi
	echo $flag

}
echo Enter the Number
read num
result=$(palindrome $num)
echo $result
primeFlag=$(primeNumber $num)
echo $primeFlag
if [ $num -eq $result -a $primeFlag -eq 1 ];then
	echo It is prime Palindrome Number
elif [ $num -eq $result ];then
	echo It is a Palindrome
elif [ $primeFlag -eq 1 ];then
   echo It is a Prime Number
else
   echo It is Neither Prime NOR Palindrome Number

fi

