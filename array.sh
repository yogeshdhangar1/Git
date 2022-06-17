#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
totalsalary=0
numOfworkingDays=20
maxRatePerInMonth=100

totalEmpHr=0
totalworkingDays=0

function getworkingHrs()
{
	case $randomCheck in
			$isFullTime )
			       empHrs=8
			;;
			$isPartTime )
				empHrs=4
			;;
			*)
				empHrs=0
			;;
	esac
}

function getEmpwage() {
	 echo  $(($totalEmpHr*$empRatePerHr))
}
while [[  $totalEmpHr -lt $maxRatePerInMonth &&
	  $totalworkingDays -lt  $numOfworkingDays ]]
do
	((totalworkingDays++))
	randomCheck=$((RANDOM%3))
	getworkingHrs $randomcheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailywages=$(($empHrs*$empRatePerHr))
done

totalsalary="$( getEmpwage $totalEmpHr )"
echo ${dailywages[@]}
