#!/bin/bash

myNum=300

if [[ $myNum -eq 300 ]]; then
	echo "myNum is 300"
fi

# -eq is for checking if two integers are equal
# -ne is for checking if two integers are not equal

if [[ -f ~/file.c ]]; then
	echo "The file 'file.c' exists"
else
	echo "File does not exists"
fi

command=/usr/bin/htop

if [[ -f $command ]]; then
	echo "$command is available"
else
	echo "$command is not available"
	# sudo apt update && sudo apt install -y htop
fi

# $command

command=htop

# [[ ... ]] (brackets) is needed only when we write the test commands
# bash internally uses the `test` command when we have the brackets [[ .. ]]
# the below 2 are same ??
if [[ 5 -eq 5 ]]; then
	echo "hello"
fi

if test 5 -eq 5; then
	echo "hello"
fi

# if command -v $command
# then
# either it can be like the above or below
# if command -v $command; then
# and something
#
# the formatter shfmt converts `if command -v $command \n then` to `if command -v $command; then`
if command -v $command; then
	echo "$command is available"
fi
