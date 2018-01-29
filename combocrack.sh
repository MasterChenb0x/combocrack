#!/bin/bash

clear 

usage () {
	echo "usage: $0 <last_num>"
	exit 1
}

if [ $# -lt 1 ]
then
	usage
	exit 0
fi

echo "The Last Number of the Combination is: $1"
sleep 2
#Find the first number possibilities and put them into an array
echo "First Number possibilities:"
counter=0
i=$(( $1 % 4 ))
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
i=$(($(( $1 % 4 ))-2))

#This if statement gets rid of the small chance of a negative number
if [ $i -lt 0 ] 
then
	let i+=4
fi

FOO=$(( $1 - 2 ))
BAR=$(( $1 + 2 ))
while [ $i -lt 40 ]; do
        second_num_poss[$counter]=$i
        echo ${second_num_poss[$counter]}
	let counter+=1
        let i+=4
done

echo "#######"
echo $FOO
echo $BAR

DEL=($FOO $BAR)
for del in ${DEL[@]}
do
	second_num_poss=(${second_num_poss[@]/$del})
done

sleep 5
#Put the arrays together and what do we get? Possible Combinations!
for a in ${first_num_poss[@]} ; do
	for b in ${second_num_poss[@]} ; do
		echo $a-$b-$1
	done
done


