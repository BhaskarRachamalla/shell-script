#!/bin/bash

echo "install mysql"



USERid=$(id -u)

function(){
       echo "some message $1"
}

if [ $USERid -ne 0 ]
then 
    echo "you dont have access to root"
    
else
    echo "your are super user"
fi 

dnf install mysql -y 

function $1

    