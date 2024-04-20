#!/bin/bash

echo "programming using functions"

read i
read j

k=$((i+j))

echo "the sum of two numbers $i and $j is:$k"

x(){

    if [ $1 -ne 0]
    then
    echo "$2:is wrong"
    else 
    echo "$2:is correct"
}

if [ $k -ge 100 ]
then
echo "first class"
else 
echo "second class"
fi


x $? "programm"