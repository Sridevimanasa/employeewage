#!/bin/bash -x
isparttime=1
isfulltime=2
totalsalary=0
emprateperhr=20
numofworkingday=20
for((day=1;day<=$numofworkingdays;day++))
do
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
salary=$(($emphrs*$emprateperhr))
totalsalary=$(($totalsalary+$salary))
done
echo "total monthly wage of an employee is "$totalsalary
