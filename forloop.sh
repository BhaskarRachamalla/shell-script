#!/bin/bash

#sample code ...
#for i in {1..20}
#do
#echo $i
#done

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "your not super user, run with super user"
else 
echo "your are super user"
fi

validate(){
if [ $1 -ne 0 ]
then 
echo "$2...failure"
else 
echo "$2..success"
fi
}

dnf remove mysql -y
validate $? "mysql removing is:"
dnf remove git -y
validate $? "git removing is:"