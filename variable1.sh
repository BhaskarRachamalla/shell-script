#!/bin/bash

#read $1
#read $2

sum="$(($1+$2))"
subtract="$(($1-$2))"
echo "the sum of two numbers is:$sum"
echo "the subtraction of two numbers is:$subtract"

echo "using if condition"

if [ $sum -gt 100 ]
then 
echo "first class"
else 
echo "second class"
fi


#read  USER
#echo "user name is $USER"
#read -s PASS
#echo "password is $PASS"

echo "this is array"

number=("1" "2" "3" "4" "5")

echo "total  number of elements present in array:${number[@]}"

add="$((${number[0]}+${number[4]}))"

echo "addition of arrays for ${number[0]} and ${number[4]} to  numbers is:$add"


