#!/bin/bash
showTable()

{
	for i in `seq 1 10`
	do
	echo "$1 * $i =`expr $1 \* $i`"
	done	
}

showTable1()

{
	for i in `seq 3 10`
	do
	echo "$2 * $i =`expr $2 \* $i`"
	done	
}

showTable2()

{
	for i in `seq 1 13`
	do
	echo "$2 * $i =`expr $2 \* $i`"
	done	
}


showTable3()

{
	for i in `seq $3 $5`
	do
	echo "$1 * $i =`expr $1 \* $i`"
	done	
}


showTable4()

{
	declare -i num=$3
	declare -i num1=$5
	while [ $num1 -ge $num ]
	do
	echo "$1 * $num1 =`expr $1 \* $num1`"
	num1=$num1-1
	
 	done
}


if [ $# -eq 0 ]
then 
echo "Zero Arguements."
exit
fi

if [ $# -gt 6 ]
then 
echo "More than 6 Arguements."
exit
fi


if [ $# -eq 1 ]
then
num=$1
showTable $num
fi

if [ $1 = "-s" -a  $# -eq 2 ]
then 
num1=$2
showTable1 -s $num1
fi


if [ $1 = "-e" -a $# -eq 2 ]
then 
num1=$2
showTable2 -e $num1
fi




if [  $# -eq 5 ]
then 
num1=$1
num2=$3
num3=$5
showTable3 $num1 -s $num2 -e $num3 
fi



if [  $# -eq 6 ]
then 
num1=$1
num2=$3
num3=$5
showTable4 $num1 -s $num2 -e $num3 -r 
fi

