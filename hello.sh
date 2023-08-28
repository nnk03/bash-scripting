#! /bin/bash

#this is a cat command


#echo "hello world"
: 'this is a multiline 
comment
hello world from comments

the space after the colon for multiline comments is important

'
#cat >> file.txt



count=100

if [ $count -eq 10 ]
then 
	echo "the condition is true"
else
	echo "condition is false"
fi

if (( $count < 9 ))
then
	echo "the condition is true"
elif (( $count > 9 ))
then
	echo "hello"

else
	echo "condition is false"
fi



age = 10
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
	echo "satisfied"
fi
else
	echo "false"
