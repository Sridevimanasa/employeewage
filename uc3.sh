#!/bin/bash -x
isparttime=1
isfulltime=2
emprateperhr=20
random_check=$((RANDOM%3))
if[$isfulltime -eq $random_check))
then
emphrs=8
echo "employee is present and doing full time"
elif[$isparttime -eq $random_check))
then
emphrs=4
echo "employee is present and doing parttime"
else
emphrs=0
echo "employee is absent"
fi
