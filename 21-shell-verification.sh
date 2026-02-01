#!/bin/bash/
USERID=$(id -u)
PERSON1=$1
PERSON2=$2
echo "USERID::$USERID"
echo "$0 gives current directory"
echo "PWD::$PWD"
echo "Total parameters are::$@"
echo "The number of parameters is $#"
echo "$1:: Hello $2 How are you?"
for instance in $@
do
    echo "::$instance"
done
VALIDATE(){
    if [ $USERID -gt 0 ]; then
    echo "$USERID is greater than zero"
}
VALIDATE 