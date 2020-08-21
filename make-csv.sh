#!/bin/bash

sourcefile="sample.txt"
targetfile="sample.csv"
colct=3


col=0
line=""

rm $targetfile

makeline(){
	line="$line\"$str\""

	if [[ "$col" < $colct ]]
	then
		line="$line,"
	fi

	if [[ "$col" == $colct ]]
	then
		echo "$line" >> $targetfile

		line=""
		col=0
	fi
}

while IFS= read -r str || [ -n "$str" ];
do
	col=$((col+1))
	makeline "$str"
done < $sourcefile

echo " Done."
