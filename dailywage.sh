#!/bin/bash
is_present=1
random_check=$((RANDOM%2));
if [ $is_present -eq $random_check ];
then
      empRatePerHour=20;
      empHrs=8
      salary=$(($empHrs*empRatePerHour))
else
      salary=0
fi
