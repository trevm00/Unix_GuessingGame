#!/usr/bin/env bash
# File: test.sh

function prompt {
	echo "Guess how many files there are in the current directory:"
	read user_guess
}

file_count=$(pwd | ls | wc -l)
passed=0

while [[ $passed -ne 1 ]]
do
	prompt
	if ! [[ $user_guess =~ ^[0-9]+$ ]]
	then
		echo "$user_guess is not a valid number..."
	elif [[ $user_guess -eq $file_count ]]
	then
		echo "YAY you guessed right, there's $user_guess file(s) in the current directory"
		passed=1
	elif [[ $user_guess -gt $file_count ]]
	then
		echo "You entered $user_guess, this value is too high"
	elif [[ $user_guess -lt $file_count ]]
	then
		echo "You entered $user_guess, this value is too low"
	fi
done
