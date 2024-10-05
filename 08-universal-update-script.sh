#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file; then
	# the host is based on Arch, run the pacman update command
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep "Debian" -q $release_file; then

	# The host is based on Debian or ubuntu
	# Run the apt version of the command
	sudo apt-get update
fi

# if [[ -d /etc/pacman.d ]]; then
# 	# the host is based on Arch, run the pacman update command
# 	sudo pacman -Syu
# fi
#
# if [[ -d /etc/apt ]]; then
# 	# The host is based on Debian or ubuntu
# 	# Run the apt version of the command
# 	sudo apt-get update
# fi
