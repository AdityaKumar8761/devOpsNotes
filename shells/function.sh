#!/bin/bash

function even(){
	if [ -z "$1" ]
	then
		echo "you did not pass the argument for end"
		exit 1  
	fi


	for ((i=1; i<$1 ; i++))
	do
		if (( i % 2 == 0 ))
		then
			echo "$i"
		fi
	done
}

even "$1" 
