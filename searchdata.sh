#!/bin/bash

#Author: Luke Tham (s3945839)
#Date: 8/11/2023
#
#Script to search for files on computer based on file type
#

read -p "Enter File Name: " fname # Prompts the user to enter file name to search for
if [ -f "$fname" ]
then
  read -p "Enter Search keywords: " keyword # Prompts user to find keywords in file
  grep -s "$keyword" "$fname" >>/home/luketham/Documents/Project2/Task2/pattern.txt
else
  echo "File could not be found."
fi
