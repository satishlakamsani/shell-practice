#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripts"
LOGS_FILE="/var/log/shell-scripts/$0.log

if [ $USERID -ne 0 ]; then
   echo "please run this script as root user or using sudo" | tee -a $LOGS_FILE
   exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then 
      echo "Nginx installation FAILURE" |tee -a $LOGS_FILE
      exit 1
    else 
       echo "$2 successfully ... SUCCESS"
    fi
    
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"