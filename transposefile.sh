#!/bin/bash

file=$(cat /tmp/file.txt)

while IFS= read line
do 
    usage=$(echo $line | awk '{print$1} \n')
done <<< "$file"

echo -e "$usage"