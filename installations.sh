#!/bin/bash

echo "install mysql"



USERid=$(id -u)



if [ $USERid -ne 0 ]
then 
    echo "you dont have access to root"
else
    echo "installation compelted"
fi 

dnf install mysql -y 


