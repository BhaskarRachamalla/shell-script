#!/bin/bash

echo "programming using functions"

read i
read j

k=$((i+j))

echo "the sum of two numbers $i and $j is:$k"

if [ $k -ge 100]
then
echo "first class"
else 
echo "second class"
fi