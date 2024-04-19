#!/usr/bin/bash

file=temp.txt
while read -r line;
do
echo $line
done < “$file”