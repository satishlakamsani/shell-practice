#!/bin/bash
START_TIME=$(date +%s)

echo "script started at:$START_TIME"
sleep 10
END_TIME=$(date +%s)
echo "script ended at:$END_TIME"
TOTAL_TIME=$(($END_TIME - $START_TIME))
echo "Script executed in $TOTAL_TIME seconds"

BEGIN_TIME=$(date +%s)
echo "script begin time in seconds:$BEGIN_TIME"
sleep 5
FINISH_TIME=$(date +%s)
echo "script ended at in seconds:$FINISH_TIME"
ELAPSED_TIME=$(($FINISHED_TIME - $BEGIN_TIME))
echo "Total script executed time is :$ELAPSED_TIME in seconds"