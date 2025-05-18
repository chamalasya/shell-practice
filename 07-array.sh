#!/bin/bash

MOVIES=("court" "hit3" "pushpa2" "thandel")

echo "first movie :${MOVIES[0]}"
echo "first movie :${MOVIES[3]}"
echo "first movie :${MOVIES[]}"
echo "All movies :${MOVIES[@]}"