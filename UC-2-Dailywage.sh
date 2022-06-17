#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))
if (( $isPresent==$randomCheck ))
then
      empRatePerHr=20
      empHrs=8
      salary=$(($empRatePerHr*$empHrs))
else
       salary=0
fi
 output
 $ ./UC-2-Dailywage.sh
+ isPresent=1
+ randomCheck=0
+ ((  1==0  ))
+ salary=0

