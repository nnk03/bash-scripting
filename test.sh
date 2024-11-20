#!/bin/bash

read n
ans=0

for ((i = 0; i < n; i++)); do
	read x
	ans=$(($ans + $x))
done

ans=$(($ans / n))

echo $ans
