#!/bin/bash
NUMBER=$1 
COUNT=$2
#-gt - greatet than
#-lt - less than
#-eq - equal
#-ne - not equal

if [ $NUMBER -gt 20 ]; then
    echo "$NUMBER is greater than 20"
elif [ $NUMBER -lt 20 ]; then
   echo "$NUMBER is less than 20"
else
   echo "$NUMBER is equal to 20"
fi 

if [ COUNT -gt 25]; then
   echo "$COUNT is greater than 25"
elif [ $COUNT -eq 25]; then
   echo "$COUNT is equal to 25."
else
   echo "$COUNT is less than 25"
fi