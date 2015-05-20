#!/bin/bash

##########################################
# MasterChen's Master Combo Lock Crakcer #
# Version 1.0a 2015/04/25                #
##########################################

# This is a script to aid in cracking Master Combination Locks
# It brings the possibilities of 64,000 down to 80 possible combinations

echo "Enter the last number of the combination"
read LASTNUM
echo "The Last Number of the Combination is: $LASTNUM"

#Find the first number possibilities and put them into an array
echo "First Number possibilities:"
counter=0
i=$(( $LASTNUM % 4 ))
while [ $i -lt 40 ]; do
	first_num_poss[$counter]=$i
	echo ${first_num_poss[$counter]}
	let counter+=1
	let i+=4
done

#Find the second number possibilities and put them into an array
echo "Second Number possibilities:"
counter=0
i=$(($(( $LASTNUM % 4 ))-2))

#This if statement gets rid of the small chance of a negative number
if [ $i -lt 0 ] 
then
	let i+=4
fi

while [ $i -lt 40 ]; do
        second_num_poss[$counter]=$i
        echo ${second_num_poss[$counter]}
        let counter+=1
        let i+=4
done

#Put the arrays together and what do we get? Possible Combinations!
for a in ${first_num_poss[@]} ; do
	for b in ${second_num_poss[@]} ; do
		echo $a-$b-$LASTNUM
	done
done


