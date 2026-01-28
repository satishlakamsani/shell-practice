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