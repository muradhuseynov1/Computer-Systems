#!/bin/sh

if [ $# -ne 1 ]
then
	echo "Only 1 parameter needed."
	exit 1
fi

filename=$1

if [ ! -f $filename ]
then
	echo "No such file."
	exit 1
fi 

Line=1
while read line
do
   sumOdd=0
   sumEven=0
   for i in $line
   do
      if [ `expr $Line % 2` -eq 0 ]
      then
          if [ `expr $i % 2` -eq 0 ]
          then
             sumEven=`expr $sumEven + $i`
          fi
      else
          if [ `expr $i % 2` -ne 0 ]
          then
              sumOdd=`expr $sumOdd + $i`
          fi
      fi
   done
   if [ `expr $Line % 2` -eq 0 ]
   then
     echo $sumEven
   else
     echo $sumOdd
   fi
   Line=`expr $Line + 1`
done < $filename

