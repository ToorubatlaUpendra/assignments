#!/bin/bash

file=$(cat /tmp/file.txt)

while IFS= read line
do 
    usage+=$(echo $line | awk '{print $1 " "}')
    usage2+=$(echo $line | awk '{print$2 " "}')

done <<< "$file"

# # Remove leading whitespace
# usage=$(echo "$usage" | sed 's/^[[:space:]]*//')
# usage2=$(echo "$usage2" | sed 's/^[[:space:]]*//')

transposefile="$usage\n$usage2"

echo -e "$transposefile"  

# second way

inputfile=$1
numofcols=$(head -1 "$inputfile" | wc -w)

for i in $(seq 1 $numofcols); do
    echo $(cut -d " " -f"$i" "$inputfile")
done
