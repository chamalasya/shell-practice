#!/bin/bash

USERID=$(id -u)
 if [ $USERID -ne 0 ]
 then
    echo "ERROR::  please run the script with root acess"
 exit 1
 else
    echo "you are running with root access"
 fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
       echo "installing $2 is ... SUCCESS"
     else
       echo "installing $2 is... FAILURE"
       exit 1
       fi
}
 dnf list installed mysql 
 
 if [ $? -ne 0 ]
 then 
     echo "MYSQL is not installed...going to install"
  dnf install mysql -y
 VALIDATE $? "MYSQL"
 else
    echo "MySQL ia already install ..nothing to do"
 fi

 dnf list installed python3
 
 if [ $? -ne 0 ]
 then 
     echo "python3 is not installed...going to install"
  dnf install python3 -y

  VALIDATE $? "PYTHON3"
 
 else
    echo "python3 ia already install ..nothing to do"
 fi

 dnf list installed nginx
 
 if [ $? -ne 0 ]
 then 
     echo "nginx is not installed...going to install"
  dnf install nginx -y

  VALIDATE $? "NGINX"
 
 else
    echo "nginx ia already install ..nothing to do"
 fi