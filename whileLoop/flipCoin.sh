#!/bin/bash -x
wins=0
headCoin=0
tailCoin=0
while [ $wins -lt 11 ]
do
	coins=$((RANDOM%2))
	case $coins in
		1)
			coins=$((RANDOM%2))
			if [ $coins -eq 1 ];then
				headCoin=$((headCoin+1))
			fi
			;;
		0)
      	coins=$((RANDOM%2))
      	if [ $coins -eq 0 ];then
      	   tailCoin=$((tailCoin+1))
      	fi
		   ;;
	esac
	if [ $headCoin -eq 11 ];then
		echo Heads Wins $headCoin Time
		wins=11
	elif [ $tailCoin -eq 11 ];then
		echo Tails Wins $tailCoin Time
		wins=11
	fi
done


