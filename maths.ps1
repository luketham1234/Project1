#Author: Luke Tham (s3945839)
#Date: 8/11/2023
#
#Script to perform basic calculator functions
#
[int]$num1 = read-host -prompt "Enter 1st Number: " # The user is being prompted to enter a number

[int]$num2 = read-host -prompt "Enter 2nd Number: " # The user is being asked to enter another number

$res1 = invoke-expression $num1+$num2 # Numbers will be added
$res2 = invoke-expression $num1-$num2
$res3 = invoke-expression $num1*$num2 # Numbers will be multiplied 
$res4 = invoke-expression $num1/$num2 

$opt = 0
while ($opt -ne 5) {
    Write-Output "This Program operates as a calculator for Windows based"
    Write-Output "1. Add numbers"
    Write-Output "2. Subtract numbers"
    Write-Output "3. Multiply numbers"
    Write-Output "4. Divide numbers"
    Write-Output "5. Quit Program"

    $opt = Read-Host -Prompt "Enter Option: " # Prompts user to select option between 1 and 5
    if ($opt -eq 1) {
        Write-Output "Addition Result: $res1"
    }
    elseif ($opt -eq 2) {
        Write-Output "Subtraction Result: $res2"
    }
    elseif ($opt -eq 3) {
        Write-Output "Multiplication Result: $res3"
    }
    elseif ($opt -eq 4) {
        Write-Output "Division Result: $res4"
    }
    elseif ($opt -eq 5) {
        exit
    }
    else {
        Write-Output "Invalid selection enter a number between 1 and 5. Try again!!"
    }
}