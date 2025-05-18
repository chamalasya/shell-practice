#!/bin/bash

NUMBER1=lasya
NUMBER2=200

TIMESTAMP=$(date)
echo "script executed at $TIMESTAMP"
SUM=$((NUMBER1+$NUMBER2))
echo "sum of $NUMBER1 & $NUMBER2 is $SUM"
