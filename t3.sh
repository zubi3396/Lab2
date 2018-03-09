#!/bin/bash

showmeowner()
{
	for i in `ls`
	do 
	set `ls -il $i`
	name="$5"
	shift 1
	file="$9"
	echo $name $file

	done
	
}

if [ $# -eq 0 ]
then
echo "No arguments"
exit
fi

if [ $# -gt 1 ]
then
echo "greater than one arguments"
exit
fi


if [ $# -eq 1 ]
then
showmeowner zubi
fi
