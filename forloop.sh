#!/bin/bash

#sample code ...
#for i in {1..20}
#do
#echo $i
#done

USERID=$(id -u)

if [ USERID -ne 0 ]
then
echo "your not super user, run with super user"
else 
echo "your are super user"
fi


dnf remove mysql -y
dnf remove mysql -y