#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
numberofworkingday=20
maxrateinmonth=100

totalworkingdays=0
totalemphr=0
totalsalary=0

function getworkinghour()
{
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
}

function getempwages()
{
         echo $(($totalemphr*$emprateperhr))
}
while[[$totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numberofworkingday]]
do
((totalworkingdays++))
randomcheck=$((RANDOM%3))
getworkinghr $randomcheck
totalemphr=$(($totalemphr+$emphrs))
dailywages[$totalworkingdays]=$(($emphrs*$wmprateperhr))
done

totalsalary="$(getempwages $totalemphr)"
echo ${dailywages[@]}
