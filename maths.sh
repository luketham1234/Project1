#!/bin/bash
#Author: Luke Tham (s3945839)
#Date: 8/11/2023
#
#Script to perform basic calculator functions
#
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
res1=$(expr $num1 + $num2)
res2=$(expr $num1 - $num2)
res3=$(expr $num1 \* $num2)
res4=$(expr $num1 / $num2)
while true # keep displaying menu until user selects exit
do
    echo "This Program operates as a calculator for Linux based"
    echo "1. Add numbers"
    echo "2. Subtract numbers"
    echo "3. Multiply numbers"
    echo "4. Divide numbers"
    echo "5. Quit Program"
    read -p "Enter Option: " opt # Prompts user to enter a number between 1 and 5
    if [ $opt == "1" ] # option 1 selected
    then
        echo "Addition Result: $res1"
    elif [ $opt == "2" ] # option 2 selected
    then
        echo "Subtraction Result: $res2"
    elif [ $opt == "3" ] # option 3 selected
    then
        echo "Multiplication Result: $res3"
    elif [ $opt == "4" ] # option 4 selected
    then
        echo "Division Result: $res4"
    elif [ $opt == "5" ] # option 5 selected
    then
    	exit
    else # invalid option gives error message
    	echo 'Invalid selection enter a number between 1 and 5. Try again!!'
    
    fi
done
