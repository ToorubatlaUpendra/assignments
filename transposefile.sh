#!/bin/bash

file=$(cat /tmp/file.txt)

while IFS= read line
do 
    usage=$(echo $line | awk '{print$1}')
    echo "$usage"
done <<< "$file"
