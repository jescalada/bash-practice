cat $1 | awk '{print $NF}' | sort -rn | head -n 5
