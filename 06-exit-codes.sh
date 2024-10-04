#!/bin/bash

# package=htop
#
# echo "HELLO"
# # echo "HELLO" && false
#
# if [[ $? -eq 0 ]]; then
# 	echo "echo command was successful"
# else
# 	echo "Echo command was not successful"
# fi

# package=notexist
#
# # maintainers recommend using apt-get in scripts rather than apt
# sudo apt-get install $package >package_install_results.log
#
# if [[ $? -eq 0 ]]; then
# 	echo "installation was successful"
# 	echo "The new command is available here"
# 	which $package
# else
# 	echo "$package failed to install" >package_install_failure.log
# fi

# the below script is wrong find the mistake
#
directory=/etc

if [[ -d $directory ]]; then
	echo "The directory $directory exists"
else
	echo "The $directory does not exists"
fi

echo "The exit code for this script run is $?"

directory=/notexist

if [[ -d $directory ]]; then
	echo "The directory $directory exists"
else
	echo "The $directory does not exists"
fi

# the below also returns exit code as 0. Try finding out why
echo "The exit code for this script run is $?"

directory=/notexist

if [[ -d $directory ]]; then
	echo "The directory $directory exists"
else
	echo $? # will diplay 1
	echo "The $directory does not exists"
fi

# $? will be 0 here, since the previous command was the echo statement inside the if else statements
echo "The exit code for this script run is $?"

# when we want to differentiate what happens in a script based on the exit code
# we'll need to make sure to check the exit codes at the most appropriate time

echo "HELLO WORLD"
exit 199
echo $? # this won't be reachable
