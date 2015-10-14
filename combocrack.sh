#!/bin/bash

clear 

echo "##########################################"
echo "# MasterChen's Master Combo Lock Crakcer #"
echo "# Version 1.0b 2015/09/12                #"
echo "##########################################"
echo " "
echo "This is a script to aid in cracking Master Combination Locks..."
echo "It brings the possibilities of 64,000 down to 80 possible combinations, which bring cracking time down to ~30 minutes if attempted continuously..."

sleep 7

clear

echo "The first step in cracking a Master combination lock is to find the last number."
echo " "
echo "You do this by pulling the U bar away from the lock and taking note of the stick points."
echo " "
echo "As you turn the dial, you will stick on different numbers. There are 11 stick points. The last number in the combination is the stick point that is unlike the other 10."
echo " "
echo "There will be 6 stick points on the dial that stick between two numbers, as in stopping beteen 9 and 10 for example. All 6 of these points can be thrown out."
echo " "
echo "The other 5 points will stick 'on' a number, that is where the dial stops between 14.5 and 15.5 for example; the stick point would be considered 15."
echo " "
echo "Out of the stick points that land 'on' a number, the last number will be the one that differs from the others in the ones place. Meaning, if the stick points on numbers are 5, 15, 25, 35, and 12, then the last number in the combination would be 12."
echo "Enter the last number of the combination"
read LASTNUM
echo "The Last Number of the Combination is: $LASTNUM"
sleep 2
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
sleep 3
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

FOO=`expr $LASTNUM + 2`
BAR=`expr $LASTNUM - 2`

echo "#######"
echo $FOO
echo $BAR

sleep 5
#Put the arrays together and what do we get? Possible Combinations!
for a in ${first_num_poss[@]} ; do
	for b in ${second_num_poss[@]} ; do
		echo $a-$b-$LASTNUM
	done
done


