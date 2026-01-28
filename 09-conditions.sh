#!/bin/bash
NUMBER=$1 
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