#!/bin/bash

echo "install mysql"



USERid=$(id -u)



if [ $USERid -ne 0 ]
then 
    echo "you dont have access to root"
    exit 1
else
    echo "your are super user"
fi 

dnf install mysql -y 


