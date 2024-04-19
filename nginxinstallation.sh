#!/bin/bash



id=$(id -u)

if [ $id -ne 0 ]
then 
  echo "this user is needs root access"
  exit 1
else 
  echo "super user"
fi

dnf install nginx -y 

if [ $? -ne 0 ]
then 
   echo "nginx instalallation is failed.."
   exit 1
else
   echo "nginx installation is success.."
fi

dnf remove nginx -y

if [ $? -eq 0 ]
then 
   echo "nginx removed"
else
   echo "nginx need to remove"
fi

dnf module list
if [ $? -eq 0 ]
then echo "list of available packages"
fi
