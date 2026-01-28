#!/bin/bash
START_TIME=$(date +%s)

echo "script started at:$START_TIME"
sleep 10
END_TIME=$(date +%s)
echo "script ended at:$END_TIME"
TOTAL_TIME=$(($END_TIME - $START_TIME))
echo "Script executed in $TOTAL_TIME seconds"
