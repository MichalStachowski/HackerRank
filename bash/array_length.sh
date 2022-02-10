#!/bin/bash

# https://www.hackerrank.com/challenges/bash-tutorials-count-the-number-of-elements-in-an-array/

countries=()
while read -r country; 
do 
   countries=("${countries[@]}" "$country");  # append to array
done

# echo ${countries[@]}  # echo all elements
echo ${#countries[@]}  # echo len of array
