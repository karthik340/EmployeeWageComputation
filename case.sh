#!/bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHour=20;
empCheck=$((RANDOM%3));
case $empCheck in
     1)
      empHrs=8
      ;;
     2)
      empHrs=4
      ;;
     *)
      empHrs=0 
      ;;
esac
salary=$(($empHrs*$empRatePerHour));
