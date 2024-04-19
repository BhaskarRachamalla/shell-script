#!/bin/bash

echo "install mysql"

dnf install mysql -y 

id=$(id -u)

if [ $id -ne 0]
then 
    echo "you dont have access to root"
else
    echo "installation compelted"
fi 


