#!/bin/bash -x
IsPartTime=1;
IsFullTime=2;
MaxHrsInMonth=100;
EmpRatePerHour=20;
NumWorkingDays=20;

totalEmpHrs=0;
totalWorkingDays=0;
declare -A dayAndDailyWage

function getWorkingHours()
{
empCheck=$((RANDOM%3))
   case $empCheck in
        $IsFullTime)
         empHrs=8
          ;;
         $IsPartTime)
          empHrs=4
           ;;
           *)
           empHrs=0
           ;;
    esac
return $empHrs
}
counter=0
while [[ $totalEmpHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt $NumWorkingDays ]] 
do
    totalWorkingDays=$(($totalWorkingDays+1))
    getWorkingHours
    empHrs=$?
    dayAndDailyWage[$totalWorkingDays]=$(($empHrs*$EmpRatePerHour))
    totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$EmpRatePerHour))

