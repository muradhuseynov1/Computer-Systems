#!/bin/sh

if [ $# -ne 4 ]
then
	echo "The number of parameters is not 4!"
else
	sum=`expr $1 + $2 + $3`
	echo `expr $sum \* $4`
fi