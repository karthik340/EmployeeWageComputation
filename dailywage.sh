#!/bin/bash
wage_per_hour=20
hours_per_day=8
read -p "enter no of days worked" days
read -p "enter no of hours worked" hours
hours=$(($(($days*$hours_per_day))+$hours))
total_wage=$(($hours*wage_per_hour))
