#!/bin/bash
USERID=$(id -u)
echo  $USERID
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
   echo -e"$Y please run this script as root user or using sudo $N" | tee -a $LOGS_FILE
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
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed,installing now" |tee -a $LOGS_FILE
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "Installing $package"
    else 
    echo -e "$package is already installed $Y skipping"
    fi
    done