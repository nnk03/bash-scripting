#!/bin/bash

package=htop

echo "HELLO"
# echo "HELLO" && false

if [[ $? -eq 0 ]]; then
	echo "echo command was successful"
else
	echo "Echo command was not successful"
fi
