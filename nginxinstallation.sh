#!/bin/bash

dnf install nginx -y 

id=$(id -u)

if [ $id -ne 0 ]
then 
  echo "this user is needs root access"
else 
  echo "super user"
fi