#!/bin/bash

read -p "whats the type of patter you want" t
read -p "what is the size of the pattern" s

if [ $t == "t1" ]
then
	for (( i=0 ; i<s ; i++ )) do
		for (( j=s-i-1 ; j>0 ; j-- )) do
			echo -n " "
		done
		for (( k=0 ; k<i+1 ; k++ )) do
			echo -n "*"
		done
		echo
	done
elif [ $t == "t2" ]
then
        for (( i=0 ; i<s ; i++ )) do
                for (( k=0 ; k<i+1 ; k++ )) do
                        echo -n "*"
                done
		echo
	done
elif [ $t == "t3" ]
then
        for (( i=0 ; i<s ; i++ )) do
                for (( j=s-i-1 ; j>0 ; j-- )) do
                        echo -n " "
                done
                for (( k=0 ; k<i+1 ; k++ )) do
                        echo -n "*"
                done
		for (( l=0 ; l<i ; l++ )) do
			echo -n "*"
		done
                echo
        done
elif [ $t == "t4" ]
then
	for (( i=0 ; i<s ; i++ )) do
		for (( j=s ; j>0 ; j-- )) do
			echo -n "*"
		done	
		echo
	done
elif [ $t == "t5" ]
then
    for (( i=s ; i>0 ; i-- )) do
        for (( j=0 ; j<i ; j++ )) do
            echo -n "*"
        done
        echo
    done

elif [ $t == "t6" ]
then
    for (( i=s ; i>0 ; i-- )) do
        for (( j=0 ; j<s-i ; j++ )) do
            echo -n " "
        done
        for (( k=0 ; k<i ; k++ )) do
            echo -n "*"
        done
        echo
    done

elif [ $t == "t7" ]
then
    for (( i=0 ; i<s ; i++ )) do
        for (( j=s-i-1 ; j>0 ; j-- )) do
            echo -n " "
        done
        for (( k=0 ; k<2*i+1 ; k++ )) do
            echo -n "*"
        done
        echo
    done

    for (( i=s-2 ; i>=0 ; i-- )) do
        for (( j=s-i-1 ; j>0 ; j-- )) do
            echo -n " "
        done
        for (( k=0 ; k<2*i+1 ; k++ )) do
            echo -n "*"
        done
        echo
    done
fi

