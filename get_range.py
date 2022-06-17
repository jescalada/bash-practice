from datetime import datetime
from os import sys

filename = sys.argv[1]
start_date = sys.argv[2]
end_date = sys.argv[3]

with open(filename, 'r') as file:
    lines = file.readlines()
    start_parsed = datetime.strptime(start_date, '%Y-%m-%d %H:%M:%S')
    end_parsed = datetime.strptime(end_date, "%Y-%m-%d %H:%M:%S")
    for line in lines:
        current_date = line.split("[")[1][:20]
        current_date_parsed = datetime.strptime(current_date, "%d/%b/%Y:%H:%M:%S")
        if start_parsed <= current_date_parsed <= end_parsed:
            print(line, end='')  # Prints the entire line, can easily be parsed using awk to get desired columns
