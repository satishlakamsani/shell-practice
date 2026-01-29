#!/bin/bash
USERID=$(id -u)
echo  $USERID
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
   echo "please run this script as root user or using sudo" | tee -a $LOGS_FILE
   exit 1
fi
mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 ... FAILURE"  |tee -a $LOGS_FILE
      exit 1
    else 
    echo "$2 successfully ... SUCCESS" |tee -a $LOGS_FILE
    fi
          }
    for package in $@ # sudo sh-loops.sh nginx mysql nodejs
    do 
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "Installing $package"
    done