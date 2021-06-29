#!/bin/bash -x
count=0
Fruits[((count++))]="Apple"
Fruits[((count++))]="Grapes"
Fruits[((count++))]="Mango"

names=(abc 17 def 9 pqr mno 77 xyz)
echo ${Fruits[*]}
echo ${names[@]}
