#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
totalsalary=0
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0
 while [[ $totalEmpHr -lt $maxRateInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalworkingdays++))
	randomCheck=$((RANDOM%3))
	case randomCheck in 
				$isPartTime )
				       	empHr=4
				;;
				$isFullTime )
					empHr=8
				;;
				*)
					empHr=0
				;;
   esac
   totalsalary=$(($totalEmpHr+$empHr))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
