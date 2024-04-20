#!/usr/bin/bash

read i
read j

k=$(($i+$j))
# the number 4 can be the limit to

# iterate the loop
echo "the sum of $i and $j is:$k"

while [ $k -le 100 ];
do

echo $k
((k++))
done

for (m=1;)