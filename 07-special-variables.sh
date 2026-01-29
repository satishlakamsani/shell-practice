#!/bin/bash

####Special variables ####
echo "All args passed to scripts :$@"
echo "No of args passed to script:$#"
echo "Script name is :$0"
echo "Present working directory is :$PWD"
echo "Home directory of current user is :$HOME"
echo "Current user is :$USER"
echo "PID of current script is:$$"
sleep 10 &
echo "PID of last background process is:$!"
echo "All arguments passed to script:$*"

####Revision ####
echo "$@ is for passing all args."
echo "$# is for counting no of args."
echo "script name is $0."
echo "present working directory is $PWD."
echo "home directory of current user is $HOME."
echo "current user is $USER."
echo "PID of cuurent script is $$."