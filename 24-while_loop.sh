#!/bin/bash
count=1
while [ $count -lt 6 ]; then
do
 echo "count is:$count"
 sleep 1
  ((count++))
done