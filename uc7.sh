#!/bin/bash -x

isparttime=1
isfulltime=2
maxrateinmonth=100
emprateperhr=20
numofworkingdays=20
totalemphr=0
totalworkingdays=0

function getworkinghours()
{
case $1 in
          $isfulltime)
          emphrs=8
          ;;
          $isparttime)
          emphrs=4
          ;;
          *)
          emphrs=0
          ;;
esac
}
 while[[$totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numberofworkingdays]]
do
  ((totalworkinghours++))
  getworkinghours $((RANDOM%3))
  totalemphr=$(($totalemphr+$emphrs))
done

totalsalary=$(($totalemphr*$emprateperhr))
echo "$total salary"
