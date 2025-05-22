#!/bin/bash

USERID=$(id -u)
 if [ $USERID -ne 0 ]
 then
    echo "ERROR::  please run the script with root acess"
 exit 1
 else
    echo "you are running with root access"
 fi

 dnf list installed mysql 
 if [ $? -ne 0]
 then 
     echo "MYSQL is not installed...going to install"
  dnf install mysql -y
 if [ $? -eq 0 ]
 then 
    echo "installing mysql is ... SUCCESS"
 else
    echo "installing mysql is ... FAILURE"
 exit 1
 fi
 else
    echo "MySQL ia already install ..nothing to do"
 fi
#  dnf install mysql -y
#  if [ $? -eq 0 ]
#  then 
#  echo "installing mysql is ... SUCCESS"
#  else
#  echo "installing mysql is ... FAILURE"
#  exit 1
#  fi