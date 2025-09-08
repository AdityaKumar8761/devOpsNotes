#!/bin/bash

#this is for loop

for (( i=0 ; i<5 ; i++ ));
do
	echo "hello world $i"
done


num=0

while [ $num -le 5 ] 
do
	echo "lol $num"
	((num++))
done



