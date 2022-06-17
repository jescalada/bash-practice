cat $1 | awk '{print $1}' | sort | uniq | wc -l
