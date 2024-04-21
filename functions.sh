#!/bin/bash

echo "install mysql"

TIME=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIME.log
USERid=$(id -u)
VALIDATE(){

R="\e[31m"
G="\e[33m"
N="\[0m"

if [ $1 -ne 0 ]
then
      echo -e "$2...$R failure $N"
      exit 1
else
      echo -e "$2..$G success $N"
fi

}

if [ $USERid -ne 0 ]
then 
    echo "you dont have access to root"
    exit 1    
else
    echo "your are super user"
fi 

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing mysql"

echo "install git"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git"







    


