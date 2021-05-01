#!/bin/bash
# https://www.hackerrank.com/challenges/bash-tutorials---looping-and-skipping/problem
# Task is to use for loops to display only odd natural numbers from 1 to 99
for i in {1..99..2}
do
    echo $i
done
