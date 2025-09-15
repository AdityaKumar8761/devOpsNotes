#!/bin/bash

num="$1"

if (( num % 15 == 0 )); then
    echo "tomCat"
elif (( num % 5 == 0 )); then
    echo "cat"
elif (( num % 3 == 0 )); then
    echo "tom"
else
    echo "it is not divisible by 5, 3 or 15"
fi


