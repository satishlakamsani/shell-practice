#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
   echo "please run this script as root user or using sudo"
   exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then 
      echo "Nginx installation FAILURE"
      exit 1
    else 
       echo "$2 successfully ... SUCCESS"
    fi
    
}

dnf install nginx -y
VALIDATE $? "Installing Nginx"

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"