#!/bin/bash

echo "install mysql"



USERid=$(id -u)
X(){

if [ $1 -ne 0 ]
then
      echo "$2...failure"
else
      echo "$1..success"
fi

}

if [ $USERid -ne 0 ]
then 
    echo "you dont have access to root"
    
else
    echo "your are super user"
fi 

dnf install mysql -y 

X $? "installating mysql"

dnf install git -y 

X $? "installating git"

    