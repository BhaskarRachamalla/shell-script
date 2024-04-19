#!/bin/bash



id=$(id -u)

if [ $id -ne 0 ]
then 
  echo "this user is needs root access"
else 
  echo "super user"
fi

dnf install nginx -y 

if [ $? -ne 0 ]
then 
   echo "nginx instalallation is failed.."
else
   echo "nginx installation is success.."
fi