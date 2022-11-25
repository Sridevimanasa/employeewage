#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
numberofworkingday=20
maxrateinmonth=100

totalworkingdays=0
totalemphr=0
totalsalary=0
declare -A dailywages

function getworkinghour()
{
         case $randomcheck in
                             $isparttime)
                             emphrs=4
                             ;;
                             $isfulltime)
                             emphrs=4
                             ;;
                             *)
                             emphrs=0
                             ;;
         esac
function getempwages()
{
   echo $(($totalemphr*$emprateperhr))
}

while [[ $totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numberofworkingday ]]
do
        ((totalworkingdays++))
        randomcheck=$((RANDOM%3))
        getworkinghr $randomcheck
        totalemphr=$(($totalemphr*$emphrs))
        dailywages["$totalworkingdays"]=$(($emphrs*$emprateperhr))
done

totalsalary="$( getempwages $totalemphr)"
echo ${dailywages[@]}
echo ${!dailywages[@]}
echo ${#dailywages[@]}
