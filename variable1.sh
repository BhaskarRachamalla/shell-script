#!/bin/bash

#read $1
#read $2

sum="$(($1+$2))"
subtract="$(($1-$2))"
echo "the sum of two numbers is:$sum"
echo "the subtraction of two numbers is:$subtract"

#read  USER
#echo "user name is $USER"
#read -s PASS
#echo "password is $PASS"

number=("1" "2" "3" "4" "5")

add="$((${number[0]}+${number[4]}))"

echo "addition of number is:$add"
