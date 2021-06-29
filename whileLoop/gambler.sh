#!/bin/bash -x
rs=100
gwins=0
gloss=0
nbet=0
while [ $rs -lt 200 -a $rs -gt 0 ]
do
   bet=$((RANDOM%2))
	nbet=$((nbet+1))
	if [ $bet -eq 1 ];then
   	rs=$((rs+1))
		gwins=$((gwins+1))
	fi
   if [ $bet -eq 0 ];then
      rs=$((rs-1))
		gloss=$((gloss+1))
   fi
done
echo Rs:$rs GamblerWins:$gwins GamblerLoss:$gloss No_OF_Bet:$nbet
