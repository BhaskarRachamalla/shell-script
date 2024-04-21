#!/bin/bash

#sample code ...
#for i in {1..20}
#do
#echo $i
#done

USERID=$(id -u)

TIME=$(date +%F-%H-%M-%S)
script=$(echo "$0" | cut -d '.' -f1)
LOG=/var/tmp/$script_$TIME.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
echo "your not super user, run with super user"
else 
echo "your are super user"
fi

validate(){
if [ $1 -ne 0 ]
then 
echo "$2...$R failure $N"
else 
echo "$2..$G success $N"
fi
}

dnf remove mysql -y $>>$LOG
validate $? "mysql removing is:"
dnf remove git -y $>>$LOG
validate $? "git removing is:"