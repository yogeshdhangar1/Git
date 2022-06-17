#!/bin/bash -x
isPresent=1
randomCheck= $((Random%2))

if [ $ispresent -eq $randomCheck]
then 
	echo "Employee is present "
 else 
 	echo " Employee is absent "
 fi
 Output 
 $ ./UC-1-Employee.sh
+ isPresent=1
+ randomCheck=
+ 0
./UC-1-Employee.sh: line 3: 0: command not found
+ '[' -eq ']'
+ echo 'Employee is present '
Employee is present
