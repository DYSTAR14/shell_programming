#!/bin/bash -x
TARGET=34
echo $TARGET
START=0
END=$((100 - 1))
while [[ $START -le $END ]]
do
	MIDDLE=$((START + ((END - START)/2)))
	echo MID : $MIDDLE
	ITEM_AT_MIDDLE=$MIDDLE
	if [[  $ITEM_AT_MIDDLE -gt $TARGET ]]; then
		END=$((MIDDLE-1))
	elif [[ $ITEM_AT_MIDDLE -lt $TARGET ]]; then
		START=$((MIDDLE+1))
	else
		echo $MIDDLE
		exit
	fi
done

