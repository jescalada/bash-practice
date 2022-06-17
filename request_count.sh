cat $1 | awk '{print $(NF-1)}' | sort -n | uniq -c | awk '{print $2 " " $1}'
