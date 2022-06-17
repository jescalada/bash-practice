#!/bin/bash

echo "Enter a number: "
read NUMBER
if (( $NUMBER & 1 )) # math expressions must be contained in parentheses
then
  echo "$NUMBER is odd"
else
  echo "$NUMBER is even"
fi
