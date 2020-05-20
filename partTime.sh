#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ] 
then
         empHrs=8;
elif [ $isPartTime -eq $randomCheck ]
then 
         empHrs=4;
else
         empHrs=0;
fi
salary=$(($empHrs*$empRatePerHour));
