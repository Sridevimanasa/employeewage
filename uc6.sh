#!/bin/bash -x
isparttime=1
isfulltime=2
emprateperhr=20
numberofworkingday=20
maxrateinmonth=100

totalworkingdays=0
totalemphrs=0
totalsalary=0
while[[$totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numberofworkingday]]
do
((totalworkingdays++))
randomcheck=$((RANDOM%3))
case $randomcheck in
                   $isparttime)
                   emphrs=4
                   ;;
                   $isfulltime)
                   emphrs=8
                   ;;
                   *)
                   emphrs=0
                   ;;
esac
totalemphr=$(($totalemphr+$emphrs))
done
totalsalary=$(($totalemphr+$emprateperhr))
echo "total salary is "$totalsalary
