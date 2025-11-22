#!/bin/bash

var=1

while [[ $var -le 10 ]]; do
	echo $var
	var=$((var + 1))
done

# while [[ -f ~/testfile ]]; do
# 	echo "As of $(date), the file exists"
# done
#
# echo "As of $(date), the file doesn't exist"
