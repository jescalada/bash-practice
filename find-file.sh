#!/bin/bash

MATCHES=$(find / -type f -name $1)
COUNT=$(echo -n "$MATCHES" | grep -c '^')
echo "Found $COUNT matches:"
for file in $MATCHES
do
  echo $file
done
