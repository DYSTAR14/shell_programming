#!/bin/bash -x

#simple linux bash calculator
echo "Enter input:"
read userinput

echo "Result with 2 digits after decimal point:"
echo "scale=2; ${userinput}" | bc

echo "Result with 10 digits after decimal point:"
echo "scale=10; ${userinput}" | bc

echo "Result as rounded integer:"
echo $userinput | bc

num1=75.5
num2=20
add=`echo "scale=4; $num1+$num2" | bc`
sub=`echo "scale=4; $num1-$num2" | bc`
multi=`echo "scale=4; $num1*$num2" | bc`
div=`echo "scale=4; $num1/$num2" | bc`
echo "Addition of $num1 and $num2 is $add"
echo "Subtraction of $num1 and $num2 is $sub"
echo "Multiplication of $num1 and $num2 is $multi"
echo "Division of $num1 and $num2 is $div"
