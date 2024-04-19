#!/usr/bin/bash

file=tmp.txt
while read -r line;
do
echo $line
done < “$file”