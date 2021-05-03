#!/bin/bash
# https://www.hackerrank.com/challenges/bash-tutorials---the-world-of-numbers/problem
# Find sum, difference, product, and quotient of two given integers

read x
read y

echo $((x+y))
echo $((x-y))
echo $((x*y))
echo $((x/y))
