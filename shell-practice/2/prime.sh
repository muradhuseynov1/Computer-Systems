#!/bin/sh

if [ $# -ne 1 ]
then
	echo "Parameter number is not 1!"
fi

i=2
while [ $i -lt $1 ]
do
	if [ `expr $1 % $i` -ne 0 ]
	then
		echo "It is a prime number"
		exit
	else
		echo "Not a prime number"
		exit
	fi
	i=`expr $i + 1`
done

if [ $1 -eq 1 ]
then
	echo "1 is neither prime nor composite number"
fi

if [ $1 -eq 0 ]
then
	echo "0 is neither prime nor composite number"
fi