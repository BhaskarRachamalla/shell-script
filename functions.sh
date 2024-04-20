#!/bin/bash

echo "install mysql"



USERid=$(id -u)
X(){
       echo "exit status: $1"
       echo "what are you doing: $2"

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

    