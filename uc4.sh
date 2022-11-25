#!/bin/bash -x
isparttime=1
isfulltime=2
emprateperhr=20
random_check=$((RANDOM%3))
case $random_check in
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
salary=$(($emphrs*$emprateperhr))
echo "salary"
