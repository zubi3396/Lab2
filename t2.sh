#!/bin/bash


num1=(`pidof firefox`)

	array=(`cat /proc/${num1[0]}/status | grep Pid`)
	echo -n ${array[0]}
	echo ${array[1]}	

	echo "`cat /proc/${num1[0]}/status | grep Name`"
	echo -n ${array[2]}
	echo ${array[3]}	
	echo "`cat /proc/${num1[0]}/status | grep State`"
	
