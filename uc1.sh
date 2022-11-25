#!/bin/bash -x
ispresent=1
random_check=$((RANDOM%2))
if (($ispresent==$random_check))
then
echo "employee is present"
else
echo "employee is not present"
fi
