#!/bin/bash

for current_number in 1 2 3 4 5 6 7 8 9 10; do
	echo "$current_number"
done

for num in {1..10}; do
	echo "$num "
done

# log rotate?
#
for file in logfiles/*.log; do
	tar -czvf $file.tar.gz $file
done
