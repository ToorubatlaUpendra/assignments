#!/bin/bash

file=$(cat /tmp/file.txt)

while IFS= read line
do 
    usage+=$(echo $line | awk '{print$1}')
    usage2+=$(echo $line | awk '{print$2}')

done <<< "$file"

echo  $usage
echo  $usage2
