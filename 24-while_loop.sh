#!/bin/bash
count=1
while [ $count -lt 6 ] 
do
 echo "count is:$count"
 sleep 1
  ((count++))
done

while IFS= read -r line;do
#Process each line
echo "$line"
done < 22-script-1.sh #input which file has to be read