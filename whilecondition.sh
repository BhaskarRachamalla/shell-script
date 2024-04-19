#!/usr/bin/bash

i=1
j=2

k=$(($i+$j))
# the number 4 can be the limit to

# iterate the loop
echo "the sum of $i and $j is:$k"

while [ $k -le 4 ];
do
((k++))
echo $k

done