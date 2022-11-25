#!/bin/bash -x

ispresent=1
random_check=$((RANDOM%2))
if(($ispresent==$random_check))
then
emprateperhr=20
emphrs=8
salary=$(($emphrs*$emprateperhr))
echo "$salary"
fi
