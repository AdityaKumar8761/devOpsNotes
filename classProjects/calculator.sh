#!/bin/bash

echo "-------welcome-------"
read -p "what do you want to do (exit, +, -, /, *): " input

if [ "$input" == "exit" ]
then
    exit 0
fi

if [ "$input" == "+" ]
then
    read -p "enter the first number: " num1
    read -p "enter the second number: " num2
    echo $((num1 + num2))
fi

if [ "$input" == "-" ]
then
    read -p "enter the first number: " num1
    read -p "enter the second number: " num2
    echo $((num1 - num2))
fi

if [ "$input" == "/" ]
then
    read -p "enter the first number: " num1
    read -p "enter the second number: " num2
    # Added check for division by zero
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed"
    else
        echo $((num1 / num2))
    fi
fi

if [ "$input" == "*" ]
then
    read -p "enter the first number: " num1
    read -p "enter the second number: " num2
    echo $((num1 * num2))
fi
