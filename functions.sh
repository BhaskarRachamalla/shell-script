#!/bin/bash

echo "install mysql"

TIME=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIME.log
USERid=$(id -u)
VALIDATE(){

if [ $1 -ne 0 ]
then
      echo "$2...failure"
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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing mysql"

echo "install git"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git"







    


