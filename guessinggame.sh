#!/usr/bin/env bash
# File: guessinggame.sh

file_counter(){
	num=($(find * -type f))		# create array of all files (excludes directories)
	return ${#num[*]}			# return length of array (number of files)
}

echo "How many files are in the current directory $(pwd)?"
read response
file_counter
number_of_lines=$?

while :
do
	if [[ $response =~ ^[0-9]+$ && $response -gt $number_of_lines ]]   # number is too high
	then 
		echo "Number is too high. Please try again."
	elif [[ $response =~ ^[0-9]+$ && $response -lt $number_of_lines ]] # number is too low
	then 
		echo "Number is too low. Please try again."
	elif [[ $response =~ ^[0-9]+$ && $response -eq $number_of_lines ]] # number is correct
	then 
		echo "Congratulations! You've guessed the correct number of files!"
		exit
	else 												   			   # input is not a number
		echo "Please input a number."
	fi
	read response
done