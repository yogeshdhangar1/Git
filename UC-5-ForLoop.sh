#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
totalsalary=0
numOfworkingDays=20

for (( day=1; day<=$numOfworkingDays; day++))
do
	
        randomCheck=$((RANDOM%3))
        case $randomCheck in
			     $isPartTime )
			      empHrs=4
			      ;;	
   			      $isFullTime )
			      empHrs=8
			      ;;
			       *)	
				empHrs=0
  			      ;;
	 
   esac
   salary=$(($empHrs*$empRatePerHr))
   totalsalary=$(($totalsalary+$salary))
done
