#!/bin/bash
USERID=$(id -u)
 if [ $USERID  -ne 0 ]; then
    echo "Please run this script as root user or using sudo"
    exit 1
 fi
 echo "Installing nginx"
 dnf install nginx -y
 if [ $? -ne 0 ]; then
    echo "nginx installation failed"
    exit 1
else 
echo "nginx installed successfully ... SUCCESS"

fi

dnf install mysql -y
 if [ $? -ne 0 ]: then
    echo "mysql installation FAILURE"
    exit 1
 else
   echo "mysql installed successfully ... SUCCESS"
fi
dnf install nodejs -y
 if [$? -ne 0 ]: then
   echo "nodejs installation FAILURE"
   exit 1
   else
   echo "nodejs installed succesfully .. SUCCESS"