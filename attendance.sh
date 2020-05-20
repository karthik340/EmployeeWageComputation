#!/bin/bash -x
if [ $((RANDOM%2)) -eq 1 ]
then
    attendance="present"
else 
    attendance="absent"
fi

