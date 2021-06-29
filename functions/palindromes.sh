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
echo Enter the Number
read num
result=$(palindrome $num)
echo $result
if [ $num -eq $result ];then
   echo It is Palindrome
else
   echo It is Not a Palindrome
fi
