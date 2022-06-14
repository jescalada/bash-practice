#!/bin/bash

echo "Enter a number: "
read NUMBER
if (( $NUMBER & 1 ))
then
  echo "$NUMBER is odd"
else
  echo "$NUMBER is even"
fi
