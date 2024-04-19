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

if [ $? -ne 0 ]
then 
    echo "installation mysql is failure.."
    exit 1
else
    echo "installation of mysql is success.."
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "installtion of git is failure.."
    exit 1
else 
    echo "installion of git is success..."

    