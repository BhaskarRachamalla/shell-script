#!/usr/bin/bash

i=1
j=6

k=$(($i+$j))
# the number 4 can be the limit to

# iterate the loop
echo "the sum of :$k"

while [ $k -le 4 ];
do
echo $k
((k++))
done