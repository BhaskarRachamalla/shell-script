#!/bin/bash



sum="$(($1+$2))"
subtract="$(($1-$2))"
echo "the sum of two numbers is:$sum"
echo "the subtraction of two numbers is:$subtract"

read  USER
echo "user name is $USER"
read -e PASS
echo "password is $PASS"



