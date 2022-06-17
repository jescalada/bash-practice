counter=0
while true; do
  counter=$(( counter+1 ))
  ERROR=$($1 2>&1 > temp.txt)
  if [ $? -eq 1 ]; then
    OUTPUT=$(cat temp.txt)
    echo "It took $counter runs to fail."
    echo "Standard Output:"
    echo $OUTPUT
    echo "Standard Error:"
    echo $ERROR
    rm temp.txt
    break
  fi
done
