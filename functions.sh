#!/bin/bash

echo "install mysql"



USERid=$(id -u)
X(){

if [ $1 -ne 0 ]
then
      echo "$1...failure"
      exit 1
else
      echo "$2..success"
fi


}

if [ $USERid -ne 0 ]
then 
    echo "you dont have access to root"
    exit 1    
else
    echo "your are super user"
fi 

dnf install mysql -y 

X $? "installating mysql"

echo "install git"
dnf install git -y 

X $? "installating git"

    


