#!/bin/bash
#Author: Junior Technician
#Date: 8/11/2023
#
#Script to create user accounts and assign accounts into group
#
#This prompts the user to enter a username and password 
read -p "Enter Username: " user
read -p "Enter Password: " pwrd
read -p "Enter Group Name: " group

#This adds the user, sets the password, creates the group and assigns user to the group
echo "rmit1234" | sudo -S useradd -m -s /bin/bash $user
echo "$user:$pwrd" | sudo -S chpasswd
echo "Tafe1234" | sudo -S groupadd $group
echo "Tafe1234" | sudo -S gpasswd -a $user $group



#Inspector: Luke Tham (s3945839)
#Date: 8/11/2023
#1. Added prompt to enter group name
#2. Changed User@dd to proper useradd syntax
#3. Added commands to set the password, create the group and assign the user to the group
#4. Added administrator password to perform admin commands (adding user, creating group, assigning user to group)
#5. Added echo to automatically input and prevent prompt


