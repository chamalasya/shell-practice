#!/bin/bash

echo "All varabiles passed to the script $@"
echo "number of varaibles $#"
echo "script name $0"
echo "current directory $PWD"
echo "user running the script $USER"
echo "home directory of the user $HOME"
echo "PID of the script $$"
sleep 100 &
echo "PID of last command in background $!
