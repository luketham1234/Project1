#Author: Luke Tham (s3945839)
#Date: 8/11/2023
#
#Script to search for files on computer based on file type
#

$dir = read-host -prompt "Enter directory: " #prompts user to enter the directory
$typ = read-host -prompt "Enter file type: "
Get-ChildItem -Path $dir* -Filter *$typ | Select-Object Name, Directory | Format-Table -AutoSize *